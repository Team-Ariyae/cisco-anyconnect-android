.class public Lcom/cisco/android/nchs/ipc/IPCInteractionThread;
.super Ljava/lang/Thread;
.source "IPCInteractionThread.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "IPCInteractionThread"

.field private static final NO_TIMEOUT:I = 0x0

.field private static final UNFINISHED_MESSAGE_TIMEOUT_MILLIS:I = 0x2710


# instance fields
.field private mLastOpcodeName:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private mQuit:Z

.field private mServer:Lcom/cisco/android/nchs/ipc/IPCServerBase;

.field private mSocket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>(Landroid/net/LocalSocket;Lcom/cisco/android/nchs/ipc/IPCServerBase;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "nothing"

    .line 41
    iput-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mLastOpcodeName:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mSocket:Landroid/net/LocalSocket;

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mQuit:Z

    .line 54
    iput-object p2, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mServer:Lcom/cisco/android/nchs/ipc/IPCServerBase;

    .line 55
    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/IPCServerBase;->getServerName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mName:Ljava/lang/String;

    return-void
.end method

.method private handleClientInteraction(Landroid/net/LocalSocket;)Lcom/cisco/android/nchs/ipc/IPCReturnMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;,
            Lcom/cisco/android/nchs/exception/NCHSDisconnectCommandReceivedException;
        }
    .end annotation

    .line 184
    new-instance v0, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-direct {v0, v1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    .line 185
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    .line 192
    invoke-virtual {p1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 195
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v3, v2, :cond_4

    const/16 v3, 0x2710

    .line 208
    invoke-virtual {p1, v3}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 210
    iget-object p1, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mServer:Lcom/cisco/android/nchs/ipc/IPCServerBase;

    int-to-byte v3, v2

    invoke-virtual {p1, v3}, Lcom/cisco/android/nchs/ipc/IPCServerBase;->getNewOpCodeInterface(B)Lcom/cisco/android/nchs/codes/IOpcode;

    move-result-object p1

    .line 211
    invoke-interface {p1}, Lcom/cisco/android/nchs/codes/IOpcode;->validateCode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 216
    invoke-interface {p1}, Lcom/cisco/android/nchs/codes/IOpcode;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mLastOpcodeName:Ljava/lang/String;

    .line 217
    invoke-interface {p1}, Lcom/cisco/android/nchs/codes/IOpcode;->shouldDisconnect()Z

    move-result v2

    if-nez v2, :cond_2

    .line 222
    invoke-static {v1, v0}, Lcom/cisco/android/nchs/ipc/IPCHelpers;->parseArgsFromClientInputStream(Ljava/io/InputStream;Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 228
    invoke-interface {p1, v1}, Lcom/cisco/android/nchs/codes/IOpcode;->validateArguments(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mServer:Lcom/cisco/android/nchs/ipc/IPCServerBase;

    iget-object v3, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, p1, v1, v3, v0}, Lcom/cisco/android/nchs/ipc/IPCServerBase;->callServiceMethod(Lcom/cisco/android/nchs/codes/IOpcode;Ljava/util/ArrayList;Landroid/net/LocalSocket;Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V

    return-object v0

    .line 230
    :cond_0
    new-instance p1, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": arguments were invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;-><init>(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_1
    new-instance p1, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": could not parse the arguments from client stream"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;-><init>(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    throw p1

    .line 219
    :cond_2
    new-instance v0, Lcom/cisco/android/nchs/exception/NCHSDisconnectCommandReceivedException;

    invoke-direct {v0, p1}, Lcom/cisco/android/nchs/exception/NCHSDisconnectCommandReceivedException;-><init>(Lcom/cisco/android/nchs/codes/IOpcode;)V

    throw v0

    .line 213
    :cond_3
    new-instance p1, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": invalid OpCode passed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;-><init>(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    throw p1

    .line 198
    :cond_4
    new-instance p1, Ljava/net/SocketException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": end of stream reached while reading opCode after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mLastOpcodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_5
    new-instance p1, Ljava/net/SocketException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": inputStream could not be retrieved from socket"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private respondToClient(Landroid/net/LocalSocket;Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 252
    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->hasFileDescriptorsForSend()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->getFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/LocalSocket;->setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V

    .line 259
    :cond_0
    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->getCode()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 263
    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->hasFileDescriptorsForSend()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-array v1, v2, [Ljava/io/FileDescriptor;

    .line 265
    invoke-virtual {p1, v1}, Landroid/net/LocalSocket;->setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V

    .line 268
    :cond_1
    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->getArguments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->getArguments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    goto :goto_1

    .line 277
    :cond_2
    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->getArguments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-short p1, p1

    invoke-static {p1}, Lcom/cisco/android/nchs/ipc/IPCHelpers;->shortToByteArray(S)[B

    move-result-object p1

    .line 278
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 280
    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->getArguments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    .line 284
    invoke-virtual {v1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getSerializedData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 271
    :cond_3
    :goto_1
    invoke-static {v2}, Lcom/cisco/android/nchs/ipc/IPCHelpers;->shortToByteArray(S)[B

    move-result-object p1

    .line 272
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 289
    :cond_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 292
    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->onSendComplete()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    .line 80
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 82
    :try_start_1
    iget-boolean v1, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mQuit:Z

    if-eqz v1, :cond_1

    .line 84
    monitor-exit p0

    goto/16 :goto_1

    .line 86
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :try_start_2
    iget-object v1, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mSocket:Landroid/net/LocalSocket;

    invoke-direct {p0, v1}, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->handleClientInteraction(Landroid/net/LocalSocket;)Lcom/cisco/android/nchs/ipc/IPCReturnMessage;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/cisco/android/nchs/exception/NCHSDisconnectCommandReceivedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 115
    :try_start_3
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "IPCInteractionThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": General Exception occured, telling client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    new-instance v1, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-direct {v1, v2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 106
    invoke-virtual {v0}, Lcom/cisco/android/nchs/exception/NCHSDisconnectCommandReceivedException;->getCode()Lcom/cisco/android/nchs/codes/IOpcode;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Lcom/cisco/android/nchs/codes/IOpcode;->validateCode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "IPCInteractionThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Client passed disconnect command, code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/cisco/android/nchs/codes/IOpcode;->getCode()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/cisco/android/nchs/codes/IOpcode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    .line 99
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "IPCInteractionThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": NCHSClientInteractionException. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    invoke-virtual {v0}, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;->getSocketIPCMessage()Lcom/cisco/android/nchs/ipc/IPCReturnMessage;

    move-result-object v1

    const/4 v0, 0x1

    :goto_0
    if-eqz v1, :cond_2

    .line 123
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "IPCInteractionThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": responding to client"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 126
    :try_start_4
    iget-object v2, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mSocket:Landroid/net/LocalSocket;

    invoke-direct {p0, v2, v1}, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->respondToClient(Landroid/net/LocalSocket;Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "IPCInteractionThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Due to client interaction failure, dropping client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    .line 143
    :try_start_5
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "IPCInteractionThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": General Exception occurred in responding to client, closing connection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_4
    move-exception v0

    .line 138
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "IPCInteractionThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": IOException occurred while responding to client, closing socket"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 151
    :cond_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "IPCInteractionThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": No message specified to relay to client, exiting interaction"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_5
    move-exception v0

    .line 94
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "IPCInteractionThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": IOException occured during socket Interaction, exiting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 159
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mServer:Lcom/cisco/android/nchs/ipc/IPCServerBase;

    invoke-virtual {v0, p0}, Lcom/cisco/android/nchs/ipc/IPCServerBase;->removeWorkerThread(Lcom/cisco/android/nchs/ipc/IPCInteractionThread;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 161
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "IPCInteractionThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Thread not found in worker thread list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 86
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    move-exception v0

    .line 166
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "IPCInteractionThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Could not interact with client (accept or close failed)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public declared-synchronized shutdownThread()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 63
    :try_start_0
    iput-boolean v0, p0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->mQuit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

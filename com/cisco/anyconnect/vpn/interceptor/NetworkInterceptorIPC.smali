.class Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;
.super Ljava/lang/Object;
.source "NetworkInterceptorIPC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

.field private mInterceptorCB:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;

.field private mIsDestroyed:Z

.field private mReadHandler:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;

.field private mReaderThread:Lcom/cisco/anyconnect/common/io/DatagramReaderThread;

.field private mSocket:Landroid/net/LocalSocket;

.field private mWorkingDir:Ljava/io/File;

.field private mWriteBuffer:[B


# direct methods
.method static bridge synthetic -$$Nest$fgetmInterceptor(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterceptorCB(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mInterceptorCB:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;

    return-object p0
.end method

.method constructor <init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mIsDestroyed:Z

    const/16 v0, 0x7d0

    new-array v0, v0, [B

    .line 34
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mWriteBuffer:[B

    .line 39
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    .line 40
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->getCallback()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mInterceptorCB:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;

    .line 41
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mContext:Landroid/content/Context;

    .line 42
    new-instance p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler-IA;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mReadHandler:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;

    .line 43
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".ani"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mWorkingDir:Ljava/io/File;

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mWorkingDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method private getConfigFile()Ljava/io/File;
    .locals 3

    .line 54
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mWorkingDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method close()V
    .locals 2

    const-string v0, "Closing"

    .line 232
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    .line 236
    :try_start_0
    new-instance v0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mWriteBuffer:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;-><init>(Ljava/nio/ByteBuffer;)V

    .line 237
    sget-object v1, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->ClientDisconnect:Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->startMessage(I)Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;

    .line 238
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->writeTo(Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "exception writing disconnect msg"

    .line 240
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mReaderThread:Lcom/cisco/anyconnect/common/io/DatagramReaderThread;

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Lcom/cisco/anyconnect/common/io/DatagramReaderThread;->close()V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_2

    .line 251
    :try_start_1
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Exception closing socket"

    .line 253
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mIsDestroyed:Z

    return-void
.end method

.method configure(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mWriteBuffer:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;-><init>(Ljava/nio/ByteBuffer;)V

    .line 59
    sget-object v1, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->Configure:Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->startMessage(I)Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;

    .line 61
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 62
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->getConfigFile()Ljava/io/File;

    move-result-object v1

    .line 68
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 69
    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 71
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->putString(Ljava/lang/String;)Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;

    .line 75
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->writeTo(Ljava/io/OutputStream;)I

    const-string p1, "Requested ANI config"

    .line 76
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance v0, Lcom/cisco/anyconnect/common/AndroidEnv;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/common/AndroidEnv;-><init>(Landroid/content/Context;)V

    const-string v1, "network_interceptor_ipc"

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/common/AndroidEnv;->getUnixSocketAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 90
    new-instance v1, Landroid/net/LocalSocket;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mSocket:Landroid/net/LocalSocket;

    .line 93
    new-instance v2, Landroid/net/LocalSocketAddress;

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v0, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 95
    new-instance v0, Lcom/cisco/anyconnect/common/io/DatagramReaderThread;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x7d0

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mReadHandler:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC$IPCReadHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/cisco/anyconnect/common/io/DatagramReaderThread;-><init>(Ljava/io/InputStream;ILcom/cisco/anyconnect/common/io/DatagramReaderThread$IHandler;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mReaderThread:Lcom/cisco/anyconnect/common/io/DatagramReaderThread;

    return-void

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot use intc < 4.4"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleWriteData(Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 121
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    const-string p1, "not writing flow data because IPC is destroyed"

    .line 123
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_0
    :try_start_0
    new-instance v0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mWriteBuffer:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;-><init>(Ljava/nio/ByteBuffer;)V

    .line 131
    sget-object v1, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->FlowData:Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->startMessage(I)Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;

    .line 132
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->getProtocol()Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;->getValue()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->putShort(S)Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->getSourcePort()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->putInt(I)Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;

    .line 133
    invoke-virtual {v0, p2}, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->putBytes(Ljava/nio/ByteBuffer;)Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;

    .line 134
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->writeTo(Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo p2, "write flow data failed"

    .line 136
    invoke-static {p0, p2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method isConnected()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

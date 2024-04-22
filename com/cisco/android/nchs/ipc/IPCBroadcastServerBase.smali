.class public abstract Lcom/cisco/android/nchs/ipc/IPCBroadcastServerBase;
.super Lcom/cisco/android/nchs/ipc/IPCServerThread;
.source "IPCBroadcastServerBase.java"


# static fields
.field protected static final ENTITY_NAME:Ljava/lang/String; = "IPCBroadcastServerBase"

.field protected static final SOCKET_TIMEOUT_MILLIS:I = 0x2710

.field protected static final THREAD_WAIT_MILLIS:I = 0x7d0


# instance fields
.field private final mClientSockets:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/net/LocalSocket;",
            ">;"
        }
    .end annotation
.end field

.field protected mQuit:Z

.field protected mServerSocket:Landroid/net/LocalServerSocket;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/cisco/android/nchs/ipc/IPCServerThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;)V

    .line 37
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/cisco/android/nchs/ipc/IPCBroadcastServerBase;->mClientSockets:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public declared-synchronized broadcastMessageToClients(Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;)V
    .locals 7

    monitor-enter p0

    .line 101
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    .line 105
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "IPCBroadcastServerBase"

    const-string v1, "Caller passed a null message, not broadcasting"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 109
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;->getOpCode()Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 111
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "IPCBroadcastServerBase"

    const-string v1, "Caller passed a message which returned a null opcode, not broadcasting"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 115
    :cond_1
    :try_start_2
    invoke-interface {p1}, Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;->getMessageBytes()[B

    move-result-object v1

    if-nez v1, :cond_2

    .line 118
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "IPCBroadcastServerBase"

    const-string v1, "Caller passed a message which returned a null payload, not broadcasting"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 123
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/cisco/android/nchs/ipc/IPCBroadcastServerBase;->mClientSockets:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LocalSocket;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    :try_start_4
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 129
    invoke-interface {p1}, Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;->getOpCode()Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cisco/android/nchs/codes/BroadcastOpcode;->getCode()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 130
    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 131
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 136
    :catch_0
    :try_start_5
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "IPCBroadcastServerBase"

    const-string v6, "IOException thrown when writing to socket, removing client socket from list"

    invoke-static {v4, v5, v6}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_3
    iget-object p1, p0, Lcom/cisco/android/nchs/ipc/IPCBroadcastServerBase;->mClientSockets:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected declared-synchronized cleanupServerResources()V
    .locals 5

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCBroadcastServerBase;->mClientSockets:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 63
    monitor-exit p0

    return-void

    .line 67
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCBroadcastServerBase;->mClientSockets:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LocalSocket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 75
    :try_start_3
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "IPCBroadcastServerBase"

    const-string v4, "could not close client socket"

    invoke-static {v2, v3, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCBroadcastServerBase;->mClientSockets:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method protected handleNewConnection(Landroid/net/LocalSocket;)V
    .locals 3

    .line 88
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "IPCBroadcastServerBase"

    const-string v2, "Adding new client to our broadcast list"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCBroadcastServerBase;->mClientSockets:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

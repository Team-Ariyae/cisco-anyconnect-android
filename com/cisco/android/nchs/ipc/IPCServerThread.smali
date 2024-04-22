.class public abstract Lcom/cisco/android/nchs/ipc/IPCServerThread;
.super Ljava/lang/Thread;
.source "IPCServerThread.java"

# interfaces
.implements Lcom/cisco/android/nchs/ipc/IIPCServer;


# static fields
.field protected static final ENTITY_NAME:Ljava/lang/String; = "IPCServerThread"


# instance fields
.field private final mCallback:Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;

.field protected mQuit:Z

.field protected mRequestedOperationCompletedSuccessfully:Z

.field private final mRequestedOperationLock:Ljava/lang/Object;

.field private final mServerName:Ljava/lang/String;

.field protected mServerSocket:Landroid/net/LocalServerSocket;

.field private final mSockAddr:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mRequestedOperationLock:Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mServerName:Ljava/lang/String;

    .line 56
    invoke-direct {p0, p2}, Lcom/cisco/android/nchs/ipc/IPCServerThread;->getUserQualifiedAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mSockAddr:Ljava/lang/String;

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mRequestedOperationCompletedSuccessfully:Z

    .line 58
    iput-object p3, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mCallback:Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;

    return-void
.end method

.method private getUserQualifiedAddr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setCloseable(Landroid/net/LocalSocket;)V
    .locals 3

    .line 287
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 290
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "impl"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 292
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 293
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mFdCreatedInternally"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 295
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected abstract cleanupServerResources()V
.end method

.method protected connectToServerSocket()V
    .locals 4

    .line 171
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 174
    :try_start_0
    new-instance v1, Landroid/net/LocalSocketAddress;

    iget-object v2, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mSockAddr:Ljava/lang/String;

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 175
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected getLockObject()Ljava/lang/Object;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mRequestedOperationLock:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract getNewOpCodeInterface(B)Lcom/cisco/android/nchs/codes/IOpcode;
.end method

.method protected declared-synchronized getQuitFlag()Z
    .locals 1

    monitor-enter p0

    .line 189
    :try_start_0
    iget-boolean v0, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mQuit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mServerName:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract handleNewConnection(Landroid/net/LocalSocket;)V
.end method

.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, v0}, Lcom/cisco/android/nchs/ipc/IPCServerThread;->setQuitFlag(Z)V

    .line 208
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mServerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": starting listening on socket="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mSockAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IPCServerThread"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mServerSocket:Landroid/net/LocalServerSocket;

    if-nez v0, :cond_0

    .line 214
    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    iget-object v1, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mSockAddr:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mServerSocket:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mServerName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": IOException occured while creating localserversocket, attempting to clear socket and try again"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ipc/IPCServerThread;->connectToServerSocket()V

    .line 222
    :try_start_1
    new-instance v0, Landroid/net/LocalServerSocket;

    iget-object v1, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mSockAddr:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mServerSocket:Landroid/net/LocalServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 226
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mServerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": IOException occured while creating local server socket="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mSockAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 232
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mCallback:Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;

    invoke-interface {v0}, Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;->onIPCServerStarted()V

    .line 238
    :goto_1
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ipc/IPCServerThread;->getQuitFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 245
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mServerSocket:Landroid/net/LocalServerSocket;

    if-nez v0, :cond_2

    .line 247
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mServerName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": ServerSocket was null BEFORE accept() call, exiting"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 251
    :cond_2
    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    .line 252
    invoke-direct {p0, v0}, Lcom/cisco/android/nchs/ipc/IPCServerThread;->setCloseable(Landroid/net/LocalSocket;)V

    .line 258
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ipc/IPCServerThread;->getQuitFlag()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 260
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mServerName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": quit requested after accept call returned, quitting."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 264
    :cond_3
    invoke-virtual {p0, v0}, Lcom/cisco/android/nchs/ipc/IPCServerThread;->handleNewConnection(Landroid/net/LocalSocket;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 268
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mServerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": IOException during accept of localsocket"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    :goto_2
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ipc/IPCServerThread;->cleanupServerResources()V

    .line 278
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "closing "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mServerName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " listening socket="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mSockAddr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected declared-synchronized setQuitFlag(Z)V
    .locals 0

    monitor-enter p0

    .line 199
    :try_start_0
    iput-boolean p1, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mQuit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shutdownServer()V
    .locals 5

    monitor-enter p0

    .line 140
    :try_start_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "IPCServerThread"

    const-string v2, "Shutting down server."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0, v0}, Lcom/cisco/android/nchs/ipc/IPCServerThread;->setQuitFlag(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 144
    :try_start_1
    iget-object v1, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :cond_0
    :try_start_2
    iput-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mServerSocket:Landroid/net/LocalServerSocket;

    .line 158
    :goto_0
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ipc/IPCServerThread;->connectToServerSocket()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 151
    :try_start_3
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "IPCServerThread"

    const-string v4, "Unexpected IOException while shutting server down"

    invoke-static {v2, v3, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    :try_start_4
    iput-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mServerSocket:Landroid/net/LocalServerSocket;

    goto :goto_0

    .line 161
    :goto_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "IPCServerThread"

    const-string v2, "server shutdown"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 162
    monitor-exit p0

    return-void

    .line 155
    :goto_2
    :try_start_5
    iput-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mServerSocket:Landroid/net/LocalServerSocket;

    .line 158
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ipc/IPCServerThread;->connectToServerSocket()V

    .line 159
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public signalRequestedOperationCompleted(Z)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mRequestedOperationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iput-boolean p1, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mRequestedOperationCompletedSuccessfully:Z

    .line 89
    iget-object p1, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mRequestedOperationLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 90
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected waitForRequestedEvent()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 4

    .line 102
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "IPCServerThread"

    const-string/jumbo v2, "waiting for requested operation to occur..."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mRequestedOperationLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :try_start_1
    iget-object v1, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mRequestedOperationLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 110
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    iget-object v1, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mRequestedOperationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "IPCServerThread"

    const-string v3, "checking flag"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-boolean v0, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mRequestedOperationCompletedSuccessfully:Z

    const/4 v2, 0x0

    .line 124
    iput-boolean v2, p0, Lcom/cisco/android/nchs/ipc/IPCServerThread;->mRequestedOperationCompletedSuccessfully:Z

    .line 125
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object v0

    .line 132
    :cond_0
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object v0

    :catchall_0
    move-exception v0

    .line 125
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 110
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 114
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "IPCServerThread"

    const-string v2, "InterruptedException while waiting for package operation to complete"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object v0
.end method

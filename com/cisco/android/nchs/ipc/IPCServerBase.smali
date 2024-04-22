.class public abstract Lcom/cisco/android/nchs/ipc/IPCServerBase;
.super Lcom/cisco/android/nchs/ipc/IPCServerThread;
.source "IPCServerBase.java"


# static fields
.field protected static final ENTITY_NAME:Ljava/lang/String; = "IPCServerBase"

.field protected static final THREAD_WAIT_MILLIS:I = 0x7d0


# instance fields
.field private final mWorkerThreads:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/cisco/android/nchs/ipc/IPCInteractionThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/cisco/android/nchs/ipc/IPCServerThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;)V

    .line 39
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/cisco/android/nchs/ipc/IPCServerBase;->mWorkerThreads:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method protected abstract callServiceMethod(Lcom/cisco/android/nchs/codes/IOpcode;Ljava/util/ArrayList;Landroid/net/LocalSocket;Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/android/nchs/codes/IOpcode;",
            "Ljava/util/ArrayList<",
            "Lcom/cisco/android/nchs/ipc/ArgumentMapping;",
            ">;",
            "Landroid/net/LocalSocket;",
            "Lcom/cisco/android/nchs/ipc/IPCReturnMessage;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;
        }
    .end annotation
.end method

.method protected declared-synchronized cleanupServerResources()V
    .locals 5

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCServerBase;->mWorkerThreads:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 64
    monitor-exit p0

    return-void

    .line 68
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCServerBase;->mWorkerThreads:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;

    .line 70
    invoke-virtual {v1}, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v1}, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v2, 0x7d0

    .line 79
    :try_start_2
    invoke-virtual {v1, v2, v3}, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->join(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 83
    :try_start_3
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "IPCServerBase"

    const-string v4, "interrupted during join for workerThread."

    invoke-static {v2, v3, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCServerBase;->mWorkerThreads:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
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

.method protected declared-synchronized handleNewConnection(Landroid/net/LocalSocket;)V
    .locals 1

    monitor-enter p0

    .line 102
    :try_start_0
    new-instance v0, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;

    invoke-direct {v0, p1, p0}, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;-><init>(Landroid/net/LocalSocket;Lcom/cisco/android/nchs/ipc/IPCServerBase;)V

    .line 103
    invoke-virtual {v0}, Lcom/cisco/android/nchs/ipc/IPCInteractionThread;->start()V

    .line 104
    iget-object p1, p0, Lcom/cisco/android/nchs/ipc/IPCServerBase;->mWorkerThreads:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized removeWorkerThread(Lcom/cisco/android/nchs/ipc/IPCInteractionThread;)Z
    .locals 1

    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/IPCServerBase;->mWorkerThreads:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

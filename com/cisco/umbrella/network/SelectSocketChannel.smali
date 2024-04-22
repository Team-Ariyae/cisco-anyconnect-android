.class public Lcom/cisco/umbrella/network/SelectSocketChannel;
.super Ljava/lang/Object;
.source "SelectSocketChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;,
        Lcom/cisco/umbrella/network/SelectSocketChannel$ISelectSocketChannelCB;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SelectSocketChannel"


# instance fields
.field private isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAddress:Ljava/net/SocketAddress;

.field private final mCallback:Lcom/cisco/umbrella/network/SelectSocketChannel$ISelectSocketChannelCB;

.field private mChannel:Ljava/nio/channels/DatagramChannel;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mReadBuffer:Ljava/nio/ByteBuffer;

.field private mReadSelector:Ljava/nio/channels/Selector;

.field private mReadTask:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field mReadTaskFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectThread:Ljava/lang/Thread;

.field private mShouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWriteSelector:Ljava/nio/channels/Selector;

.field private publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

.field private selectRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/cisco/umbrella/network/SelectSocketChannel$ISelectSocketChannelCB;Lcom/cisco/umbrella/network/IPublicNetworkMonitor;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mShouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 192
    new-instance v0, Lcom/cisco/umbrella/network/SelectSocketChannel$1;

    invoke-direct {v0, p0}, Lcom/cisco/umbrella/network/SelectSocketChannel$1;-><init>(Lcom/cisco/umbrella/network/SelectSocketChannel;)V

    iput-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mReadTask:Ljava/util/concurrent/Callable;

    .line 221
    new-instance v0, Lcom/cisco/umbrella/network/SelectSocketChannel$2;

    invoke-direct {v0, p0}, Lcom/cisco/umbrella/network/SelectSocketChannel$2;-><init>(Lcom/cisco/umbrella/network/SelectSocketChannel;)V

    iput-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->selectRunnable:Ljava/lang/Runnable;

    .line 56
    iput-object p3, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    .line 58
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p3, v0, :cond_0

    .line 59
    invoke-static {}, Ljava/util/concurrent/Executors;->newWorkStealingPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    iput-object p3, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mExecutor:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    iput-object p3, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 64
    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mReadBuffer:Ljava/nio/ByteBuffer;

    .line 65
    iput-object p2, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mCallback:Lcom/cisco/umbrella/network/SelectSocketChannel$ISelectSocketChannelCB;

    .line 67
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object p3, Lcom/cisco/umbrella/network/SelectSocketChannel;->TAG:Ljava/lang/String;

    const-string v0, "Finished constructing SelectSocketChannel"

    invoke-static {p1, p2, p3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/cisco/umbrella/network/SelectSocketChannel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/net/SocketAddress;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mAddress:Ljava/net/SocketAddress;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/util/concurrent/Callable;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mReadTask:Ljava/util/concurrent/Callable;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/nio/channels/DatagramChannel;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mChannel:Ljava/nio/channels/DatagramChannel;

    return-object p0
.end method

.method static synthetic access$400(Lcom/cisco/umbrella/network/SelectSocketChannel;)Lcom/cisco/umbrella/network/IPublicNetworkMonitor;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    return-object p0
.end method

.method static synthetic access$500(Lcom/cisco/umbrella/network/SelectSocketChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/cisco/umbrella/network/SelectSocketChannel;->initialize()V

    return-void
.end method

.method static synthetic access$600(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mReadBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/cisco/umbrella/network/SelectSocketChannel;)Lcom/cisco/umbrella/network/SelectSocketChannel$ISelectSocketChannelCB;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mCallback:Lcom/cisco/umbrella/network/SelectSocketChannel$ISelectSocketChannelCB;

    return-object p0
.end method

.method static synthetic access$800(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mShouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$900(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/nio/channels/Selector;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mReadSelector:Ljava/nio/channels/Selector;

    return-object p0
.end method

.method private declared-synchronized initialize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 82
    :try_start_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/SelectSocketChannel;->TAG:Ljava/lang/String;

    const-string v2, "initialize invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mChannel:Ljava/nio/channels/DatagramChannel;

    .line 85
    iget-object v2, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mAddress:Ljava/net/SocketAddress;

    invoke-virtual {v0, v2}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    .line 86
    iget-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mChannel:Ljava/nio/channels/DatagramChannel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 87
    iget-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mChannel:Ljava/nio/channels/DatagramChannel;

    iget-object v2, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mReadSelector:Ljava/nio/channels/Selector;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 88
    iget-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mChannel:Ljava/nio/channels/DatagramChannel;

    iget-object v2, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mWriteSelector:Ljava/nio/channels/Selector;

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 90
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "SelectSocketChannel has been initialized."

    invoke-static {v0, v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 11

    const-string v0, "Executor terminated."

    const-string v1, "Awaiting for executor termination."

    const-string v2, "Executor termination failed "

    const-string v3, "failed to term select thread "

    .line 99
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v6, Lcom/cisco/umbrella/network/SelectSocketChannel;->TAG:Ljava/lang/String;

    const-string v7, "Closing SelectSocketChannel"

    invoke-static {v4, v5, v6, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v4, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mShouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v4, 0x1f4

    const/4 v7, 0x0

    .line 103
    :try_start_0
    iget-object v8, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mSelectThread:Ljava/lang/Thread;

    if-eqz v8, :cond_0

    .line 104
    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 105
    iget-object v8, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mSelectThread:Ljava/lang/Thread;

    invoke-virtual {v8, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_0
    iput-object v7, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    .line 113
    :try_start_1
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v8, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v3, v8, v6, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    .line 115
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 116
    iget-object v1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mExecutor:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 117
    iput-object v7, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 119
    :cond_1
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v1, v3, v6, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 121
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v3, Lcom/cisco/umbrella/network/SelectSocketChannel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v6

    .line 108
    :try_start_2
    sget-object v8, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v9, Lcom/cisco/umbrella/network/SelectSocketChannel;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v9, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    iput-object v7, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    .line 113
    :try_start_3
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v6, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v3, v6, v9, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_2

    .line 115
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 116
    iget-object v1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mExecutor:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 117
    iput-object v7, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 119
    :cond_2
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v1, v3, v9, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 121
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v3, Lcom/cisco/umbrella/network/SelectSocketChannel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-void

    .line 111
    :goto_2
    iput-object v7, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    .line 113
    :try_start_4
    sget-object v6, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v8, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v9, Lcom/cisco/umbrella/network/SelectSocketChannel;->TAG:Ljava/lang/String;

    invoke-static {v6, v8, v9, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_3

    .line 115
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 116
    iget-object v1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mExecutor:Ljava/util/concurrent/ExecutorService;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v6}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 117
    iput-object v7, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 119
    :cond_3
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v1, v4, v9, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 121
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v4, Lcom/cisco/umbrella/network/SelectSocketChannel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 124
    :goto_3
    goto :goto_5

    :goto_4
    throw v3

    :goto_5
    goto :goto_4
.end method

.method public getIsReconnecting()Ljava/lang/Boolean;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Ljava/net/DatagramSocket;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Ljava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mAddress:Ljava/net/SocketAddress;

    .line 72
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mReadSelector:Ljava/nio/channels/Selector;

    .line 73
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mWriteSelector:Ljava/nio/channels/Selector;

    .line 75
    invoke-direct {p0}, Lcom/cisco/umbrella/network/SelectSocketChannel;->initialize()V

    .line 77
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->selectRunnable:Ljava/lang/Runnable;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mSelectThread:Ljava/lang/Thread;

    .line 78
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public writeBuffer(Ljava/nio/ByteBuffer;)V
    .locals 4

    const-string v0, "isReconnecting: "

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/network/SelectSocketChannel;->TAG:Ljava/lang/String;

    const-string v3, "Calling write..."

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;

    invoke-direct {v1, p0, p1}, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;-><init>(Lcom/cisco/umbrella/network/SelectSocketChannel;Ljava/nio/ByteBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 132
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-interface {p1, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    goto :goto_0

    .line 134
    :cond_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/network/SelectSocketChannel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel;->isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 137
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/SelectSocketChannel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "writeBuffer failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

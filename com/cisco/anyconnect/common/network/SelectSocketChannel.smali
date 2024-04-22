.class public Lcom/cisco/anyconnect/common/network/SelectSocketChannel;
.super Ljava/lang/Object;
.source "SelectSocketChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/common/network/SelectSocketChannel$WriteTask;,
        Lcom/cisco/anyconnect/common/network/SelectSocketChannel$ISelectSocketChannelCB;
    }
.end annotation


# instance fields
.field private mAddress:Ljava/net/SocketAddress;

.field private final mCallback:Lcom/cisco/anyconnect/common/network/SelectSocketChannel$ISelectSocketChannelCB;

.field private mChannel:Ljava/nio/channels/DatagramChannel;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mReadBuffer:Ljava/nio/ByteBuffer;

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

.field private mSelector:Ljava/nio/channels/Selector;

.field private mShouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private selectRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAddress(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/net/SocketAddress;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mAddress:Ljava/net/SocketAddress;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Lcom/cisco/anyconnect/common/network/SelectSocketChannel$ISelectSocketChannelCB;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mCallback:Lcom/cisco/anyconnect/common/network/SelectSocketChannel$ISelectSocketChannelCB;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChannel(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/nio/channels/DatagramChannel;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mChannel:Ljava/nio/channels/DatagramChannel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExecutor(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsInitialized(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReadBuffer(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mReadBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReadTask(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/util/concurrent/Callable;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mReadTask:Ljava/util/concurrent/Callable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectThread(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mSelectThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelector(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/nio/channels/Selector;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mSelector:Ljava/nio/channels/Selector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldStop(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mShouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectRunnable(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->selectRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAddress(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;Ljava/net/SocketAddress;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mAddress:Ljava/net/SocketAddress;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSelectThread(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mSelectThread:Ljava/lang/Thread;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSelector(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;Ljava/nio/channels/Selector;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mSelector:Ljava/nio/channels/Selector;

    return-void
.end method

.method public constructor <init>(ILcom/cisco/anyconnect/common/network/SelectSocketChannel$ISelectSocketChannelCB;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mShouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 138
    new-instance v0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$2;-><init>(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mReadTask:Ljava/util/concurrent/Callable;

    .line 168
    new-instance v0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$3;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$3;-><init>(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->selectRunnable:Ljava/lang/Runnable;

    .line 40
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mReadBuffer:Ljava/nio/ByteBuffer;

    .line 41
    iput-object p2, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mCallback:Lcom/cisco/anyconnect/common/network/SelectSocketChannel$ISelectSocketChannelCB;

    .line 42
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mChannel:Ljava/nio/channels/DatagramChannel;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mShouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 81
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mSelectThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mSelectThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "failed to term select thread"

    .line 86
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public getSocket()Ljava/net/DatagramSocket;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Ljava/net/InetAddress;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;-><init>(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;Ljava/net/InetAddress;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 68
    :try_start_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1f4

    invoke-interface {p1, v0, v1, p2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 70
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public isInitialized()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public writeBuffer(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$WriteTask;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$WriteTask;-><init>(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;Ljava/nio/ByteBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 96
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    invoke-interface {p1, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

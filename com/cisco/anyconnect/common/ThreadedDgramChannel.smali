.class public Lcom/cisco/anyconnect/common/ThreadedDgramChannel;
.super Ljava/lang/Object;
.source "ThreadedDgramChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IPCWriteTask;,
        Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IThreadedDgramChannelCB;,
        Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IWritableContent;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IThreadedDgramChannelCB;

.field mInputStream:Ljava/io/InputStream;

.field private mInputTask:Ljava/lang/Runnable;

.field private final mInputThread:Ljava/lang/Thread;

.field private final mOutputExecutor:Ljava/util/concurrent/ExecutorService;

.field mOutputStream:Ljava/io/OutputStream;

.field mReadBuffer:[B

.field mWriteBuffer:[B


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/cisco/anyconnect/common/ThreadedDgramChannel;)Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IThreadedDgramChannelCB;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel;->mCallback:Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IThreadedDgramChannelCB;

    return-object p0
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;ILcom/cisco/anyconnect/common/ThreadedDgramChannel$IThreadedDgramChannelCB;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel;->mOutputExecutor:Ljava/util/concurrent/ExecutorService;

    .line 38
    new-instance v0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/common/ThreadedDgramChannel$1;-><init>(Lcom/cisco/anyconnect/common/ThreadedDgramChannel;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel;->mInputTask:Ljava/lang/Runnable;

    .line 73
    iput-object p4, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel;->mCallback:Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IThreadedDgramChannelCB;

    .line 74
    new-array p4, p3, [B

    iput-object p4, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel;->mReadBuffer:[B

    .line 75
    new-array p3, p3, [B

    iput-object p3, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel;->mWriteBuffer:[B

    .line 76
    iput-object p1, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel;->mInputStream:Ljava/io/InputStream;

    .line 77
    iput-object p2, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel;->mOutputStream:Ljava/io/OutputStream;

    .line 78
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel;->mInputTask:Ljava/lang/Runnable;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel;->mInputThread:Ljava/lang/Thread;

    .line 79
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    :try_start_0
    const-string v0, "ddx closing channels"

    .line 123
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel;->mOutputExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 125
    iget-object v0, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel;->mInputThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 126
    iget-object v0, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel;->mInputThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    const-string v0, "ddx closed channel"

    .line 127
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "stop failed: "

    .line 130
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public write(Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IWritableContent;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    :try_start_0
    new-instance v2, Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IPCWriteTask;

    invoke-direct {v2, p0, p1}, Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IPCWriteTask;-><init>(Lcom/cisco/anyconnect/common/ThreadedDgramChannel;Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IWritableContent;)V

    .line 104
    iget-object p1, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel;->mOutputExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 105
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xfa

    invoke-interface {v1, v2, v3, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 v2, 0x1

    .line 114
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string v1, "Unexpected write exception: "

    .line 115
    invoke-static {p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :catch_1
    const-string/jumbo p1, "write interrupted"

    .line 109
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

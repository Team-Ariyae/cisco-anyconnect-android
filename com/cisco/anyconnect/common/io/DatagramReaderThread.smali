.class public Lcom/cisco/anyconnect/common/io/DatagramReaderThread;
.super Ljava/lang/Object;
.source "DatagramReaderThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/common/io/DatagramReaderThread$IHandler;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/cisco/anyconnect/common/io/DatagramReaderThread$IHandler;

.field private mInputStream:Ljava/io/InputStream;

.field private mInputTask:Ljava/lang/Runnable;

.field private final mInputThread:Ljava/lang/Thread;

.field private mReadBuffer:[B


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/cisco/anyconnect/common/io/DatagramReaderThread;)Lcom/cisco/anyconnect/common/io/DatagramReaderThread$IHandler;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/common/io/DatagramReaderThread;->mCallback:Lcom/cisco/anyconnect/common/io/DatagramReaderThread$IHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInputStream(Lcom/cisco/anyconnect/common/io/DatagramReaderThread;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/common/io/DatagramReaderThread;->mInputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReadBuffer(Lcom/cisco/anyconnect/common/io/DatagramReaderThread;)[B
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/common/io/DatagramReaderThread;->mReadBuffer:[B

    return-object p0
.end method

.method public constructor <init>(Ljava/io/InputStream;ILcom/cisco/anyconnect/common/io/DatagramReaderThread$IHandler;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/cisco/anyconnect/common/io/DatagramReaderThread$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/common/io/DatagramReaderThread$1;-><init>(Lcom/cisco/anyconnect/common/io/DatagramReaderThread;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/common/io/DatagramReaderThread;->mInputTask:Ljava/lang/Runnable;

    .line 26
    iput-object p3, p0, Lcom/cisco/anyconnect/common/io/DatagramReaderThread;->mCallback:Lcom/cisco/anyconnect/common/io/DatagramReaderThread$IHandler;

    .line 27
    new-array p2, p2, [B

    iput-object p2, p0, Lcom/cisco/anyconnect/common/io/DatagramReaderThread;->mReadBuffer:[B

    .line 28
    iput-object p1, p0, Lcom/cisco/anyconnect/common/io/DatagramReaderThread;->mInputStream:Ljava/io/InputStream;

    .line 29
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/cisco/anyconnect/common/io/DatagramReaderThread;->mInputTask:Ljava/lang/Runnable;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/common/io/DatagramReaderThread;->mInputThread:Ljava/lang/Thread;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    :try_start_0
    const-string v0, "ddx closing channels"

    .line 70
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/cisco/anyconnect/common/io/DatagramReaderThread;->mInputThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 72
    iget-object v0, p0, Lcom/cisco/anyconnect/common/io/DatagramReaderThread;->mInputThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    const-string v0, "ddx closed channel"

    .line 73
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "stop failed: "

    .line 76
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

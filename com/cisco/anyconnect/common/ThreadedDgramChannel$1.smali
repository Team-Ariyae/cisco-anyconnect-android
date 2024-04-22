.class Lcom/cisco/anyconnect/common/ThreadedDgramChannel$1;
.super Ljava/lang/Object;
.source "ThreadedDgramChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/common/ThreadedDgramChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/common/ThreadedDgramChannel;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/common/ThreadedDgramChannel;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel$1;->this$0:Lcom/cisco/anyconnect/common/ThreadedDgramChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 46
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel$1;->this$0:Lcom/cisco/anyconnect/common/ThreadedDgramChannel;

    iget-object v0, v0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel;->mInputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel$1;->this$0:Lcom/cisco/anyconnect/common/ThreadedDgramChannel;

    iget-object v1, v1, Lcom/cisco/anyconnect/common/ThreadedDgramChannel;->mReadBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    if-lez v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel$1;->this$0:Lcom/cisco/anyconnect/common/ThreadedDgramChannel;

    invoke-static {v1}, Lcom/cisco/anyconnect/common/ThreadedDgramChannel;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/common/ThreadedDgramChannel;)Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IThreadedDgramChannelCB;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel$1;->this$0:Lcom/cisco/anyconnect/common/ThreadedDgramChannel;

    iget-object v2, v2, Lcom/cisco/anyconnect/common/ThreadedDgramChannel;->mReadBuffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IThreadedDgramChannelCB;->onDatagramRead(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 62
    iget-object v1, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel$1;->this$0:Lcom/cisco/anyconnect/common/ThreadedDgramChannel;

    const-string/jumbo v2, "unexpected exception"

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    :goto_1
    iget-object v0, p0, Lcom/cisco/anyconnect/common/ThreadedDgramChannel$1;->this$0:Lcom/cisco/anyconnect/common/ThreadedDgramChannel;

    const-string v1, "ddx exiting input thread"

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

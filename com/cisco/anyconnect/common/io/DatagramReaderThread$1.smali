.class Lcom/cisco/anyconnect/common/io/DatagramReaderThread$1;
.super Ljava/lang/Object;
.source "DatagramReaderThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/common/io/DatagramReaderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/common/io/DatagramReaderThread;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/common/io/DatagramReaderThread;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/cisco/anyconnect/common/io/DatagramReaderThread$1;->this$0:Lcom/cisco/anyconnect/common/io/DatagramReaderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 41
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/common/io/DatagramReaderThread$1;->this$0:Lcom/cisco/anyconnect/common/io/DatagramReaderThread;

    invoke-static {v0}, Lcom/cisco/anyconnect/common/io/DatagramReaderThread;->-$$Nest$fgetmInputStream(Lcom/cisco/anyconnect/common/io/DatagramReaderThread;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/common/io/DatagramReaderThread$1;->this$0:Lcom/cisco/anyconnect/common/io/DatagramReaderThread;

    invoke-static {v1}, Lcom/cisco/anyconnect/common/io/DatagramReaderThread;->-$$Nest$fgetmReadBuffer(Lcom/cisco/anyconnect/common/io/DatagramReaderThread;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/cisco/anyconnect/common/io/DatagramReaderThread$1;->this$0:Lcom/cisco/anyconnect/common/io/DatagramReaderThread;

    invoke-static {v0}, Lcom/cisco/anyconnect/common/io/DatagramReaderThread;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/common/io/DatagramReaderThread;)Lcom/cisco/anyconnect/common/io/DatagramReaderThread$IHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/common/io/DatagramReaderThread$IHandler;->onReadShutdown()V

    goto :goto_1

    :cond_1
    if-lez v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/cisco/anyconnect/common/io/DatagramReaderThread$1;->this$0:Lcom/cisco/anyconnect/common/io/DatagramReaderThread;

    invoke-static {v1}, Lcom/cisco/anyconnect/common/io/DatagramReaderThread;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/common/io/DatagramReaderThread;)Lcom/cisco/anyconnect/common/io/DatagramReaderThread$IHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/common/io/DatagramReaderThread$1;->this$0:Lcom/cisco/anyconnect/common/io/DatagramReaderThread;

    invoke-static {v2}, Lcom/cisco/anyconnect/common/io/DatagramReaderThread;->-$$Nest$fgetmReadBuffer(Lcom/cisco/anyconnect/common/io/DatagramReaderThread;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/cisco/anyconnect/common/io/DatagramReaderThread$IHandler;->onDatagramRead(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
    iget-object v1, p0, Lcom/cisco/anyconnect/common/io/DatagramReaderThread$1;->this$0:Lcom/cisco/anyconnect/common/io/DatagramReaderThread;

    invoke-static {v1}, Lcom/cisco/anyconnect/common/io/DatagramReaderThread;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/common/io/DatagramReaderThread;)Lcom/cisco/anyconnect/common/io/DatagramReaderThread$IHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/cisco/anyconnect/common/io/DatagramReaderThread$IHandler;->onReadException(Ljava/lang/Exception;)V

    .line 63
    :goto_1
    iget-object v0, p0, Lcom/cisco/anyconnect/common/io/DatagramReaderThread$1;->this$0:Lcom/cisco/anyconnect/common/io/DatagramReaderThread;

    const-string v1, "ddx exiting input thread"

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/cisco/umbrella/network/SelectSocketChannel$2;
.super Ljava/lang/Object;
.source "SelectSocketChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/network/SelectSocketChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/network/SelectSocketChannel;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$2;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private submitReadTask(Ljava/util/Iterator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 250
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/SelectionKey;

    .line 252
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 253
    iget-object p1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$2;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    iget-object p1, p1, Lcom/cisco/umbrella/network/SelectSocketChannel;->mReadTaskFuture:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$2;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    iget-object p1, p1, Lcom/cisco/umbrella/network/SelectSocketChannel;->mReadTaskFuture:Ljava/util/concurrent/Future;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-nez p1, :cond_0

    .line 254
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "readTask too slow!"

    invoke-static {p1, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$2;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {p1}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$1100(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$2;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v1}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$1000(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p1, Lcom/cisco/umbrella/network/SelectSocketChannel;->mReadTaskFuture:Ljava/util/concurrent/Future;

    .line 257
    iget-object p1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$2;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    iget-object p1, p1, Lcom/cisco/umbrella/network/SelectSocketChannel;->mReadTaskFuture:Ljava/util/concurrent/Future;

    const-wide/16 v0, 0x5dc

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 224
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Started selectRunnable"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$2;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$800(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$2;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$200(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$2;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$900(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/nio/channels/Selector;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 230
    :cond_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Submitting read task"

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$2;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$900(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 233
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 235
    :try_start_1
    invoke-direct {p0, v0}, Lcom/cisco/umbrella/network/SelectSocketChannel$2;->submitReadTask(Ljava/util/Iterator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    :goto_2
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 237
    :try_start_3
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read key selector iterator error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 239
    :goto_3
    :try_start_4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 240
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .line 243
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ddx exc "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 246
    :cond_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ddx3 closing"

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

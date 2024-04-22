.class Lcom/cisco/anyconnect/common/network/SelectSocketChannel$3;
.super Ljava/lang/Object;
.source "SelectSocketChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/common/network/SelectSocketChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$3;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 171
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$3;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmShouldStop(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$3;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmSelector(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/nio/channels/Selector;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$3;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmSelector(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 181
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    iget-object v1, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$3;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    iget-object v1, v1, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mReadTaskFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$3;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    iget-object v1, v1, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mReadTaskFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$3;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v1}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmExecutor(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$3;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v3}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmReadTask(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/util/concurrent/Callable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v1, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mReadTaskFuture:Ljava/util/concurrent/Future;

    .line 191
    iget-object v1, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$3;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    iget-object v1, v1, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->mReadTaskFuture:Ljava/util/concurrent/Future;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x64

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :cond_3
    :goto_2
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 199
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 202
    iget-object v1, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$3;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    const-string v2, "ddx exc"

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 205
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ddx3 closing"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

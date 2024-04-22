.class Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;
.super Ljava/lang/Object;
.source "SelectSocketChannel.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->initialize(Ljava/net/InetAddress;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

.field final synthetic val$addr:Ljava/net/InetAddress;

.field final synthetic val$port:I


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;Ljava/net/InetAddress;I)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    iput-object p2, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->val$addr:Ljava/net/InetAddress;

    iput p3, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->val$port:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ddxi init with addr: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->val$addr:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->val$port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->val$addr:Ljava/net/InetAddress;

    iget v3, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->val$port:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fputmAddress(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;Ljava/net/SocketAddress;)V

    .line 52
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmChannel(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v1}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmAddress(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    .line 53
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ddxi connected to addr: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v2}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmAddress(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmChannel(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 56
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fputmSelector(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;Ljava/nio/channels/Selector;)V

    .line 57
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmChannel(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v1}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmSelector(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/nio/channels/Selector;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 59
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    new-instance v1, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v3}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetselectRunnable(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fputmSelectThread(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;Ljava/lang/Thread;)V

    .line 60
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmSelectThread(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 61
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$1;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmIsInitialized(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    return-object v0
.end method

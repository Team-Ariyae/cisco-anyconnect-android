.class Lcom/cisco/anyconnect/common/network/SelectSocketChannel$WriteTask;
.super Ljava/lang/Object;
.source "SelectSocketChannel.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/common/network/SelectSocketChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteTask"
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
.field private final mData:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p2, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$WriteTask;->mData:Ljava/nio/ByteBuffer;

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

    .line 106
    invoke-virtual {p0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$WriteTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmChannel(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$WriteTask;->mData:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v2}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmAddress(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ddx channel send failed: "

    .line 132
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ddx io exc"

    .line 123
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "ddx2 reconnect channel"

    .line 125
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmChannel(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->disconnect()Ljava/nio/channels/DatagramChannel;

    .line 127
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmChannel(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v1}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmAddress(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    .line 128
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmChannel(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 129
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Lcom/cisco/anyconnect/common/network/SelectSocketChannel$ISelectSocketChannelCB;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$ISelectSocketChannelCB;->onChannelReconnected()V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

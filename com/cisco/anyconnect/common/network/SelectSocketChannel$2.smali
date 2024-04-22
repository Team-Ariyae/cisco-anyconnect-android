.class Lcom/cisco/anyconnect/common/network/SelectSocketChannel$2;
.super Ljava/lang/Object;
.source "SelectSocketChannel.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/common/network/SelectSocketChannel;
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


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$2;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

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

    .line 138
    invoke-virtual {p0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$2;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmChannel(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$2;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v1}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmReadBuffer(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$2;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v2}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmReadBuffer(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 152
    new-array v3, v2, [B

    .line 153
    iget-object v4, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$2;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v4}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmReadBuffer(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 154
    iget-object v4, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$2;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v4}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmReadBuffer(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 156
    iget-object v2, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$2;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v2}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Lcom/cisco/anyconnect/common/network/SelectSocketChannel$ISelectSocketChannelCB;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$ISelectSocketChannelCB;->onDataReceived([B)V

    .line 157
    iget-object v2, p0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel$2;->this$0:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-static {v2}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->-$$Nest$fgetmReadBuffer(Lcom/cisco/anyconnect/common/network/SelectSocketChannel;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    if-nez v0, :cond_0

    return-object v1
.end method

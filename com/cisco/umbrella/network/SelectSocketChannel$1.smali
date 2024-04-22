.class Lcom/cisco/umbrella/network/SelectSocketChannel$1;
.super Ljava/lang/Object;
.source "SelectSocketChannel.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/network/SelectSocketChannel;
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
.field final synthetic this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/network/SelectSocketChannel;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$1;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

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

    .line 192
    invoke-virtual {p0}, Lcom/cisco/umbrella/network/SelectSocketChannel$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    :goto_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Receiving the data"

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$1;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$300(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$1;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$300(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    iget-object v2, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$1;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v2}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$600(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/channels/DatagramChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$1;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$600(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 208
    new-array v1, v0, [B

    .line 209
    iget-object v2, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$1;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v2}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$600(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 210
    iget-object v2, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$1;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v2}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$600(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 212
    iget-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$1;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$700(Lcom/cisco/umbrella/network/SelectSocketChannel;)Lcom/cisco/umbrella/network/SelectSocketChannel$ISelectSocketChannelCB;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/cisco/umbrella/network/SelectSocketChannel$ISelectSocketChannelCB;->onDataReceived([B)V

    .line 213
    iget-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$1;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$600(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 214
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Received pub data"

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;
.super Ljava/lang/Object;
.source "SelectSocketChannel.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/network/SelectSocketChannel;
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

.field final synthetic this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/network/SelectSocketChannel;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p2, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;->mData:Ljava/nio/ByteBuffer;

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

    .line 142
    invoke-virtual {p0}, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 9

    const-string v0, "Reconnect to channel failed: "

    const-string v1, "Connection exception occurred."

    const-string v2, "Failed recovering "

    .line 151
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ddx writing to pub: len"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;->mData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " address::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    .line 152
    invoke-static {v7}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$100(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 151
    invoke-static {v3, v4, v5, v6}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 154
    :try_start_0
    iget-object v5, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v5}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$200(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_0

    .line 155
    iget-object v5, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v5}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$300(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/nio/channels/DatagramChannel;

    move-result-object v5

    iget-object v6, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;->mData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/channels/DatagramChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 156
    :cond_0
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v6, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ddx wrote to pub"

    invoke-static {v5, v6, v7, v8}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/nio/channels/NotYetConnectedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v2

    .line 170
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ddx channel send failed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v2}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$400(Lcom/cisco/umbrella/network/SelectSocketChannel;)Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;->isOnline()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v2}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$200(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    :try_start_1
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "System is back online now. Reconnecting socket channel"

    invoke-static {v2, v3, v5, v6}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v2}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$300(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/nio/channels/DatagramChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/DatagramChannel;->disconnect()Ljava/nio/channels/DatagramChannel;

    .line 175
    iget-object v2, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v2}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$300(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/nio/channels/DatagramChannel;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v3}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$100(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    .line 176
    iget-object v2, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v2}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$300(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/nio/channels/DatagramChannel;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 177
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Reconnection to socket channel complete."

    invoke-static {v2, v3, v5, v6}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    .line 181
    :try_start_2
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v5, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 179
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v5, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$200(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_5

    :goto_1
    iget-object v1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v1}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$200(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 184
    throw v0

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    .line 158
    :goto_2
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Reinitializing sockets "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v5, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$400(Lcom/cisco/umbrella/network/SelectSocketChannel;)Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$200(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :try_start_3
    iget-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$500(Lcom/cisco/umbrella/network/SelectSocketChannel;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 166
    :goto_3
    iget-object v0, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v0}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$200(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    .line 164
    :try_start_4
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 166
    :goto_4
    iget-object v1, p0, Lcom/cisco/umbrella/network/SelectSocketChannel$WriteTask;->this$0:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-static {v1}, Lcom/cisco/umbrella/network/SelectSocketChannel;->access$200(Lcom/cisco/umbrella/network/SelectSocketChannel;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 167
    throw v0

    :cond_1
    :goto_5
    const/4 v0, 0x0

    return-object v0
.end method

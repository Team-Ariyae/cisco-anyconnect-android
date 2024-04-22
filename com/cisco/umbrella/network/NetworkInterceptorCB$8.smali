.class Lcom/cisco/umbrella/network/NetworkInterceptorCB$8;
.super Ljava/lang/Object;
.source "NetworkInterceptorCB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/umbrella/network/NetworkInterceptorCB;->onDataReceived([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

.field final synthetic val$encryptedPacket:[B


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/network/NetworkInterceptorCB;[B)V
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$8;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    iput-object p2, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$8;->val$encryptedPacket:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 686
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Data received from the resolver."

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$8;->val$encryptedPacket:[B

    .line 688
    iget-object v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$8;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    invoke-static {v1}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$1300(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$8;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    invoke-static {v0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$500(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)Lcom/cisco/umbrella/crypto/DNSCryptHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$8;->val$encryptedPacket:[B

    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/crypto/DNSCryptHelper;->decrypt([B)[B

    move-result-object v0

    .line 691
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DNS response size :: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " DNS Response:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/cisco/umbrella/util/Helper;->byteToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 694
    invoke-static {v0}, Lcom/cisco/umbrella/util/Helper;->getTransactionId(Ljava/nio/ByteBuffer;)S

    move-result v1

    .line 695
    iget-object v2, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$8;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    invoke-static {v2}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$1000(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;

    .line 696
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    if-eqz v1, :cond_1

    .line 699
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "writeData is invoked::"

    invoke-static {v2, v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {v1, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->writeData(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 702
    :cond_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "writeData networkFlow is null::"

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

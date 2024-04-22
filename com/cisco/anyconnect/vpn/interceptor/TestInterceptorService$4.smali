.class Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4;
.super Ljava/lang/Object;
.source "TestInterceptorService.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleFlowClosed(Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;)V
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ddxt flow closed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public handleFlowData(Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 191
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->-$$Nest$fgetmTxFlowMap(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ddxt flow data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " msgId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " len="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 200
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->-$$Nest$fgetmProxyChannel(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;)Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->writeBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public handleStateChange(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4$1;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

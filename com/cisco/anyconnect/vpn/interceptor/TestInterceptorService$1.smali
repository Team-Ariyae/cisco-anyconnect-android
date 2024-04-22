.class Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$1;
.super Ljava/lang/Object;
.source "TestInterceptorService.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 56
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$1;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$1;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->-$$Nest$fgetmTxFlowMap(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 61
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ddx4 removed closed flows "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$1;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->-$$Nest$fgetmTxFlowMap(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$1;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->-$$Nest$mscheduleRemoveClosedFlows(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;)V

    return-void
.end method

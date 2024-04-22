.class Lcom/cisco/umbrella/network/NetworkInterceptorCB$6;
.super Ljava/lang/Object;
.source "NetworkInterceptorCB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/network/NetworkInterceptorCB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$6;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 566
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Clearing closed network flow maps. Total Size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$6;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    invoke-static {v4}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$1000(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$6;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    invoke-static {v0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$1000(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 570
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 572
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 577
    :cond_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cleared closed network flow maps. Total size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$6;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    invoke-static {v4}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$1000(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$6;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    invoke-static {v0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$1100(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)V

    return-void
.end method

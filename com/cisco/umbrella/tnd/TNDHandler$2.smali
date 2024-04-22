.class Lcom/cisco/umbrella/tnd/TNDHandler$2;
.super Ljava/lang/Object;
.source "TNDHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/umbrella/tnd/TNDHandler;->initializeTND()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/tnd/TNDHandler;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/tnd/TNDHandler;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/cisco/umbrella/tnd/TNDHandler$2;->this$0:Lcom/cisco/umbrella/tnd/TNDHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 155
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Initialization of TND in progress ..."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler$2;->this$0:Lcom/cisco/umbrella/tnd/TNDHandler;

    invoke-static {v0}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$200(Lcom/cisco/umbrella/tnd/TNDHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/umbrella/tnd/TNDHandler$2;->this$0:Lcom/cisco/umbrella/tnd/TNDHandler;

    invoke-static {v1}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$300(Lcom/cisco/umbrella/tnd/TNDHandler;)Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;->getConnectedNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/umbrella/network/NetworkUtils;->getIpv4DNSServers(Landroid/content/Context;Landroid/net/Network;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 157
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/cisco/umbrella/tnd/TNDHandler$2;->this$0:Lcom/cisco/umbrella/tnd/TNDHandler;

    invoke-static {v1}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$400(Lcom/cisco/umbrella/tnd/TNDHandler;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cisco/umbrella/tnd/TNDHandler$2;->this$0:Lcom/cisco/umbrella/tnd/TNDHandler;

    invoke-static {v1}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$500(Lcom/cisco/umbrella/tnd/TNDHandler;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/cisco/umbrella/tnd/TNDHandler$2;->this$0:Lcom/cisco/umbrella/tnd/TNDHandler;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$600(Lcom/cisco/umbrella/tnd/TNDHandler;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler$2;->this$0:Lcom/cisco/umbrella/tnd/TNDHandler;

    invoke-static {v0}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$700(Lcom/cisco/umbrella/tnd/TNDHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Backing off"

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler$2;->this$0:Lcom/cisco/umbrella/tnd/TNDHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$800(Lcom/cisco/umbrella/tnd/TNDHandler;ZZ)V

    goto :goto_0

    .line 165
    :cond_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Continuing with Umbrella protection"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler$2;->this$0:Lcom/cisco/umbrella/tnd/TNDHandler;

    invoke-static {v0}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$900(Lcom/cisco/umbrella/tnd/TNDHandler;)V

    .line 168
    :goto_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Initialize TND is complete."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

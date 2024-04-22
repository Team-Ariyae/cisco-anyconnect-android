.class Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "RuntimeNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;->this$0:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$1;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;-><init>(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;)V

    return-void
.end method

.method static synthetic access$500(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;->hasRequiredCapabilityChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;Landroid/net/NetworkCapabilities;)Z
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;->isNetworkMetered(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method private getNetworkType(Landroid/net/NetworkCapabilities;)I
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    .line 100
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 102
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private hasRequiredCapabilityChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .locals 1

    const/16 v0, 0xb

    .line 120
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isNetworkMetered(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0xb

    .line 131
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4

    .line 140
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 142
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    invoke-static {}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAvailable : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;->this$0:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;

    invoke-static {v3}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->access$200(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/cisco/anyconnect/acruntime/handler/ACRuntimeAsyncHandler;->getInstance()Lcom/cisco/anyconnect/acruntime/handler/ACRuntimeAsyncHandler;

    move-result-object p1

    new-instance v0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback$1;-><init>(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;)V

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/acruntime/handler/ACRuntimeAsyncHandler;->post(Ljava/lang/Runnable;)V

    .line 153
    iget-object p1, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;->this$0:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;

    invoke-static {p1}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->access$300(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/acruntime/network/INetworkChangeListener;

    .line 154
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;->NETIFNT_INTERFACE_UP:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/acruntime/network/INetworkChangeListener;->onInterfaceStateChange(Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBlockedStatusChanged(Landroid/net/Network;Z)V
    .locals 4

    .line 244
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onBlockedStatusChanged(Landroid/net/Network;Z)V

    .line 245
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    invoke-static {}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onBlockedStatusChanged : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " blocked : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 6

    .line 192
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 194
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    invoke-static {}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "upstream bandwidth : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " downstream bandwidth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;->this$0:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;

    invoke-static {v0}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->access$200(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 198
    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;->getNetworkType(Landroid/net/NetworkCapabilities;)I

    move-result v1

    .line 200
    sget-object v2, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    invoke-static {}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onCapabilitiesChanged : Network : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object v2, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    invoke-static {}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onCapabilitiesChanged : Capability : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 204
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;->this$0:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;

    invoke-static {v0}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->access$400(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkCapabilities;

    .line 212
    iget-object v1, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;->this$0:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;

    invoke-static {v1}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->access$400(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-static {}, Lcom/cisco/anyconnect/acruntime/handler/ACRuntimeAsyncHandler;->getInstance()Lcom/cisco/anyconnect/acruntime/handler/ACRuntimeAsyncHandler;

    move-result-object p1

    new-instance v1, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback$3;

    invoke-direct {v1, p0, v0, p2, p2}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback$3;-><init>(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)V

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/acruntime/handler/ACRuntimeAsyncHandler;->post(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 3

    .line 238
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 239
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    invoke-static {}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLinkPropertiesChanged : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 3

    .line 160
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    .line 161
    sget-object p2, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    invoke-static {}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLosing : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;->this$0:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;

    invoke-static {v2}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->access$200(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4

    .line 167
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 168
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    invoke-static {}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onLost : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;->this$0:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;

    invoke-static {v0}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->access$400(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkCapabilities;

    .line 170
    invoke-static {}, Lcom/cisco/anyconnect/acruntime/handler/ACRuntimeAsyncHandler;->getInstance()Lcom/cisco/anyconnect/acruntime/handler/ACRuntimeAsyncHandler;

    move-result-object p1

    new-instance v0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback$2;-><init>(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;)V

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/acruntime/handler/ACRuntimeAsyncHandler;->post(Ljava/lang/Runnable;)V

    .line 179
    iget-object p1, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;->this$0:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;

    invoke-static {p1}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->access$300(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/acruntime/network/INetworkChangeListener;

    .line 180
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;->NETIFNT_INTERFACE_DOWN:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/acruntime/network/INetworkChangeListener;->onInterfaceStateChange(Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUnavailable()V
    .locals 3

    .line 186
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 187
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    invoke-static {}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onUnavailable"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback$3;
.super Ljava/lang/Object;
.source "RuntimeNetworkMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;

.field final synthetic val$cachedNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field final synthetic val$networkCapabilities:Landroid/net/NetworkCapabilities;

.field final synthetic val$newNetworkCapabilities:Landroid/net/NetworkCapabilities;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback$3;->this$1:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;

    iput-object p2, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback$3;->val$cachedNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iput-object p3, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback$3;->val$newNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iput-object p4, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback$3;->val$networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 218
    iget-object v0, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback$3;->val$cachedNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 219
    iget-object v2, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback$3;->this$1:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;

    iget-object v3, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback$3;->val$newNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v2, v0, v3}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;->access$500(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    xor-int/2addr v1, v0

    .line 220
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    invoke-static {}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hasRequiredCapabilityChanged : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_2

    .line 223
    new-instance v0, Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;

    invoke-direct {v0}, Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;-><init>()V

    .line 224
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;->NETWORK_STATE_CHANGE_EVENT:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;->setNetworkEventType(Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;)V

    .line 225
    iget-object v1, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback$3;->this$1:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;

    iget-object v2, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback$3;->val$networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;->access$600(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;->METERED:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;->setNetEnvState(I)V

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback$3;->this$1:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;

    iget-object v1, v1, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;->this$0:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;

    invoke-static {v1}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->access$300(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/acruntime/network/INetworkChangeListener;

    .line 229
    invoke-interface {v2, v0}, Lcom/cisco/anyconnect/acruntime/network/INetworkChangeListener;->onNetworkStateChange(Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;)V

    goto :goto_0

    :cond_2
    return-void
.end method

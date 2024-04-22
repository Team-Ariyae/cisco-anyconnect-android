.class Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$1;
.super Ljava/lang/Object;
.source "PublicNetworkMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$1;->this$0:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 49
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$1;->this$0:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->-$$Nest$fgetmConnMgr(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;-><init>(Landroid/net/ConnectivityManager;)V

    .line 50
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->VPN_NETWORK_ENV:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    const-string v2, "ddx reportingNetworkEvent"

    invoke-static {p0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->verbose(Ljava/lang/Object;Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Ljava/lang/String;)V

    .line 51
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->VPN_NETWORK_ENV:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ddx last "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$1;->this$0:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->-$$Nest$fgetmLastNetworkEnv(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->verbose(Ljava/lang/Object;Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Ljava/lang/String;)V

    .line 52
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->VPN_NETWORK_ENV:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ddx pending "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->verbose(Ljava/lang/Object;Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$1;->this$0:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->-$$Nest$fgetmLastNetworkEnv(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->getTransition(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;)Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;

    move-result-object v1

    .line 54
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->VPN_NETWORK_ENV:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ddx transition "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->verbose(Ljava/lang/Object;Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$1;->this$0:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;

    invoke-static {v2, v0}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->-$$Nest$fputmLastNetworkEnv(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;)V

    if-eqz v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$1;->this$0:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$Callback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$Callback;->onNetworkUpdate(Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;)V

    :cond_0
    return-void
.end method

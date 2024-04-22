.class Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PublicNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->start()V
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

    .line 74
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 77
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->VPN_NETWORK_ENV:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ddxnetwork avail "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->verbose(Ljava/lang/Object;Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->-$$Nest$fgetmReportNetworkEvent(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->-$$Nest$fgetmReportNetworkEvent(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->-$$Nest$fgetmDebounceMs(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 84
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->VPN_NETWORK_ENV:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ddxnetwork lost"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->verbose(Ljava/lang/Object;Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->-$$Nest$fgetmReportNetworkEvent(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->-$$Nest$fgetmReportNetworkEvent(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->-$$Nest$fgetmDebounceMs(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onUnavailable()V
    .locals 0

    return-void
.end method

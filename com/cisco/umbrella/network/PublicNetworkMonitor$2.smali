.class Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PublicNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/umbrella/network/PublicNetworkMonitor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 5

    .line 84
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connected to network "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-static {v0, p1}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$302(Lcom/cisco/umbrella/network/PublicNetworkMonitor;Landroid/net/Network;)Landroid/net/Network;

    .line 86
    iget-object p1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-static {p1}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$300(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->bindProcessToNetwork(Landroid/net/Network;)V

    .line 87
    iget-object p1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$102(Lcom/cisco/umbrella/network/PublicNetworkMonitor;Z)Z

    .line 88
    iget-object p1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-static {p1}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$500(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-static {v0}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$400(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    iget-object p1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-static {p1}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$500(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-static {v0}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$400(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-static {v1}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$600(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 4

    .line 109
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 110
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DNS Servers from Link properties "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-static {p1}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$500(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-static {p2}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$400(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object p1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-static {p1}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$500(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-static {p2}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$400(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)Ljava/lang/Runnable;

    move-result-object p2

    iget-object v0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-static {v0}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$600(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 5

    .line 94
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Lost connection to network "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$102(Lcom/cisco/umbrella/network/PublicNetworkMonitor;Z)Z

    .line 96
    iget-object p1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$302(Lcom/cisco/umbrella/network/PublicNetworkMonitor;Landroid/net/Network;)Landroid/net/Network;

    .line 97
    iget-object p1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-static {p1}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$500(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-static {v0}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$400(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    iget-object p1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-static {p1}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$500(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-static {v0}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$400(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-static {v1}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$600(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onUnavailable()V
    .locals 0

    return-void
.end method

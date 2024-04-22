.class Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ProcessNetworkBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder$2;->this$0:Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder$2;->this$0:Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->-$$Nest$fgetmIsKnoxVPNActive(Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder$2;->this$0:Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;

    const-string v0, "ignoring network event for Knox VPN"

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder$2;->this$0:Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->-$$Nest$fgetmConnMgr(Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder$2;->this$0:Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->-$$Nest$fgetmConnMgr(Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bindProcessToNetwork failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 79
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder$2;->this$0:Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bound to network: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

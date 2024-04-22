.class Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder$1;
.super Landroid/content/BroadcastReceiver;
.source "ProcessNetworkBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;
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

    .line 30
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder$1;->this$0:Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 33
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_2

    const-string p1, "com.cisco.anyconnect.vpn.knox.KNOX_CONNECTION_STARTED"

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Knox VPN started"

    .line 35
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder$1;->this$0:Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->-$$Nest$fputmIsKnoxVPNActive(Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;Z)V

    .line 37
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder$1;->this$0:Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->-$$Nest$fgetmConnMgr(Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;)Landroid/net/ConnectivityManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    goto :goto_0

    :cond_0
    const-string p1, "com.cisco.anyconnect.vpn.knox.KNOX_CONNECTION_STOPPED"

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "KNOX VPN stopped"

    .line 39
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder$1;->this$0:Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->-$$Nest$fputmIsKnoxVPNActive(Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;Z)V

    goto :goto_0

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown intent: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

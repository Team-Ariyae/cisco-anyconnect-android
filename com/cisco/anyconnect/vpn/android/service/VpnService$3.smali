.class Lcom/cisco/anyconnect/vpn/android/service/VpnService$3;
.super Landroid/content/BroadcastReceiver;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 280
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.cisco.anyconnect.vpn.android.PER_APP_APPS_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 282
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const-string v0, "com.cisco.anyconnect.vpn.android.PER_APP_APPS_ALLOWED_KEY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fputmTunneledApps(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/util/List;)V

    .line 283
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const-string v0, "com.cisco.anyconnect.vpn.android.PER_APP_APPS_BLOCKED_KEY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fputmBlockedApps(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/util/List;)V

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.cisco.anyconnect.vpn.android.EULA_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 288
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmConnectOnEulaAccept(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "eula_accept"

    const/4 v0, 0x0

    .line 293
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 297
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mconnectToActive(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Z)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 300
    :cond_2
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fputmConnectOnEulaAccept(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Z)V

    goto :goto_0

    .line 302
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 304
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->applyRestrictions()V

    goto :goto_0

    .line 308
    :cond_4
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/service/VpnService$3$1;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$3$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService$3;)V

    .line 320
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/Handler;

    move-result-object p2

    const-wide/16 v0, 0x5dc

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

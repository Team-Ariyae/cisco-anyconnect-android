.class Lcom/cisco/anyconnect/vpn/android/service/WidgetBroadcaster;
.super Landroid/content/BroadcastReceiver;
.source "WidgetBroadcaster.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 33
    const-class p2, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 34
    new-instance p2, Landroid/content/ComponentName;

    const-class v1, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;

    invoke-direct {p2, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    .line 39
    invoke-static {p1}, Lcom/cisco/android/nchs/permissions/Prerequisites;->isBackgroundExecutionLimited(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.cisco.anyconnect.vpn.android.UPDATE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.cisco.anyconnect.vpn.android.UPDATE_ACTIVE_CONNECTION"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.cisco.anyconnect.vpn.android.UPDATE_STATS"

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.cisco.anyconnect.vpn.android.UPDATE_CONNECT_IN_PROGRESS"

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.cisco.anyconnect.vpn.android.UPDATE_DISCONNECT_IN_PROGRESS"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.cisco.anyconnect.vpn.android.ACTION_APP_INSTALL_COMPLETE"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.cisco.anyconnect.vpn.android.UPDATE_WIDGET_CONFIG_CHANGED"

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p1, "registered WidgetBroadcaster"

    .line 50
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-static {p1}, Lcom/cisco/android/nchs/permissions/Prerequisites;->isBackgroundExecutionLimited(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

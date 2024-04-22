.class public Lcom/cisco/anyconnect/vpn/android/ui/helpers/AlwaysOnRetryConnectReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlwaysOnRetryConnectReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private retryConnect(Landroid/content/Context;I)V
    .locals 6

    const/4 v0, 0x5

    if-ge p2, v0, :cond_0

    .line 73
    new-instance v1, Ljava/lang/Double;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    goto :goto_0

    :cond_0
    const/16 p2, 0x80

    .line 75
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.ACTION_CONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    const-class v1, Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "connect_delay"

    .line 77
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    invoke-static {p1}, Lcom/cisco/android/nchs/permissions/Prerequisites;->isBackgroundExecutionLimited(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "Starting VpnService as foreground service"

    .line 81
    invoke-static {p0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p2, "Starting VpnService as ordinary service"

    .line 84
    invoke-static {p0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_2

    const-string p1, "Failed to start VpnService to retry connect"

    .line 89
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 40
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-direct {v0, p1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->isAlwaysOnEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "com.cisco.anyconnect.vpn.android.INITIATE_VPN_STATE_CHANGED_ACTION"

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string v1, "new_state"

    .line 47
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 48
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;

    move-result-object p2

    .line 50
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;->Failed:Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;

    if-eq v1, p2, :cond_1

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;->Cancelled:Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;

    if-ne v1, p2, :cond_4

    :cond_1
    const-string p2, "Last connection failed"

    .line 51
    invoke-static {p0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "always_on_retry_connect_count"

    .line 52
    invoke-virtual {v0, p2, v2}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->getInteger(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->updateInteger(Ljava/lang/String;Ljava/lang/Integer;)Z

    .line 55
    invoke-direct {p0, p1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/AlwaysOnRetryConnectReceiver;->retryConnect(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    const-string v1, "com.cisco.anyconnect.vpn.android.TUNNEL_STATE_CHANGED_ACTION"

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->getInitateConnectState()Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;

    move-result-object v0

    const-string v1, "tunnel_state_new"

    const/16 v3, 0x9

    .line 61
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 63
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;->Connected:Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;

    if-ne v1, v0, :cond_4

    const/4 v0, 0x4

    if-ne v0, p2, :cond_4

    const-string p2, "Tunnel disconnected"

    .line 64
    invoke-static {p0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/AlwaysOnRetryConnectReceiver;->retryConnect(Landroid/content/Context;I)V

    goto :goto_0

    .line 68
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unexpected intent: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

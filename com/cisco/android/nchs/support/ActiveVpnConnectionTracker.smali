.class public Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;
.super Ljava/lang/Object;
.source "ActiveVpnConnectionTracker.java"


# instance fields
.field private mActiveConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

.field private final mContext:Landroid/content/Context;

.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fputmActiveConnection(Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;->mActiveConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker$1;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker$1;-><init>(Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 21
    iput-object p1, p0, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;->mContext:Landroid/content/Context;

    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.cisco.anyconnect.vpn.android.UPDATE_ACTIVE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getActiveConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;->mActiveConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

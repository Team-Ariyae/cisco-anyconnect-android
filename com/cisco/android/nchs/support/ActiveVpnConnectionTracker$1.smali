.class Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "ActiveVpnConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker$1;->this$0:Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "com.cisco.anyconnect.vpn.android.UPDATE_ACTIVE_CONNECTION"

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    :try_start_0
    iget-object p1, p0, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker$1;->this$0:Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;

    const-string v0, "ActiveConnection"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-static {p1, p2}, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;->-$$Nest$fputmActiveConnection(Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to retrieve active connection"

    .line 50
    invoke-static {p0, p2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

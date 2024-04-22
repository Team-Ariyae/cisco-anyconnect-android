.class Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$4;
.super Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener$Stub;
.source "VpnFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ConnectionUpdateCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "VpnFragment"

    const-string v1, "ConnectionUpdateCB"

    .line 184
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmParentActivity(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$4$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$4;Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$ConnectionUpdateCB$0$com-cisco-anyconnect-vpn-android-ui-VpnFragment$4(Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V
    .locals 3

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fputmConnList(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V

    .line 188
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmConnList(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetActive()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mpopulateActiveConnection(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mupdateToggleVisualState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 191
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnFragment"

    const-string/jumbo v2, "unable to get active connection"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

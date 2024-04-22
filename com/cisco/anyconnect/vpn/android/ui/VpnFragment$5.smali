.class Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;
.super Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;
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

    .line 197
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ConnectInProgressCB(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmParentActivity(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5$$ExternalSyntheticLambda1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public NoticeCB(Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mdisplayErrorNotice(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;)V

    return-void
.end method

.method public StateCB(Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmParentActivity(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$ConnectInProgressCB$1$com-cisco-anyconnect-vpn-android-ui-VpnFragment$5(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V
    .locals 4

    const-string v0, "VpnFragment"

    const-string v1, "ConnectInProgressCB"

    .line 242
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fputmConnectProgressState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V

    .line 244
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mupdateToggleVisualState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    .line 245
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$misMdmControlConn(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fputmCanExit(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Z)V

    .line 246
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mupdateActiveConnectionState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    .line 248
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$12;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$ConnectProgressState:[I

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v3, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    goto :goto_2

    .line 255
    :cond_2
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mtryDismissProgressIndicator(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    goto :goto_2

    .line 252
    :cond_3
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mshowProgressIndicator(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    :goto_2
    return-void
.end method

.method synthetic lambda$StateCB$0$com-cisco-anyconnect-vpn-android-ui-VpnFragment$5(Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V
    .locals 3

    const-string v0, "StateCB"

    const-string v1, "VpnFragment"

    .line 204
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fputmState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V

    .line 206
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mupdateActiveConnectionState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    .line 208
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 209
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fputmPendingPromptOp(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Ljava/lang/Runnable;)V

    .line 211
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmShutdownAfterDisconnect(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 212
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "disconnect complete - exiting at user request"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->exitApplication()V

    return-void

    .line 218
    :cond_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->SSOPOLLING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 219
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fputmConnectProgressState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V

    .line 220
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mtryDismissProgressIndicator(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    .line 223
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mupdateToggleVisualState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    .line 224
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$misMdmControlConn(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fputmCanExit(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Z)V

    .line 226
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v0

    if-eq p1, v0, :cond_4

    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 230
    :cond_4
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmParentActivity(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mChangeListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;->ApplyChanges()V

    .line 234
    :cond_5
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmVpnCard(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/google/android/material/card/MaterialCardView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/material/card/MaterialCardView;->setClickable(Z)V

    .line 235
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmVpnCard(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/google/android/material/card/MaterialCardView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/material/card/MaterialCardView;->setEnabled(Z)V

    .line 236
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmVpnCard(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/google/android/material/card/MaterialCardView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/material/card/MaterialCardView;->setFocusable(Z)V

    return-void
.end method

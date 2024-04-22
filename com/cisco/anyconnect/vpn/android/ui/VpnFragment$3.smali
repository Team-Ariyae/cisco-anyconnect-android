.class Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3;
.super Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;
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

    .line 153
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ClientCertificateCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public ImportPKCS12CompleteCB([BLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public SCEPEnrollExitCB()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmParentActivity(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3$$ExternalSyntheticLambda1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SCEPEnrollStartCB()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmParentActivity(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$SCEPEnrollExitCB$1$com-cisco-anyconnect-vpn-android-ui-VpnFragment$3()V
    .locals 2

    const-string v0, "VpnFragment"

    const-string v1, "SCEPEnrollExitCB"

    .line 174
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fputmIsScepEnrollInProgress(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Z)V

    .line 176
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mtryDismissProgressIndicator(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    return-void
.end method

.method synthetic lambda$SCEPEnrollStartCB$0$com-cisco-anyconnect-vpn-android-ui-VpnFragment$3()V
    .locals 2

    const-string v0, "VpnFragment"

    const-string v1, "SCEPEnrollStartCB"

    .line 166
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mshowProgressIndicator(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    .line 168
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fputmIsScepEnrollInProgress(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Z)V

    return-void
.end method

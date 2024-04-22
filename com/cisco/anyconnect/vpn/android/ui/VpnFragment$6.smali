.class Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;
.super Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub;
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

    .line 262
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public BannerCB(Ljava/lang/String;)V
    .locals 1

    .line 264
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;Ljava/lang/String;)V

    .line 271
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mhandlePrompt(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Ljava/lang/Runnable;)V

    return-void
.end method

.method public CancelUserPromptCB()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public CertBannerCB(Ljava/lang/String;[B[Ljava/lang/String;Z[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    new-instance p5, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6$1;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;Ljava/lang/String;[B[Ljava/lang/String;Z)V

    .line 306
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1, p5}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mhandlePrompt(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Ljava/lang/Runnable;)V

    return-void
.end method

.method public GetStartIntent()Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.PRIMARY_ACTIVITY_SHOW_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x14000000

    .line 311
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public UserPromptCB(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6$$ExternalSyntheticLambda1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    .line 286
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mhandlePrompt(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$BannerCB$0$com-cisco-anyconnect-vpn-android-ui-VpnFragment$6(Ljava/lang/String;)V
    .locals 3

    const-string v0, "VpnFragment"

    const-string v1, "BannerCB"

    .line 265
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mstartBannerActivity(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Ljava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;[Ljava/lang/String;Z)V

    .line 268
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mcancelProgressDlgTimer(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    return-void
.end method

.method synthetic lambda$UserPromptCB$1$com-cisco-anyconnect-vpn-android-ui-VpnFragment$6(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    .locals 3

    const-string v0, "VpnFragment"

    const-string v1, "UserPromptCB Runnable"

    .line 276
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.AUTHENTICATION_SHOW_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.cisco.anyconnect.vpn.android.AUTHENTICATION_SHOW_KEY_USER_PROMPTS"

    .line 279
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 280
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 281
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->startActivity(Landroid/content/Intent;)V

    .line 283
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mcancelProgressDlgTimer(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    return-void
.end method

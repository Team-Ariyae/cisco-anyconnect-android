.class Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;
.super Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub;
.source "CredentialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public BannerCB(Ljava/lang/String;)V
    .locals 2

    .line 112
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "CredentialActivity"

    const-string v1, "encountered unexpected BannerCB"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public CancelUserPromptCB()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$3;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public CertBannerCB(Ljava/lang/String;[B[Ljava/lang/String;Z[I)V
    .locals 7

    .line 121
    iget-object p5, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    new-instance v6, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;Ljava/lang/String;[BZ[Ljava/lang/String;)V

    invoke-virtual {p5, v6}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GetStartIntent()Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public UserPromptCB(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$2;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

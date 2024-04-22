.class Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$1;
.super Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub;
.source "ClientCertImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public BannerCB(Ljava/lang/String;)V
    .locals 2

    .line 71
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "ClientCertImporter"

    const-string v1, "encountered unexpected BannerCB"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

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
    .locals 0

    .line 76
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "ClientCertImporter"

    const-string p3, "encountered unexpected CertBannerCB"

    invoke-static {p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

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

.method public StartActivity(Landroid/content/Intent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "ClientCertImporter"

    const-string v1, "encountered unexpected StartActivity"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public UserPromptCB(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "ClientCertImporter"

    const-string v1, "UserPromptCB"

    .line 81
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->-$$Nest$mcancelImportTimer(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)V

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.AUTHENTICATION_SHOW_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.cisco.anyconnect.vpn.android.AUTHENTICATION_SHOW_KEY_USER_PROMPTS"

    .line 85
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 87
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->LaunchActivityOrService(Landroid/content/Intent;Z)V

    return-void
.end method

.method public WebViewCB(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

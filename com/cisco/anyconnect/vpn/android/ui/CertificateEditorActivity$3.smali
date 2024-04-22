.class Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$3;
.super Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
.source "CertificateEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;Landroid/content/Context;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public OnServiceConnected(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 2

    const-string v0, "onServiceConnected()"

    const-string v1, "CertificateEditorActivity"

    .line 224
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->-$$Nest$fgetmCertListener(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z

    .line 230
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetClientCertificates()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 234
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "exception occurred while registering callbacks"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    const v0, 0x7f11013c

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public OnServiceWillDisconnect(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;ZLjava/lang/String;)V
    .locals 2

    const-string v0, "OnServiceDisconnected"

    const-string v1, "CertificateEditorActivity"

    .line 243
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->-$$Nest$fgetmCertListener(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "exception occurred while unregistering callbacks"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 256
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 258
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p1, v1, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-static {p1, p3}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->finish()V

    :cond_1
    :goto_1
    return-void
.end method

.class Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$3;
.super Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
.source "CertificateManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;Landroid/content/Context;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public OnServiceConnected(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 2

    const-string v0, "CertificateManagementActivity"

    const-string v1, "ServiceConnectionManager.OnServiceConnected"

    .line 214
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->-$$Nest$fputmVpnService(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V

    .line 217
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->-$$Nest$mupdateCertLists(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;)V

    return-void
.end method

.method public OnServiceWillDisconnect(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;ZLjava/lang/String;)V
    .locals 2

    const-string p2, "OnServiceWillDisconnect"

    const-string p3, "CertificateManagementActivity"

    .line 222
    invoke-static {p3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :try_start_0
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->-$$Nest$fgetmCertificateListeners(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    .line 225
    invoke-interface {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "UnregisterCertificateListener failed"

    invoke-static {v0, p3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "RemoteException occurred while unregistering callbacks"

    invoke-static {p1, p3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

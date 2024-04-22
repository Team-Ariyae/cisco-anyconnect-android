.class Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$1;
.super Landroid/os/Handler;
.source "ConnectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const-string v0, "ConnectionUtils"

    const/16 v1, 0x37

    .line 68
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne v1, p1, :cond_5

    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->-$$Nest$fgetmRequestedCerts(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 70
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->-$$Nest$fputmRequestedCerts(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;Z)V

    const p1, 0x7f1100f3

    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->-$$Nest$fgetmCertList(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;->GetClientCerts()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    .line 89
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    invoke-static {v5}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->-$$Nest$fgetmCertCommonName(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->getCommonName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->-$$Nest$fgetmNewConnection(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v2

    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    invoke-static {v5}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->-$$Nest$fgetmCertCommonName(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetCertCommonName(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->-$$Nest$fgetmNewConnection(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v2

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->GetHash()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetCertHash([B)V

    const/4 v2, 0x1

    goto :goto_1

    .line 101
    :cond_1
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Certificate found with matching common name, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    invoke-static {v5}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->-$$Nest$fgetmCertCommonName(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", but it is not currently valid. Skipping this certificate."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    .line 111
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "A certificate could not be found with common name: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    invoke-static {v5}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->-$$Nest$fgetmCertCommonName(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Creating new VPN connection entry, but with cert auth mode set to Automatic."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->-$$Nest$fgetmNewConnection(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v2

    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Automatic:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-virtual {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetCertAuthMode(Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;)V

    .line 114
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->-$$Nest$fgetmContext(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110189

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->-$$Nest$fgetmNewConnection(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->-$$Nest$msaveNewConnection(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 120
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 121
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V

    return-void

    .line 126
    :cond_4
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    move-result-object p1

    const v0, 0x7f1100f8

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, v4, v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V

    return-void

    .line 81
    :catch_0
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 82
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void
.end method

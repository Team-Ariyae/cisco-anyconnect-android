.class Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;
.super Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;
.source "URIHandlerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)V
    .locals 0

    .line 1614
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ClientCertificateCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1617
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fputmCertList(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;)V

    .line 1619
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fgetisCreatePending(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1620
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fputisCreatePending(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;Z)V

    .line 1623
    :try_start_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fgetmCertList(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;

    move-result-object p1

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;->GetClientCerts()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1633
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    .line 1634
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->GetHash()[B

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fgetmKeychainImportedCertHash(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1641
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fgetmParameters(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Ljava/util/HashMap;

    move-result-object p1

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->CERT_COMMON_NAME:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    .line 1642
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1643
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->getCommonName()Ljava/lang/String;

    move-result-object v0

    .line 1641
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fgetmParameters(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Ljava/util/HashMap;

    move-result-object p1

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->USECERT:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;)V

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1625
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "URIHandlerActivity"

    const-string v2, "error in getting GetClientCerts"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    const-string v1, "Failed to perform keychain import"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$mexitActivity(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;ZLjava/lang/String;)V

    .line 1628
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fputisCreatePending(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;Z)V

    .line 1629
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$mexitActivity(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;ZLjava/lang/String;)V

    return-void

    .line 1671
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fgetmCertificateListener(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->UnregisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public SCEPEnrollStartCB()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.class Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;
.super Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService$Stub;
.source "KnoxInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)V
    .locals 0

    .line 841
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createConnection(Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "KnoxInteractionService"

    const-string v1, "createConnection VpnConnection not valid: "

    const-string v2, "createConnection VpnConnection already exists"

    const-string v3, "createConnection VpnConnection saved: name="

    .line 844
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->getCallingUid()I

    move-result v5

    invoke-static {v4, v5}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$menforcePermissions(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;I)V

    const/4 v4, 0x1

    .line 848
    :try_start_0
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v5}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mbindServices(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 849
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "bind services failed"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 853
    :cond_0
    new-instance v5, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;

    invoke-direct {v5, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;-><init>(Ljava/lang/String;)V

    .line 854
    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->GetHostEntry()Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    move-result-object v6

    .line 856
    new-instance v7, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-direct {v7, v6}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;-><init>(Lcom/cisco/anyconnect/vpn/jni/HostEntry;)V

    .line 857
    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->isAppTunnel()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Knox_AppTunnel:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Knox_System:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    :goto_0
    invoke-virtual {v7, v6}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetType(Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;)V

    .line 858
    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->IsKnoxMetaEnabled()Z

    move-result v5

    invoke-virtual {v7, v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->setKnoxMetaEnabled(Z)V

    .line 859
    invoke-virtual {v7, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetKnoxJsonProfile(Ljava/lang/String;)V

    .line 861
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v5, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mimportConnectionResources(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)V

    .line 863
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetVpnService(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object p1

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object p1

    .line 864
    invoke-interface {p1, v7}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->Save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I

    move-result p1

    .line 865
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->None:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v5

    if-eq p1, v5, :cond_2

    sget-object v5, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->DuplicateName:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    .line 866
    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v5

    if-eq p1, v5, :cond_2

    .line 868
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 871
    :cond_2
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->DuplicateName:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 872
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 875
    :cond_3
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 887
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "failed to create vpn profile"

    invoke-static {v1, v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v4

    :catch_1
    move-exception p1

    .line 882
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Failed to parse profile"

    invoke-static {v1, v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v4
.end method

.method public getAllConnections()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 927
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$menforcePermissions(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;I)V

    .line 929
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 930
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetKnoxConnections(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Ljava/util/List;

    move-result-object v1

    .line 931
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 933
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetKnoxJsonProfile()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 935
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHostEntry()Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile;-><init>(Lcom/cisco/anyconnect/vpn/jni/HostEntry;Z)V

    .line 936
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v2}, Lcom/cisco/android/nchs/permissions/Prerequisites;->getKnoxVer(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile;->GetJsonProfile(I)Ljava/lang/String;

    move-result-object v3

    .line 938
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getCACertificate(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CertificateInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1458
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$menforcePermissions(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;I)V

    .line 1460
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCACertificate profileName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxInteractionService"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mbindServices(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1463
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "bindServices failed"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1467
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetNchs(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetNCSS()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v0

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v2, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetCertGroupId(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "CERTIFICATE_MDM_PROVISIONED_TAG"

    const/4 v3, 0x0

    invoke-interface {v0, v3, p1, v2}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->GetACCerts(ZLjava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/CertificateChain;

    move-result-object p1

    .line 1468
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/CertificateChain;->getDerEncodedCerts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 1473
    :cond_1
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/CertificateChain;->getDerEncodedCerts()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lcom/cisco/android/nchs/support/CertificateManager;->derToX509Certificate([B)Ljava/security/cert/X509Certificate;

    move-result-object p1

    .line 1474
    new-instance v0, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    return-object v0
.end method

.method public getConnection(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 945
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$menforcePermissions(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;I)V

    .line 947
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mbindServices(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "KnoxInteractionService"

    if-nez v0, :cond_0

    .line 948
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "bind services failed"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetVpnService(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v0

    .line 953
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v3, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetKnoxConnectionName(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 955
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHostEntry()Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile;-><init>(Lcom/cisco/anyconnect/vpn/jni/HostEntry;Z)V

    .line 956
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->getKnoxVer(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile;->GetJsonProfile(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 959
    :cond_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getConnection failed. No connection for Knox profile="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getErrorString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1182
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->getCallingUid()I

    move-result v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$menforcePermissions(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;I)V

    .line 1184
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetLastError(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getState(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1125
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$menforcePermissions(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;I)V

    .line 1127
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getState: Knox profile="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxInteractionService"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mbindServices(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "bind services failed"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    sget-object p1, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;->KNOX_UNKNOWN:Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;

    invoke-virtual {p1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;->ordinal()I

    move-result p1

    return p1

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetKnoxConnectionName(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1138
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetVpnService(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v1

    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v1

    if-eqz p1, :cond_9

    .line 1139
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetActiveKnoxProfile(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 1145
    :cond_1
    invoke-interface {v1, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1146
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "state=deleted"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    sget-object p1, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;->KNOX_DELETED:Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;

    invoke-virtual {p1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;->ordinal()I

    move-result p1

    return p1

    .line 1150
    :cond_2
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetVpnState(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object p1

    .line 1151
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetConnectProgressState(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    move-result-object v0

    .line 1154
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-eq v1, p1, :cond_8

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->RECONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-eq v1, p1, :cond_8

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->PAUSING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-eq v1, p1, :cond_8

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->OPENPAUSED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-eq v1, p1, :cond_8

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Connecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    if-ne v1, v0, :cond_3

    goto :goto_1

    .line 1162
    :cond_3
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-eq v1, p1, :cond_7

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Disconnecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    if-ne v1, v0, :cond_4

    goto :goto_0

    .line 1166
    :cond_4
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-ne v0, p1, :cond_5

    .line 1168
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "state=idle"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    sget-object p1, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;->KNOX_IDLE:Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;

    invoke-virtual {p1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;->ordinal()I

    move-result p1

    return p1

    .line 1171
    :cond_5
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-ne v0, p1, :cond_6

    .line 1172
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "state=connected"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    sget-object p1, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;->KNOX_CONNECTED:Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;

    invoke-virtual {p1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;->ordinal()I

    move-result p1

    return p1

    .line 1176
    :cond_6
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "state fallback to idle"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    sget-object p1, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;->KNOX_IDLE:Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;

    invoke-virtual {p1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;->ordinal()I

    move-result p1

    return p1

    .line 1163
    :cond_7
    :goto_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "state=disconnecting"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    sget-object p1, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;->KNOX_DISCONNECTING:Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;

    invoke-virtual {p1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;->ordinal()I

    move-result p1

    return p1

    .line 1159
    :cond_8
    :goto_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "state=connecting"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    sget-object p1, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;->KNOX_CONNECTING:Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;

    invoke-virtual {p1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;->ordinal()I

    move-result p1

    return p1

    .line 1140
    :cond_9
    :goto_2
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "profile not found state=idle"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    sget-object p1, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;->KNOX_IDLE:Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;

    invoke-virtual {p1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/KnoxVpnState;->ordinal()I

    move-result p1

    return p1
.end method

.method public getUserCertificate(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CertificateInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1437
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUserCertificate profileName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxInteractionService"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$menforcePermissions(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;I)V

    .line 1441
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mbindServices(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1442
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "bindServices failed"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1446
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetNchs(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetNCSS()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v0

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v2, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetCertGroupId(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "CERTIFICATE_MDM_PROVISIONED_TAG"

    const/4 v3, 0x1

    invoke-interface {v0, v3, p1, v2}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->GetACCerts(ZLjava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/CertificateChain;

    move-result-object p1

    .line 1447
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/CertificateChain;->getDerEncodedCerts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 1452
    :cond_1
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/CertificateChain;->getDerEncodedCerts()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lcom/cisco/android/nchs/support/CertificateManager;->derToX509Certificate([B)Ljava/security/cert/X509Certificate;

    move-result-object p1

    .line 1453
    new-instance v0, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    return-object v0
.end method

.method public getVpnModeOfOperation(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1266
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$menforcePermissions(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;I)V

    .line 1268
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getVpnMode profileName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxInteractionService"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mbindServices(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1272
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "bindServices failed"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetVpnService(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v0

    .line 1277
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v3, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetKnoxConnectionName(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1280
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setVpnModeOfOperation failed- no matching connection for matching Knox profile="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1284
    :cond_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$10;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$VpnConnection$FipsMode:[I

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetFipsMode()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->ordinal()I

    move-result v3

    aget p1, p1, v3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    .line 1293
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid FipsMode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetFipsMode()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    return v3

    .line 1286
    :cond_4
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetVpnService(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object p1

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object p1

    const-string v0, "Fips"

    const-string v1, "false"

    invoke-interface {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->GetSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    .line 1287
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeConnection(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 894
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$menforcePermissions(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;I)V

    .line 896
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mbindServices(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "KnoxInteractionService"

    if-nez v0, :cond_0

    .line 897
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "bind services failed"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 901
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "removeConnection: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetVpnService(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v0

    .line 905
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v3, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetKnoxConnectionName(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 906
    invoke-interface {v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 908
    invoke-interface {v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->Delete(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 911
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "failed to delete connection: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 916
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetNchs(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetNCSS()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v1, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetCertGroupId(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;

    sget-object v4, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ANYCONNECT:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    invoke-direct {v3, v4}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSCertStore;)V

    const-string v4, "CERTIFICATE_MDM_PROVISIONED_TAG"

    const/4 v5, 0x0

    invoke-interface {v0, v1, v4, v5, v3}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->deleteCertificates(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 919
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "failed to delete certs for group="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v3, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetCertGroupId(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public setAutoRetryOnConnectionError(Ljava/lang/String;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1406
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAutoRetryOnConnectionError "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for profileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxInteractionService"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$menforcePermissions(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;I)V

    .line 1410
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mbindServices(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1412
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "bindServices failed"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1416
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetVpnService(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v0

    .line 1417
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v3, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetKnoxConnectionName(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1420
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "setAutoRetryOnConnectionError failed - no matching connection for matching Knox profile="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1424
    :cond_1
    invoke-virtual {v3, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->setAutoRetryOnFailure(Z)V

    .line 1425
    invoke-interface {v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->Save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I

    move-result p1

    .line 1426
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->None:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result p2

    if-eq p1, p2, :cond_2

    .line 1428
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to update connection "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public setCACertificate(Ljava/lang/String;[B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 994
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$menforcePermissions(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;I)V

    .line 996
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCACertificate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxInteractionService"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mbindServices(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1000
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "bind services failed"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1004
    :cond_0
    new-instance v0, Lcom/cisco/android/nchs/aidl/CertificateChain;

    invoke-direct {v0}, Lcom/cisco/android/nchs/aidl/CertificateChain;-><init>()V

    .line 1005
    invoke-virtual {v0}, Lcom/cisco/android/nchs/aidl/CertificateChain;->getDerEncodedCerts()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetNchs(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object p2

    invoke-interface {p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetNCSS()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object p2

    new-instance v3, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;

    sget-object v4, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ANYCONNECT:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    invoke-direct {v3, v4}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSCertStore;)V

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    .line 1008
    invoke-static {v4, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetCertGroupId(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "CERTIFICATE_MDM_PROVISIONED_TAG"

    .line 1006
    invoke-interface {p2, v3, v0, p1, v4}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->ImportServerCertificateChain(Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;Lcom/cisco/android/nchs/aidl/CertificateChain;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    .line 1011
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p2

    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_CERTIFICATE_ALREADY_EXISTS:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    const/4 v3, 0x1

    if-ne p2, v0, :cond_1

    .line 1013
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "cert already exist"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 1016
    :cond_1
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq p1, p2, :cond_2

    .line 1018
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Unable to import server certificate chain"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    return v3
.end method

.method public setServerCertValidationUserAcceptanceCriteria(Ljava/lang/String;ZLjava/util/List;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1302
    iget-object p4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->getCallingUid()I

    move-result v0

    invoke-static {p4, v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$menforcePermissions(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;I)V

    .line 1306
    iget-object p4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {p4}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetVpnService(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object p4

    const/4 v0, 0x0

    const-string v1, "KnoxInteractionService"

    if-nez p4, :cond_0

    .line 1308
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Failed to get the VPN service"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1313
    :cond_0
    invoke-interface {p4}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v2

    .line 1315
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    .line 1316
    invoke-static {v3, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetKnoxConnectionName(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1318
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "setVpnModeOfOperation failed- no matching connection for matching Knox profile="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1326
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    const-string v6, "true"

    const-string v7, "false"

    const-string v8, "Failed to update connection "

    if-eq v4, v5, :cond_8

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 1393
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid setServerCertValidationUserAcceptanceCriteria option"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 1360
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;->Enable:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    invoke-virtual {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetStrictMode(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;)V

    goto :goto_1

    .line 1362
    :cond_4
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;->Disable:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    invoke-virtual {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetStrictMode(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;)V

    .line 1364
    :goto_1
    invoke-interface {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->Save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I

    move-result v4

    .line 1365
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->None:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    .line 1366
    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v5

    if-eq v4, v5, :cond_5

    .line 1367
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1373
    :cond_5
    invoke-interface {p4}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v4

    invoke-interface {v4, p2}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->SetStrictMode(Z)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1375
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "SetStrictMode failed"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_6
    const-string v4, "Strict_Mode"

    if-eqz p2, :cond_7

    .line 1381
    invoke-interface {p4}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v5

    invoke-interface {v5, v4, v6}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->SetSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto :goto_2

    .line 1382
    :cond_7
    invoke-interface {p4}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v5

    .line 1383
    invoke-interface {v5, v4, v7}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->SetSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    :goto_2
    if-nez v4, :cond_2

    .line 1386
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "SetSetting for strict mode failed"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1329
    :cond_8
    invoke-virtual {v3, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetRevocationEnabled(Z)V

    .line 1330
    invoke-interface {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->Save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I

    move-result v4

    .line 1331
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->None:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    .line 1332
    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v5

    if-eq v4, v5, :cond_9

    .line 1333
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1339
    :cond_9
    invoke-interface {p4}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v4

    invoke-interface {v4, p2}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->SetRevocationEnabled(Z)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1341
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "SetRevocationEnabled failed"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_a
    const-string v4, "Ocsp"

    if-eqz p2, :cond_b

    .line 1347
    invoke-interface {p4}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v5

    invoke-interface {v5, v4, v6}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->SetSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto :goto_3

    .line 1348
    :cond_b
    invoke-interface {p4}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v5

    invoke-interface {v5, v4, v7}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->SetSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    :goto_3
    if-nez v4, :cond_2

    .line 1352
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "SetSetting for certificate revocation failed"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_c
    return p3
.end method

.method public setUserCertificate(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 965
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$menforcePermissions(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;I)V

    .line 967
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setUserCertificate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxInteractionService"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mbindServices(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 970
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "bind services failed"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetNchs(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetNCSS()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v3

    new-instance v4, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;

    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ANYCONNECT:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    invoke-direct {v4, v0}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSCertStore;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    .line 979
    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetCertGroupId(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "CERTIFICATE_MDM_PROVISIONED_TAG"

    move-object v5, p2

    move-object v6, p3

    .line 974
    invoke-interface/range {v3 .. v10}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->ImportPKCS12ClientCertificates(Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;[BLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p2, p1, :cond_1

    .line 984
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "ImportPKCS12ClientCertificates"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setVpnModeOfOperation(Ljava/lang/String;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1190
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$menforcePermissions(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;I)V

    .line 1192
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVpnModeOfOperation profileName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " vpnMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxInteractionService"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mbindServices(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1195
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "bindServices failed"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetVpnService(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v0

    .line 1203
    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v3

    .line 1204
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v4, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetKnoxConnectionName(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1207
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "setVpnModeOfOperation failed- no matching connection for matching Knox profile="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const-string p1, "SetSetting failed"

    const-string v5, "SetFipsMode failed"

    const-string v6, "Fips"

    const-string v7, "Failed to update connection "

    const/4 v8, 0x0

    if-eqz p2, :cond_6

    const/4 v9, 0x1

    if-eq p2, v9, :cond_2

    .line 1259
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unknown Knox VPN Mode: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1215
    :cond_2
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->Enable:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    invoke-virtual {v4, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetFipsMode(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;)V

    .line 1216
    invoke-interface {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->Save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I

    move-result p2

    .line 1217
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->None:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v3

    if-eq p2, v3, :cond_3

    .line 1219
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1223
    :cond_3
    invoke-interface {v0, v9}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->SetFipsMode(Z)Z

    move-result p2

    if-nez p2, :cond_4

    .line 1225
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p1, v2, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1229
    :cond_4
    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object p2

    const-string v0, "true"

    invoke-interface {p2, v6, v0}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->SetSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 1231
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p2, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    return v8

    .line 1237
    :cond_6
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->Disable:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    invoke-virtual {v4, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetFipsMode(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;)V

    .line 1238
    invoke-interface {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->Save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I

    move-result p2

    .line 1239
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->None:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v3

    if-eq p2, v3, :cond_7

    .line 1241
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1245
    :cond_7
    invoke-interface {v0, v8}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->SetFipsMode(Z)Z

    move-result p2

    if-nez p2, :cond_8

    .line 1247
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p1, v2, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1251
    :cond_8
    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object p2

    const-string v0, "false"

    invoke-interface {p2, v6, v0}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->SetSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 1253
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p2, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_9
    return v8
.end method

.method public startConnection(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1027
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$menforcePermissions(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;I)V

    .line 1029
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startConnection: Knox profile="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxInteractionService"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$msetActiveKnoxProfile(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mbindServices(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1038
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "bind services failed"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetVpnService(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v0

    .line 1043
    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v3

    .line 1044
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v4, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetKnoxConnectionName(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1047
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "no connection found"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1051
    :cond_1
    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->getKnoxMetaEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1052
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v4, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$msetKnoxMetaEnabled(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Z)V

    .line 1055
    :cond_2
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$fgetmAutoRetryAttempts(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)I

    move-result v4

    if-nez v4, :cond_3

    .line 1056
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.cisco.anyconnect.vpn.knox.KNOX_CONNECTION_STARTED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1057
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-virtual {v5, v4}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1061
    :cond_3
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$fgetmAutoRetryAttempts(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)I

    move-result v4

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$fgetmAutoRetryAttempts(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)I

    move-result v4

    rem-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_5

    .line 1062
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v4, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetKnoxVpnConnection(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v4

    if-nez v4, :cond_4

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Missing KnoxConnection: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 1069
    :cond_4
    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetKnoxJsonProfile()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1075
    :try_start_0
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v4, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mimportConnectionResources(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v4, "Unexpected exception"

    .line 1077
    invoke-static {p0, v4, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1082
    :cond_5
    :goto_0
    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object p1

    invoke-interface {p1, v3, v1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->Connect(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;I)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    .line 1083
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startConnection: result="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    if-eq v3, p1, :cond_6

    .line 1087
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "connect failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetErrorString(Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :cond_6
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    if-ne v0, p1, :cond_7

    const/4 v1, 0x0

    :cond_7
    return v1
.end method

.method public stopConnection(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1096
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$menforcePermissions(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;I)V

    .line 1097
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mstopAutoRetryConnect(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Z)V

    .line 1099
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stopConnection: Knox profile="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "KnoxInteractionService"

    invoke-static {v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$msetActiveKnoxProfile(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)V

    .line 1106
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {p1, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$msetKnoxMetaEnabled(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Z)V

    .line 1108
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mbindServices(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1109
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "bind services failed"

    invoke-static {p1, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1114
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetVpnService(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object p1

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->Disconnect(I)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 1116
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.knox.KNOX_CONNECTION_STOPPED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1117
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->sendBroadcast(Landroid/content/Intent;)V

    return v1
.end method

.class Lcom/cisco/android/nchs/NetworkComponentHostService$4;
.super Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;
.source "NetworkComponentHostService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/NetworkComponentHostService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/NetworkComponentHostService;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-direct {p0}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;-><init>()V

    return-void
.end method

.method private convertToX509Array(Lcom/cisco/android/nchs/aidl/CertificateChain;)[Ljava/security/cert/X509Certificate;
    .locals 2

    .line 774
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/CertificateChain;->getDerEncodedCerts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 775
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/CertificateChain;->getDerEncodedCerts()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 777
    invoke-static {v1}, Lcom/cisco/android/nchs/support/CertificateManager;->derToX509Certificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 778
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 781
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    .line 782
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmCertMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/CertificateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cisco/android/nchs/support/CertificateManager;->getSortedChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public EnableYubikey(Z)V
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmCertMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/CertificateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cisco/android/nchs/support/CertificateManager;->enableYubikey(Z)V

    return-void
.end method

.method public GetACCerts(ZLjava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/CertificateChain;
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmCertMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/CertificateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/cisco/android/nchs/support/CertificateManager;->getACCerts(ZLjava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/CertificateChain;

    move-result-object p1

    return-object p1
.end method

.method public GetAliasList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 793
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmCertMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/CertificateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cisco/android/nchs/support/CertificateManager;->getAliasListFromID(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public GetDeviceID()Ljava/lang/String;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmDevMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/DeviceInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->GetDeviceID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ImportKeychainAlias(Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 552
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->getStore()Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    move-result-object v0

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ANYCONNECT:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    invoke-virtual {v0, v1}, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->getStore()Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    move-result-object p1

    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ALL:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    sget-object p1, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_OPERATION_SUCCESS:Lcom/cisco/android/nchs/aidl/CertOpCode;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/CertOpCode;->ordinal()I

    move-result p1

    return p1

    .line 556
    :cond_1
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmCertMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/CertificateManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/cisco/android/nchs/support/CertificateManager;->mapCertAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmCertMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/CertificateManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/support/CertificateManager;->importCertFromSystem(Ljava/lang/String;)[B

    .line 558
    sget-object p1, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_OPERATION_SUCCESS:Lcom/cisco/android/nchs/aidl/CertOpCode;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/CertOpCode;->ordinal()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 562
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "NetworkComponentHostService"

    const-string p4, "Exception importing Cert from System alias"

    invoke-static {p2, p3, p4, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 563
    sget-object p1, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/CertOpCode;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/CertOpCode;->ordinal()I

    move-result p1

    return p1
.end method

.method public ImportPKCS12ClientCertificates(Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;[BLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const-string v0, "NetworkComponentHostService"

    .line 513
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->getStore()Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    move-result-object v1

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ANYCONNECT:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    invoke-virtual {v1, v2}, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->getStore()Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    move-result-object v1

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ALL:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    invoke-virtual {v1, v2}, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmCertMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/CertificateManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p6, p7}, Lcom/cisco/android/nchs/support/CertificateManager;->importPkcs12ClientCert([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p7

    if-nez p7, :cond_1

    .line 520
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Failed to import PCKS client certificate"

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    sget-object p1, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/CertOpCode;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/CertOpCode;->ordinal()I

    move-result p1
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 531
    :cond_1
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->getStore()Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    move-result-object p7

    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->SYSTEM:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    invoke-virtual {p7, v0}, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-nez p7, :cond_3

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->getStore()Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    move-result-object p1

    sget-object p7, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ALL:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    invoke-virtual {p1, p7}, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 536
    :cond_2
    sget-object p1, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_OPERATION_SUCCESS:Lcom/cisco/android/nchs/aidl/CertOpCode;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/CertOpCode;->ordinal()I

    move-result p1

    return p1

    .line 533
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmCertMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/CertificateManager;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p6

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/cisco/android/nchs/support/CertificateManager;->importClientCertificatesToSystemStore([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/cisco/android/nchs/aidl/CertOpCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/CertOpCode;->ordinal()I

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 526
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "Exception importing PCKS client certificate"

    invoke-static {p2, v0, p3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 527
    sget-object p1, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/CertOpCode;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/CertOpCode;->ordinal()I

    move-result p1

    return p1
.end method

.method public ImportServerCertificate(Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;Lcom/cisco/android/nchs/aidl/ByteArrayParcel;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "NetworkComponentHostService"

    if-eqz p1, :cond_8

    .line 676
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->getStore()Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p2, :cond_7

    .line 682
    invoke-virtual {p2}, Lcom/cisco/android/nchs/aidl/ByteArrayParcel;->getPayload()[B

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 688
    :cond_1
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->getStore()Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    move-result-object v1

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ANYCONNECT:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    invoke-virtual {v1, v2}, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->getStore()Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    move-result-object v1

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ALL:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    invoke-virtual {v1, v2}, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 690
    :cond_2
    invoke-virtual {p2}, Lcom/cisco/android/nchs/aidl/ByteArrayParcel;->getPayload()[B

    move-result-object v1

    invoke-static {v1}, Lcom/cisco/android/nchs/support/CertificateManager;->derToX509Certificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-nez v1, :cond_3

    .line 693
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "importTrustedCertificate: failed to parse certificate"

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    sget-object p1, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/CertOpCode;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/CertOpCode;->ordinal()I

    move-result p1

    return p1

    .line 698
    :cond_3
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmCertMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/CertificateManager;

    move-result-object v2

    invoke-virtual {v2, v1, p5, p6}, Lcom/cisco/android/nchs/support/CertificateManager;->importTrustedCertificate(Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p6

    .line 699
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v1, p6, :cond_4

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_CERTIFICATE_ALREADY_EXISTS:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v1, p6, :cond_4

    .line 701
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "importTrustedCertificate: failed to import certificate"

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    sget-object p1, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/CertOpCode;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/CertOpCode;->ordinal()I

    move-result p1

    return p1

    .line 706
    :cond_4
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->getStore()Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    move-result-object p6

    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->SYSTEM:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    invoke-virtual {p6, v0}, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_6

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->getStore()Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    move-result-object p1

    sget-object p6, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ALL:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    invoke-virtual {p1, p6}, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 711
    :cond_5
    sget-object p1, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_OPERATION_SUCCESS:Lcom/cisco/android/nchs/aidl/CertOpCode;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/CertOpCode;->ordinal()I

    move-result p1

    return p1

    .line 708
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmCertMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/CertificateManager;

    move-result-object p1

    invoke-virtual {p2}, Lcom/cisco/android/nchs/aidl/ByteArrayParcel;->getPayload()[B

    move-result-object p2

    invoke-virtual {p1, p2, p5, p3, p4}, Lcom/cisco/android/nchs/support/CertificateManager;->importServerCertificateToSystemStore([BLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/cisco/android/nchs/aidl/CertOpCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/CertOpCode;->ordinal()I

    move-result p1

    return p1

    .line 684
    :cond_7
    :goto_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Nothing to import. Certificate is null."

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    sget-object p1, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/CertOpCode;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/CertOpCode;->ordinal()I

    move-result p1

    return p1

    .line 678
    :cond_8
    :goto_2
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Certificate store is null"

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    sget-object p1, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/CertOpCode;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/CertOpCode;->ordinal()I

    move-result p1

    return p1
.end method

.method public ImportServerCertificateChain(Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;Lcom/cisco/android/nchs/aidl/CertificateChain;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 614
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ANYCONNECT:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->getStore()Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ALL:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->getStore()Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    move-result-object v2

    if-ne v1, v2, :cond_5

    .line 617
    :cond_0
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ALL:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->getStore()Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    move-result-object v2

    const-string v3, "NetworkComponentHostService"

    if-ne v1, v2, :cond_1

    .line 619
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Certificate chain will only be imported to the AnyConnect store"

    invoke-static {v1, v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_1
    invoke-virtual {p2}, Lcom/cisco/android/nchs/aidl/CertificateChain;->getDerEncodedCerts()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 624
    invoke-static {v1}, Lcom/cisco/android/nchs/support/CertificateManager;->derToX509Certificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-nez v1, :cond_3

    .line 627
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "importTrustedCertificate: failed to parse certificate"

    invoke-static {p1, v3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    new-instance p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-direct {p1, p2}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object p1

    .line 632
    :cond_3
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmCertMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/CertificateManager;

    move-result-object v2

    invoke-virtual {v2, v1, p3, p4}, Lcom/cisco/android/nchs/support/CertificateManager;->importTrustedCertificate(Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v1

    .line 633
    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_CERTIFICATE_ALREADY_EXISTS:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-ne v2, v1, :cond_4

    .line 635
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "importTrustedCertificate: certificate already exists"

    invoke-static {v0, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_CERTIFICATE_ALREADY_EXISTS:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_0

    .line 639
    :cond_4
    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v2, v1, :cond_2

    .line 641
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "importTrustedCertificate: failed to import certificate"

    invoke-static {p1, v3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    new-instance p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-direct {p1, p2}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object p1

    .line 648
    :cond_5
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->SYSTEM:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->getStore()Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    move-result-object p1

    if-ne p2, p1, :cond_6

    .line 650
    new-instance p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_NOT_SUPPORTED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-direct {p1, p2}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object p1

    .line 653
    :cond_6
    new-instance p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    invoke-direct {p1, v0}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object p1
.end method

.method public RequestClientCertFromSystem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/IImportClientCertCB;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    new-instance v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misBinderRequestInProc(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$mimportClientCertFromKeyChain(Lcom/cisco/android/nchs/NetworkComponentHostService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/IImportClientCertCB;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-object v0
.end method

.method public SafeActivated()V
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmCertMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/CertificateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/CertificateManager;->setSafe()V

    return-void
.end method

.method public VerifyServerCertificateChain(Lcom/cisco/android/nchs/aidl/CertificateChain;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 734
    :try_start_0
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->convertToX509Array(Lcom/cisco/android/nchs/aidl/CertificateChain;)[Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmCertMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/CertificateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cisco/android/nchs/support/CertificateManager;->verifyX509ServerCert([Ljava/security/cert/X509Certificate;)I

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 738
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "NetworkComponentHostService"

    const-string v2, "Exception converting x509 array"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    return p1
.end method

.method public VerifyServerCertificateChainForHostname(Lcom/cisco/android/nchs/aidl/CertificateChain;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 754
    :try_start_0
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->convertToX509Array(Lcom/cisco/android/nchs/aidl/CertificateChain;)[Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmCertMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/CertificateManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/cisco/android/nchs/support/CertificateManager;->verifyX509ServerCertForHost([Ljava/security/cert/X509Certificate;Ljava/lang/String;ZLjava/util/List;)I

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 758
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "NetworkComponentHostService"

    const-string v1, "Exception converting x509 array"

    invoke-static {p2, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    return p1
.end method

.method public deleteCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;)Z
    .locals 0

    .line 576
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmCertMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/CertificateManager;

    move-result-object p1

    invoke-virtual {p4}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->getStore()Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/cisco/android/nchs/support/CertificateManager;->deleteCertificate(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStore;)Z

    move-result p1

    return p1
.end method

.method public deleteCertificates(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;)Z
    .locals 0

    .line 585
    iget-object p3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {p3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmCertMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/CertificateManager;

    move-result-object p3

    invoke-virtual {p4}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->getStore()Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    move-result-object p4

    invoke-virtual {p3, p1, p2, p4}, Lcom/cisco/android/nchs/support/CertificateManager;->deleteGroupOfCertificates(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStore;)Z

    move-result p1

    return p1
.end method

.method public handleClientCertRequest(Ljava/util/List;Ljava/util/List;)Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;"
        }
    .end annotation

    .line 811
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmCertMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/CertificateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cisco/android/nchs/support/CertificateManager;->handleClientCertRequest(Ljava/util/List;Ljava/util/List;)Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;

    move-result-object p1

    return-object p1
.end method

.method public isCertificateInstalled(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;)Z
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmCertMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/CertificateManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->getStore()Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/cisco/android/nchs/support/CertificateManager;->isCertificateInstalled(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStore;)Z

    move-result p1

    return p1
.end method

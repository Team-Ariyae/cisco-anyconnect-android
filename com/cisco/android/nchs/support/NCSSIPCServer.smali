.class public Lcom/cisco/android/nchs/support/NCSSIPCServer;
.super Lcom/cisco/android/nchs/ipc/IPCServerBase;
.source "NCSSIPCServer.java"


# static fields
.field public static final ELEMENTS_PER_MANAGED_CERT:I = 0x4

.field private static final ENTITY_NAME:Ljava/lang/String; = "NCSSIPCServer"

.field public static final PROPERTY_VALUE_UNKNOWN_STRING:Ljava/lang/String; = "unknown"


# instance fields
.field private mActiveConnectionTracker:Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;

.field private mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

.field private final mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

.field private final mContext:Landroid/content/Context;

.field private final mDevMgr:Lcom/cisco/android/nchs/support/DeviceInfoManager;

.field private final mDevReport:Lcom/cisco/android/nchs/support/DeviceInfoReport;

.field private mKnoxInteractionService:Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;

.field private mKnoxInteractionServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static bridge synthetic -$$Nest$fputmKnoxInteractionService(Lcom/cisco/android/nchs/support/NCSSIPCServer;Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mKnoxInteractionService:Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/cisco/android/nchs/support/CertificateManager;Lcom/cisco/android/nchs/support/DeviceInfoManager;Landroid/content/Context;Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;)V
    .locals 1

    const-string v0, "NCSS"

    .line 141
    invoke-direct {p0, v0, p1, p5}, Lcom/cisco/android/nchs/ipc/IPCServerBase;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;)V

    .line 961
    new-instance p1, Lcom/cisco/android/nchs/support/NCSSIPCServer$1;

    invoke-direct {p1, p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer$1;-><init>(Lcom/cisco/android/nchs/support/NCSSIPCServer;)V

    iput-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mKnoxInteractionServiceConnection:Landroid/content/ServiceConnection;

    .line 142
    iput-object p2, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    .line 143
    iput-object p3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mDevMgr:Lcom/cisco/android/nchs/support/DeviceInfoManager;

    .line 144
    iput-object p4, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    .line 145
    new-instance p1, Lcom/cisco/android/nchs/support/DeviceInfoReport;

    invoke-direct {p1, p4, p3}, Lcom/cisco/android/nchs/support/DeviceInfoReport;-><init>(Landroid/content/Context;Lcom/cisco/android/nchs/support/DeviceInfoManager;)V

    iput-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mDevReport:Lcom/cisco/android/nchs/support/DeviceInfoReport;

    .line 146
    new-instance p1, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-direct {p1, p4, p0}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;-><init>(Landroid/content/Context;Lcom/cisco/android/nchs/ipc/IPCServerThread;)V

    iput-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    .line 147
    new-instance p1, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;

    invoke-direct {p1, p4}, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mActiveConnectionTracker:Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;

    return-void
.end method

.method private addAnyConnectNonClientCerts(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V
    .locals 12

    .line 1685
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/CertificateManager;->getRootCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1687
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_3

    .line 1694
    :cond_0
    iget-object v1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/support/CertificateManager;->enumerateClientCertificates()Ljava/util/Map;

    move-result-object v1

    const-string v9, "AC/root"

    .line 1697
    array-length v10, v0

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_3

    aget-object v4, v0, v11

    if-eqz v1, :cond_1

    .line 1700
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1702
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "addAnyConnectNonClientCerts: got client cert="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NCSSIPCServer"

    invoke-static {v2, v4, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1706
    :cond_1
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1707
    iget-object v3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {v3, v4}, Lcom/cisco/android/nchs/support/CertificateManager;->getCertAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    const/4 v8, 0x2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    const/4 v8, 0x1

    :goto_1
    const/4 v7, 0x2

    move-object v2, p0

    move-object v3, p1

    move-object v6, v9

    .line 1711
    invoke-direct/range {v2 .. v8}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->addCertToMessage(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;II)V

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method private addCertToMessage(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 1642
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p2

    .line 1645
    sget-object v0, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BYTE_ARRAY:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {p1, v0, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)Z

    .line 1646
    sget-object p2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {p1, p2, p3}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)Z

    .line 1647
    sget-object p2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {p1, p2, p4}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)Z

    .line 1648
    sget-object p2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)Z

    .line 1649
    sget-object p2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1653
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "addAnyConnectClientCerts: failed to encode cert: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "NCSSIPCServer"

    invoke-static {p2, p3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private addClientCerts(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V
    .locals 9

    .line 1664
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/CertificateManager;->getClientCerts()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1670
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;

    .line 1672
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;->getX509()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;->getGroup()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->addCertToMessage(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addSystemCerts(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V
    .locals 12

    .line 1723
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/CertificateManager;->getSystemCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1725
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "SYS/System"

    const-string v9, ""

    .line 1735
    array-length v10, v0

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_2

    aget-object v4, v0, v11

    .line 1737
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    const/4 v8, 0x2

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    const/4 v8, 0x1

    :goto_1
    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v5, v9

    move-object v6, v1

    .line 1741
    invoke-direct/range {v2 .. v8}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->addCertToMessage(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private addVerificationCerts(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/android/nchs/ipc/IPCReturnMessage;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v7, "SYS/System"

    const-string v8, ""

    .line 1763
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 1765
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    const/4 v6, 0x2

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    const/4 v6, 0x1

    :goto_1
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v8

    move-object v4, v7

    .line 1769
    invoke-direct/range {v0 .. v6}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->addCertToMessage(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private changeHttpProxy(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, ""

    .line 1218
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 1223
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "http_proxy"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1226
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 1228
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 1232
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "NCSSIPCServer"

    const-string v2, "Exception occurred setting proxy"

    invoke-static {v0, v1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1233
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    :goto_1
    return-void
.end method

.method private deleteCertificates(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/android/nchs/ipc/IPCReturnMessage;",
            "Ljava/util/ArrayList<",
            "Lcom/cisco/android/nchs/ipc/ArgumentMapping;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;
        }
    .end annotation

    const-string v0, "NCSSIPCServer"

    .line 1953
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 1954
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1958
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    .line 1959
    sget-object v4, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getType()Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 1965
    invoke-virtual {v3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1966
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1961
    :cond_0
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal arg type="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getType()Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " on argument #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p2

    .line 1968
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 1970
    iget-object v1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    const-string v2, "com.cisco.android.nchs.support.CERTIFICATE_DEFAULT_GROUP"

    const-string v3, "CERTIFICATE_VPN_TAG"

    invoke-virtual {v1, p2, v2, v3}, Lcom/cisco/android/nchs/support/CertificateManager;->deleteCertificates([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    .line 1971
    sget-object v1, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)Z

    .line 1972
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 1977
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteCertificates: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    .line 1979
    new-instance v0, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;

    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;-><init>(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private enumerateClientCertificates(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V
    .locals 5

    .line 1292
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/CertificateManager;->getClientCerts()Ljava/util/List;

    move-result-object v0

    .line 1295
    iget-object v1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mActiveConnectionTracker:Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;->getActiveConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1298
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetYubikeySlot()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->getEnum(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    move-result-object v1

    .line 1299
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->None:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    if-eq v1, v2, :cond_0

    .line 1301
    iget-object v2, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {v2, v1}, Lcom/cisco/android/nchs/support/CertificateManager;->getYubikeyCert(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;)Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1304
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1309
    :cond_0
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, v1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    .line 1311
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;

    .line 1315
    :try_start_0
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;->getX509()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 1316
    sget-object v3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BYTE_ARRAY:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {p1, v3, v2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)Z

    .line 1317
    sget-object v2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)Z

    .line 1320
    iget-object v2, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cisco/android/nchs/permissions/Prerequisites;->isChromebook(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;->getGroup()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEYCHAIN/client"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1321
    :goto_1
    sget-object v2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1325
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "enumerateClientCertificates: got encoding exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NCSSIPCServer"

    invoke-static {v2, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getCertChain(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V
    .locals 11

    .line 1494
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {v0, p2}, Lcom/cisco/android/nchs/support/CertificateManager;->getCertChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p2

    .line 1495
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/CertificateManager;->enumerateClientCertificates()Ljava/util/Map;

    move-result-object v0

    .line 1497
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v6, p2, v3

    .line 1499
    iget-object v4, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {v4, v6}, Lcom/cisco/android/nchs/support/CertificateManager;->getCertAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v7

    .line 1503
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "AC/client"

    move-object v8, v4

    const/4 v10, 0x0

    goto :goto_2

    :cond_0
    const-string v4, "AC/root"

    .line 1512
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    move-object v8, v4

    move v10, v5

    :goto_2
    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 1516
    invoke-direct/range {v4 .. v10}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->addCertToMessage(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1517
    sget-object v4, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, v4}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1522
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "NCSSIPCServer"

    const-string v2, "KeyStoreException"

    invoke-static {v0, v1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1523
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    :cond_2
    return-void
.end method

.method private getCertificates(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;I)V
    .locals 3

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1792
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected certificate type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "NCSSIPCServer"

    invoke-static {v0, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1786
    :cond_0
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->addAnyConnectNonClientCerts(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V

    goto :goto_0

    .line 1789
    :cond_1
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->addSystemCerts(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V

    goto :goto_0

    .line 1783
    :cond_2
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->addClientCerts(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V

    .line 1796
    :goto_0
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void
.end method

.method private getDnsSearch(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/android/nchs/ipc/IPCReturnMessage;",
            "Ljava/util/ArrayList<",
            "Lcom/cisco/android/nchs/ipc/ArgumentMapping;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 628
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/NetUtils;->getDnsSearch(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 634
    new-instance v0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v1, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-direct {v0, v1, p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 637
    :cond_0
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 640
    :catch_0
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_PRECONDITIONS_NOT_MET:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    :goto_0
    return-void
.end method

.method private getDnsServers(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/android/nchs/ipc/IPCReturnMessage;",
            "Ljava/util/ArrayList<",
            "Lcom/cisco/android/nchs/ipc/ArgumentMapping;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 604
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 607
    :try_start_0
    iget-object v1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/NetUtils;->getDnsServers(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p2

    .line 609
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 610
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%"

    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 614
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 615
    aget-object v1, v2, v0

    .line 618
    :cond_0
    new-instance v2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-direct {v2, v3, v1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    goto :goto_0

    .line 620
    :cond_1
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 623
    :catch_0
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_PRECONDITIONS_NOT_MET:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    :goto_1
    return-void
.end method

.method private getEnvAttributes(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V
    .locals 3

    .line 541
    new-instance v0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v1, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 542
    new-instance v0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v1, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget-object v2, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cisco/android/nchs/permissions/Prerequisites;->isChromebook(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 543
    new-instance v0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v1, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget-object v2, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cisco/android/nchs/permissions/Prerequisites;->useNetworkCallback(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 544
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void
.end method

.method private getHttpProxy(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V
    .locals 4

    .line 1245
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "http_proxy"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 1250
    :cond_0
    new-instance v1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-direct {v1, v2, v0}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 1251
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1255
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "NCSSIPCServer"

    const-string v3, "Exception occurred getting proxy"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1256
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    :goto_0
    return-void
.end method

.method private getKnoxProfileName()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 762
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->usingKnoxVpn()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 767
    :cond_0
    iget-object v1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mKnoxInteractionService:Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;

    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;->getActiveKnoxProfileName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 771
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "NCSSIPCServer"

    const-string v4, "Failed to get Knox Profile Name"

    invoke-static {v2, v3, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private getLocale(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V
    .locals 5

    .line 1268
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1269
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 1270
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/charset/Charset;->displayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1272
    new-instance v3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v4, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-direct {v3, v4, v0}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 1273
    new-instance v0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-direct {v0, v3, v1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 1274
    new-instance v0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v1, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-direct {v0, v1, v2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 1275
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1279
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "NCSSIPCServer"

    const-string v3, "Exception occurred getting proxy"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1280
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    :goto_0
    return-void
.end method

.method private getManagedMdmAppRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private getNetworkInterfaces(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V
    .locals 12

    .line 646
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 647
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_PRECONDITIONS_NOT_MET:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void

    .line 653
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 654
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_6

    aget-object v5, v1, v4

    .line 656
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 657
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 659
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v7

    .line 660
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v9, v8, :cond_2

    .line 669
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/LinkAddress;

    .line 670
    invoke-virtual {v11}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    instance-of v11, v11, Ljava/net/Inet4Address;

    if-eqz v11, :cond_1

    const/4 v10, 0x1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 675
    :cond_2
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getNat64Prefix()Landroid/net/IpPrefix;

    move-result-object v9

    const/4 v11, 0x0

    if-eqz v9, :cond_3

    if-nez v10, :cond_3

    const-string v9, "Deducing IPv4 address for NAT64 active interface"

    .line 679
    invoke-static {p0, v9}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 681
    :try_start_1
    new-instance v9, Ljava/net/DatagramSocket;

    invoke-direct {v9}, Ljava/net/DatagramSocket;-><init>()V

    .line 682
    invoke-virtual {v5, v9}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    const-string v5, "8.8.8.8"

    .line 683
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    const/16 v10, 0x35

    invoke-virtual {v9, v5, v10}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 684
    invoke-virtual {v9}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 685
    instance-of v9, v5, Ljava/net/Inet4Address;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v9, :cond_3

    move-object v11, v5

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_2
    const-string v9, "Ignoring SocketException"

    .line 689
    invoke-static {p0, v9, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 693
    :cond_3
    :goto_2
    new-instance v5, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v9, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v9, v6}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    if-eqz v11, :cond_4

    .line 696
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding supplementNat64Address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    new-instance v5, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v6, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    add-int/lit8 v9, v8, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 699
    new-instance v5, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v6, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 700
    new-instance v5, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v6, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/16 v9, 0x20

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    goto :goto_3

    .line 702
    :cond_4
    new-instance v5, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v6, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    :goto_3
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v8, :cond_5

    .line 708
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    .line 709
    new-instance v9, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v10, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, v9}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 710
    new-instance v9, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v10, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v9, v10, v6}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, v9}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 714
    :cond_6
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Error getting network interfaces"

    .line 719
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 720
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void
.end method

.method private getPublicDnsServers(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/android/nchs/ipc/IPCReturnMessage;",
            "Ljava/util/ArrayList<",
            "Lcom/cisco/android/nchs/ipc/ArgumentMapping;",
            ">;)V"
        }
    .end annotation

    .line 588
    iget-object p2, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/util/NetUtils;->getDnsServersForActiveIface(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 592
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 593
    new-instance v1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    goto :goto_0

    .line 596
    :cond_0
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 599
    :catch_0
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_PRECONDITIONS_NOT_MET:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    :goto_1
    return-void
.end method

.method private getSystemProperty(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V
    .locals 2

    .line 549
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/util/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 550
    new-instance v0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v1, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-direct {v0, v1, p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 551
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void
.end method

.method private hasKnoxMeta()Z
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mActiveConnectionTracker:Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;->getActiveConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Missing active connection"

    .line 571
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 575
    :cond_0
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->getKnoxMetaEnabled()Z

    move-result v0

    return v0
.end method

.method private importPKCS12(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;[BLjava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const-string p4, "NCSSIPCServer"

    if-eqz p5, :cond_2

    .line 1351
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->isChromebook(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1357
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->isDeviceSecure(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1359
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "importPKCS12: User authentication required, but device is not secure"

    invoke-static {p2, p4, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_CERT_IMPORT_FAILED_DEVICE_NOT_SECURE:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void

    .line 1353
    :cond_1
    :goto_0
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "importPKCS12: User authentication required, but fingerprint auth not supported"

    invoke-static {p2, p4, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_NOT_SUPPORTED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void

    .line 1370
    :cond_2
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    const/4 v3, 0x0

    const-string v4, "CERTIFICATE_VPN_TAG"

    move-object v1, p2

    move-object v2, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/cisco/android/nchs/support/CertificateManager;->importPkcs12ClientCert([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/security/cert/X509Certificate;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1373
    array-length p3, p2

    if-nez p3, :cond_3

    goto :goto_2

    .line 1381
    :cond_3
    array-length p3, p2

    const/4 p5, 0x0

    :goto_1
    if-ge p5, p3, :cond_4

    aget-object v0, p2, p5

    .line 1383
    iget-object v1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {v1, v0}, Lcom/cisco/android/nchs/support/CertificateManager;->getCertAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v1

    .line 1384
    iget-object v2, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {v2, v1}, Lcom/cisco/android/nchs/support/CertificateManager;->getKeyAliasForCertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1385
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 1388
    sget-object v2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BYTE_ARRAY:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {p1, v2, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)Z

    .line 1389
    sget-object v0, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {p1, v0, v1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 1392
    :cond_4
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto :goto_3

    .line 1375
    :cond_5
    :goto_2
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "importPKCS12: received a NULL cert from cert manager"

    invoke-static {p2, p4, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 1402
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "importPKCS12: failed to encode returned cert: "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p4, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto :goto_3

    :catch_1
    move-exception p2

    .line 1397
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "importPKCS12: UnrecoverableKeyException: "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/security/UnrecoverableKeyException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p4, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_PERMISSION_DENIED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    :goto_3
    return-void
.end method

.method private importTrustedCertificate(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;
        }
    .end annotation

    .line 1188
    invoke-static {p2}, Lcom/cisco/android/nchs/support/CertificateManager;->derToX509Certificate([B)Ljava/security/cert/X509Certificate;

    move-result-object p2

    const-string v0, "NCSSIPCServer"

    if-nez p2, :cond_0

    .line 1191
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "importTrustedCertificate: failed to parse certificate"

    invoke-static {p2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void

    .line 1197
    :cond_0
    iget-object v1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    const/4 v2, 0x0

    const-string v3, "CERTIFICATE_VPN_TAG"

    invoke-virtual {v1, p2, v2, v3}, Lcom/cisco/android/nchs/support/CertificateManager;->importTrustedCertificate(Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p2

    .line 1198
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v1, p2, :cond_1

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_CERTIFICATE_ALREADY_EXISTS:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v1, p2, :cond_1

    .line 1200
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "importTrustedCertificate: failed to import certificate"

    invoke-static {p2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void

    .line 1205
    :cond_1
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void
.end method

.method private isKnoxMetaEnabledForActiveConnection()Z
    .locals 5

    const/4 v0, 0x0

    .line 739
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->usingKnoxVpn()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 744
    :cond_0
    iget-object v1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mKnoxInteractionService:Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;

    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;->isKnoxMetaEnabledForActiveConnection()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 748
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "NCSSIPCServer"

    const-string v4, "Unexpected exception in isKnoxMetaEnabledForActiveConnection"

    invoke-static {v2, v3, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private isManagedPerApp()Z
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mActiveConnectionTracker:Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;->getActiveConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Missing active connection"

    .line 559
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 563
    :cond_0
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->isManagedPerApp()Z

    move-result v0

    return v0
.end method

.method private isVpnKnoxInitiated(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V
    .locals 3

    .line 876
    new-instance v0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v1, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget-object v2, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {v2}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->isKnoxManagedAppTunnel()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 877
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void
.end method

.method private modifyForwardingRule(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 18

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-string v5, "\" \""

    const-string v6, "[\\w\\.]+"

    const-string v7, "NCSSIPCServer"

    const-string v8, "HTC-private API call failed for operation \""

    const-string v9, "invalid forwarding rule arguments \""

    const-string v10, "invalid forwarding rule operation \""

    move-object/from16 v11, p0

    .line 1554
    :try_start_0
    iget-object v12, v11, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    const-string v13, "android.net.NetworkUtils"

    .line 1555
    invoke-virtual {v12, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const-string v13, "add"

    .line 1560
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, "\""

    if-eqz v13, :cond_0

    :try_start_1
    const-string v10, "addRoutingRule"

    goto :goto_0

    :cond_0
    const-string v13, "delete"

    .line 1564
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v10, "delRoutingRule"

    :goto_0
    const-string v13, "\\w+"

    .line 1582
    invoke-virtual {v4, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v2, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    .line 1591
    const-class v9, Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v9, v6, v13

    const-class v9, Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v9, v6, v15

    const-class v9, Ljava/lang/String;

    const/16 v16, 0x2

    aput-object v9, v6, v16

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x3

    aput-object v9, v6, v17

    invoke-virtual {v12, v10, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v13

    aput-object v3, v5, v15

    aput-object v4, v5, v16

    .line 1596
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v17

    invoke-virtual {v6, v12, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_2

    .line 1600
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v7, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 1618
    :cond_2
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void

    .line 1584
    :cond_3
    :goto_1
    :try_start_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v7, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void

    .line 1570
    :cond_4
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v7, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1613
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception occurred while invoking HTC-private API: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v7, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void

    .line 1608
    :catch_1
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_PRECONDITIONS_NOT_MET:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void
.end method

.method private modifySystemProperty(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "SetProperty failed (key = \""

    const-string v1, "exception occured setting property (key = \""

    .line 2014
    invoke-static {}, Lcom/cisco/android/nchs/permissions/Prerequisites;->hasSystemUid()Z

    move-result v2

    const-string v3, "\")"

    const-string v4, "\" value = \""

    const-string v5, "NCSSIPCServer"

    if-eqz v2, :cond_1

    .line 2016
    invoke-static {p2, p3}, Lcom/cisco/anyconnect/vpn/android/util/SystemPropertyUtil;->set(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2019
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SystemPropertyUtil.set failed (key = \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v5, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void

    .line 2025
    :cond_0
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void

    .line 2030
    :cond_1
    new-instance v2, Lcom/cisco/android/nchs/support/SystemPrivProxy;

    iget-object v6, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/cisco/android/nchs/support/SystemPrivProxy;-><init>(Landroid/content/Context;)V

    .line 2033
    :try_start_0
    invoke-virtual {v2, p2, p3}, Lcom/cisco/android/nchs/support/SystemPrivProxy;->SetProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2036
    sget-object v6, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v5, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2049
    invoke-virtual {v2}, Lcom/cisco/android/nchs/support/SystemPrivProxy;->Destroy()V

    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/cisco/android/nchs/support/SystemPrivProxy;->Destroy()V

    .line 2052
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2043
    :try_start_1
    sget-object v6, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, v5, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2044
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2049
    invoke-virtual {v2}, Lcom/cisco/android/nchs/support/SystemPrivProxy;->Destroy()V

    return-void

    :goto_0
    invoke-virtual {v2}, Lcom/cisco/android/nchs/support/SystemPrivProxy;->Destroy()V

    .line 2050
    throw p1
.end method

.method private needsKnoxPacketMeta()Z
    .locals 1

    .line 584
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->getKnoxProfileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->isKnoxMetaEnabledForActiveConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseAppRules(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/util/ArrayList;)Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/android/nchs/ipc/IPCReturnMessage;",
            "Ljava/util/ArrayList<",
            "Lcom/cisco/android/nchs/ipc/ArgumentMapping;",
            ">;)",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;"
        }
    .end annotation

    .line 1896
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/apptunnel/AndroidPackageMgr;

    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AndroidPackageMgr;-><init>(Landroid/content/Context;)V

    .line 1897
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1900
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    .line 1901
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    .line 1902
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {v2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    .line 1903
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {v3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    add-int/lit8 v5, v4, 0x1

    .line 1904
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {v4}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1905
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v4, v5

    :goto_1
    if-ge v5, v4, :cond_0

    add-int/lit8 v7, v5, 0x1

    .line 1909
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {v5}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1910
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_1

    .line 1915
    :cond_0
    new-instance v4, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;

    invoke-direct {v4, p1, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;-><init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/IPackageMgr;Ljava/lang/String;)V

    .line 1917
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1918
    invoke-virtual {v4, v2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;->setMinVersion(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;

    .line 1921
    :cond_1
    invoke-virtual {v4, v3}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;->setAllowedSharedUid(Z)Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;

    .line 1923
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1924
    invoke-virtual {v4, v6}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;->setCertIds(Ljava/util/List;)Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;

    .line 1927
    :cond_2
    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;->build()Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;

    move-result-object v1

    .line 1928
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v5

    goto/16 :goto_0

    .line 1931
    :cond_3
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->getManagedMdmAppRules()Ljava/util/List;

    move-result-object p2

    .line 1933
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;

    invoke-direct {v1, v0, p2, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;-><init>(Ljava/util/List;Ljava/util/List;Lcom/cisco/anyconnect/vpn/android/apptunnel/IPackageMgr;)V

    return-object v1
.end method

.method private parseBlobsIntoCertificates([I[B)[Ljava/security/cert/X509Certificate;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;,
            Ljava/security/cert/CertificateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1080
    array-length v0, p1

    if-eqz v0, :cond_5

    .line 1088
    new-array v1, v0, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, " of "

    if-ge v3, v0, :cond_3

    .line 1091
    aget v6, p1, v3

    if-lez v6, :cond_2

    add-int v7, v4, v6

    .line 1098
    array-length v8, p2

    if-gt v7, v8, :cond_1

    .line 1103
    new-array v8, v6, [B

    .line 1106
    invoke-static {p2, v4, v8, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1109
    invoke-static {v8}, Lcom/cisco/android/nchs/support/CertificateManager;->derToX509Certificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1116
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    .line 1112
    :cond_0
    new-instance p1, Ljava/security/cert/CertificateParsingException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "failed to parse certificate #"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1100
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bad arguments: total ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") + next ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is greater than passed length ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1095
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "bad arguments: certificate["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] has bad length="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1120
    :cond_3
    array-length p1, p2

    if-gt p1, v4, :cond_4

    return-object v1

    .line 1122
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bad arguments: only read "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes available"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1084
    :cond_5
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "bad arguments: no certificates provided"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private reportAppTunnelPolicy(Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;)V
    .locals 3

    .line 1889
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.PER_APP_APPS_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1890
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->getAllowedAppIds()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "com.cisco.anyconnect.vpn.android.PER_APP_APPS_ALLOWED_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1891
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->getBlockedMdmAppIds()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "com.cisco.anyconnect.vpn.android.PER_APP_APPS_BLOCKED_KEY"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1892
    iget-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    const-string v1, "com.cisco.anyconnect.vpn.android.permission.INTERNAL_VPN_STATE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private restore(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)Z
    .locals 2

    .line 977
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 978
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->isVpnServiceStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 980
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->startVpnService()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v0

    .line 981
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v1, v0, :cond_0

    .line 983
    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    const/4 p1, 0x0

    return p1

    .line 988
    :cond_0
    iget-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->restore()V

    const/4 p1, 0x1

    return p1
.end method

.method private restoreDns(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V
    .locals 3

    .line 882
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->hasSystemSign(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/NetUtils;->getActiveIface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 889
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "NCSSIPCServer"

    const-string v2, "No public interface; not restoring DNS."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void

    .line 894
    :cond_1
    iget-object v1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/cisco/android/nchs/permissions/Prerequisites;->haveRootAccess()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/DnsSetterFactory;->getInstance(Landroid/content/Context;Z)Lcom/cisco/anyconnect/vpn/android/util/DnsSetter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/DnsSetter;->restoreDns(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 897
    iget-object v1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cisco/android/nchs/support/VpnConfigBroadcast;->onRestoreDns(Landroid/content/Context;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 900
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void

    .line 883
    :cond_4
    :goto_1
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_PRECONDITIONS_NOT_MET:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void
.end method

.method private setAppRules(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/android/nchs/ipc/IPCReturnMessage;",
            "Ljava/util/ArrayList<",
            "Lcom/cisco/android/nchs/ipc/ArgumentMapping;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;
        }
    .end annotation

    const-string v0, "NCSSIPCServer"

    const-string v1, "perapp policy: "

    .line 1810
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->parseAppRules(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/util/ArrayList;)Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;

    move-result-object p2

    .line 1811
    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;->getNumRules()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1817
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1818
    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;->getUnmanagedPackages()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1819
    iget-object v3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {v3}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->isKnoxManagedAppTunnel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1821
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Managed Knox per-app. No configuration necessary."

    invoke-static {v2, v0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1825
    :cond_0
    iget-object v3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cisco/android/nchs/permissions/Prerequisites;->hasAvfAppTunnel(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1827
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Configuring per-app using AVF."

    invoke-static {v3, v0, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    invoke-direct {p0, v2}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->setAppRulesAvf(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1843
    :goto_0
    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;->getPolicy()Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;

    move-result-object p2

    .line 1844
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    sget-object v1, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->getAllowed()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)Z

    .line 1848
    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->getAppInfos()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;

    .line 1851
    sget-object v3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget-object v4, v2, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->appId:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)Z

    .line 1852
    sget-object v3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget v2, v2, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)Z

    .line 1853
    sget-object v2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)Z

    .line 1854
    sget-object v2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)Z

    goto :goto_1

    .line 1857
    :cond_1
    invoke-direct {p0, p2}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->reportAppTunnelPolicy(Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;)V

    .line 1859
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void

    .line 1831
    :cond_2
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    .line 1832
    new-instance p2, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;

    const-string v1, "Failed to set app rules for AVF"

    invoke-direct {p2, p1, v1}, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;-><init>(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    throw p2

    .line 1837
    :cond_3
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_PRECONDITIONS_NOT_MET:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    .line 1838
    new-instance p2, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;

    const-string v1, "No method to configure unmanaged app rules"

    invoke-direct {p2, p1, v1}, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;-><init>(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    throw p2

    .line 1812
    :cond_4
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    .line 1813
    new-instance p2, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;

    const-string v1, "No apps defined in app tunneling policy"

    invoke-direct {p2, p1, v1}, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;-><init>(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 1867
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "setAppRules failed"

    invoke-static {v1, v0, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1868
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    .line 1869
    new-instance v0, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;-><init>(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1863
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private setAppRulesAvf(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1875
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->isVpnServiceStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1877
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->startVpnService()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v0

    .line 1878
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v1, v0, :cond_0

    .line 1880
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "NCSSIPCServer"

    const-string v1, "Failed to start ICSSupportService"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 1885
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {v0, p1}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->addAppIds(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method private setDirectProxy(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/android/nchs/ipc/IPCReturnMessage;",
            "Ljava/util/ArrayList<",
            "Lcom/cisco/android/nchs/ipc/ArgumentMapping;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 794
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    .line 795
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 797
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 798
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_0

    add-int/lit8 v3, v4, 0x1

    .line 802
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    .line 803
    invoke-virtual {v4}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 804
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v3

    move v3, v5

    goto :goto_0

    .line 807
    :cond_0
    iget-object p2, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {p2, v0, v1, v2}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->setDirectProxy(Ljava/lang/String;ILjava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 808
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :goto_1
    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void
.end method

.method private setDns(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/android/nchs/ipc/IPCReturnMessage;",
            "Ljava/util/ArrayList<",
            "Lcom/cisco/android/nchs/ipc/ArgumentMapping;",
            ">;)V"
        }
    .end annotation

    .line 826
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->hasSystemSign(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 833
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v2, v1

    const/4 v3, 0x0

    .line 835
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, "NCSSIPCServer"

    if-ge v3, v4, :cond_5

    .line 836
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    .line 837
    sget-object v6, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v4}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getType()Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-result-object v7

    if-eq v6, v7, :cond_1

    .line 838
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal arg type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getType()Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " on argument #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v5, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void

    .line 843
    :cond_1
    invoke-virtual {v4}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v3, :cond_2

    move-object v1, v4

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    if-ne v5, v3, :cond_3

    const-string v5, ""

    .line 849
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move-object v2, v4

    goto :goto_1

    .line 853
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    .line 858
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "No interface provided for setDns"

    invoke-static {p2, v5, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void

    .line 863
    :cond_6
    iget-object p2, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/cisco/android/nchs/permissions/Prerequisites;->haveRootAccess()Z

    move-result v3

    invoke-static {p2, v3}, Lcom/cisco/anyconnect/vpn/android/util/DnsSetterFactory;->getInstance(Landroid/content/Context;Z)Lcom/cisco/anyconnect/vpn/android/util/DnsSetter;

    move-result-object p2

    invoke-virtual {p2, v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/DnsSetter;->setDns(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 866
    iget-object v1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/cisco/android/nchs/support/VpnConfigBroadcast;->onConfigDns(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    :cond_7
    if-eqz p2, :cond_8

    .line 869
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_2

    :cond_8
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :goto_2
    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void

    .line 827
    :cond_9
    :goto_3
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_PRECONDITIONS_NOT_MET:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void
.end method

.method private setIcsKnoxSession()V
    .locals 4

    .line 783
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->getKnoxProfileName()Ljava/lang/String;

    move-result-object v0

    .line 785
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting knox session="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NCSSIPCServer"

    invoke-static {v1, v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 788
    iget-object v1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {v1, v0}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->setSession(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private setPACProxy(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/android/nchs/ipc/IPCReturnMessage;",
            "Ljava/util/ArrayList<",
            "Lcom/cisco/android/nchs/ipc/ArgumentMapping;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 813
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 814
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {v0, p2}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->setPACProxy(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 815
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void
.end method

.method private signHashWithClientCert(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 3

    .line 1421
    :try_start_0
    iget-object p3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mActiveConnectionTracker:Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;

    invoke-virtual {p3}, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;->getActiveConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 1424
    invoke-virtual {p3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetYubikeySlot()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->getEnum(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    move-result-object p3

    .line 1427
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->None:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    if-eq p3, v0, :cond_0

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->getEnum(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    move-result-object v0

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->None:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    if-eq v0, v1, :cond_0

    .line 1429
    invoke-direct {p0, p1, p3, p4}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->signHashWithYubikeyCert(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;[B)V

    return-void

    .line 1434
    :cond_0
    iget-object p3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {p3, p2}, Lcom/cisco/android/nchs/support/CertificateManager;->isUserAuthRequired(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1437
    new-instance p3, Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.android.FINGERPRINT_AUTH_INTENT"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "description"

    const v1, 0x7f11014e

    .line 1438
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1439
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    const-class v2, Lcom/cisco/android/nchs/NCHSProxyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "proxy_action"

    const-string v2, "start_activity"

    .line 1440
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "intent_key"

    .line 1441
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p3, 0x10000000

    .line 1442
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p3, "KEY_IPC_TARGET_SERVER"

    const-string v1, "com.cisco.android.ncss"

    .line 1443
    invoke-virtual {v0, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1444
    iget-object p3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1446
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->waitForRequestedEvent()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p3

    .line 1447
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v0, p3, :cond_1

    .line 1449
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_USER_CANCELLED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void

    .line 1458
    :cond_1
    iget-object p3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {p3, p2, p4}, Lcom/cisco/android/nchs/support/CertificateManager;->signWithClientCertificate(Ljava/lang/String;[B)[B

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1460
    array-length p3, p2

    if-nez p3, :cond_2

    goto :goto_0

    .line 1466
    :cond_2
    sget-object p3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BYTE_ARRAY:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {p1, p3, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)Z

    .line 1467
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto :goto_1

    .line 1462
    :cond_3
    :goto_0
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 1471
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "signHashWithClientCert: UnrecoverableKeyException: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/security/UnrecoverableKeyException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "NCSSIPCServer"

    invoke-static {p3, p4, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_CERT_KEY_NOT_FOUND:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    :goto_1
    return-void
.end method

.method private signHashWithYubikeyCert(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;[B)V
    .locals 1

    .line 1478
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {v0, p2, p3}, Lcom/cisco/android/nchs/support/CertificateManager;->signWithYubikeyCertificate(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;[B)[B

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1479
    array-length p3, p2

    if-nez p3, :cond_0

    goto :goto_0

    .line 1485
    :cond_0
    sget-object p3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BYTE_ARRAY:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {p1, p3, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)Z

    .line 1486
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto :goto_1

    .line 1481
    :cond_1
    :goto_0
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_USER_CANCELLED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    :goto_1
    return-void
.end method

.method private startAndPrepareICSVpnService(ZLjava/lang/String;Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)Z
    .locals 5

    .line 994
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 996
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->isVpnServiceStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 998
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->startVpnService()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v0

    .line 999
    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v2, v0, :cond_0

    .line 1001
    invoke-virtual {p3, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return v1

    .line 1006
    :cond_0
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->getKnoxProfileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1010
    iget-object v2, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-direct {p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->needsKnoxPacketMeta()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->setKnoxParams(Ljava/lang/String;Z)V

    .line 1014
    :cond_1
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    iget-object v2, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "NCSSIPCServer"

    if-nez v0, :cond_2

    .line 1017
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "do not need to launch system intent, we are already prepared"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1021
    :cond_2
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Need to launch the Android system intent for VPN"

    invoke-static {v3, v2, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    const-class v4, Lcom/cisco/android/nchs/NCHSProxyActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "proxy_action"

    const-string v4, "start_activity"

    .line 1023
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "intent_key"

    .line 1024
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 1025
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "KEY_IPC_TARGET_SERVER"

    const-string v3, "com.cisco.android.ncss"

    .line 1026
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1027
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1029
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/notify/NotificationUtility;

    iget-object v3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/cisco/anyconnect/vpn/android/notify/NotificationUtility;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_3

    .line 1031
    iget-object v3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    const/high16 v4, 0xc000000

    invoke-static {v3, v1, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const v3, 0x7f110330

    .line 1033
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xcf

    .line 1032
    invoke-virtual {v0, v4, v3, p2, v2}, Lcom/cisco/anyconnect/vpn/android/notify/NotificationUtility;->notify(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 1038
    :cond_3
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->waitForRequestedEvent()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p2

    if-eqz p1, :cond_4

    .line 1041
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/notify/NotificationUtility;->cancelLast()V

    .line 1044
    :cond_4
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq p1, p2, :cond_5

    .line 1046
    invoke-virtual {p3, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return v1

    :cond_5
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private startKnoxInteractionService()Z
    .locals 6

    .line 932
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mKnoxInteractionService:Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 937
    :cond_0
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 940
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 942
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    const-class v4, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.cisco.anyconnect.vpn.android.KNOX_INTERACTION_BIND_SERVICE"

    .line 943
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 944
    iget-object v3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 946
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "NCSSIPCServer"

    const-string v3, "could not start knox interaction service"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    monitor-exit v0

    return v4

    .line 950
    :cond_1
    iget-object v3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mKnoxInteractionServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v2, v5, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 953
    monitor-exit v0

    return v4

    .line 956
    :cond_2
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->waitForRequestedEvent()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v2

    .line 957
    sget-object v3, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 958
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startService(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V
    .locals 2

    .line 1990
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1994
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void

    .line 1998
    :cond_0
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void
.end method

.method private startVpnService()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 2

    .line 910
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 913
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 916
    :try_start_0
    iget-object v1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->startVpnService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->waitForRequestedEvent()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v1

    goto :goto_0

    .line 923
    :cond_0
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 925
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateNetworkStateProvider(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Lcom/cisco/android/nchs/support/NCSSOpcode;Landroid/content/ContentValues;)V
    .locals 3

    .line 2065
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.cisco.android.nchs.networkstateprovider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result p3

    if-ne v0, p3, :cond_0

    .line 2067
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto :goto_0

    .line 2071
    :cond_0
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/cisco/android/nchs/support/NCSSOpcode;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed while updating network state content provider"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NCSSIPCServer"

    invoke-static {p3, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    :goto_0
    return-void
.end method

.method private usingKnoxVpn()Z
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->hasKnoxVpn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    .line 731
    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->isKnoxManagedAppTunnel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->startKnoxInteractionService()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private verifyCertForHost(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;[I[BLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;
        }
    .end annotation

    const-string/jumbo v0, "verifyCertForHost: "

    const-string v1, "NCSSIPCServer"

    const/4 v2, -0x1

    .line 1141
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->parseBlobsIntoCertificates([I[B)[Ljava/security/cert/X509Certificate;

    move-result-object p2

    .line 1142
    iget-object p3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {p3, p2}, Lcom/cisco/android/nchs/support/CertificateManager;->getSortedChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object p2

    .line 1143
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1146
    iget-object v3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    const/4 v4, 0x1

    invoke-virtual {v3, p2, p4, v4, p3}, Lcom/cisco/android/nchs/support/CertificateManager;->verifyX509ServerCertForHost([Ljava/security/cert/X509Certificate;Ljava/lang/String;ZLjava/util/List;)I

    move-result p2

    .line 1147
    new-instance p4, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p4, v3, p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, p4}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 1148
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    .line 1152
    invoke-direct {p0, p1, p3}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->addVerificationCerts(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1170
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, v1, p4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    sget-object p3, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p3}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    .line 1172
    new-instance p3, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;

    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;-><init>(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    throw p3

    :catch_1
    move-exception p2

    .line 1163
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    new-instance p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object p3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 1165
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto :goto_0

    :catch_2
    move-exception p2

    .line 1157
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/security/cert/CertificateParsingException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    new-instance p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object p3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 1159
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected callServiceMethod(Lcom/cisco/android/nchs/codes/IOpcode;Ljava/util/ArrayList;Landroid/net/LocalSocket;Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/android/nchs/codes/IOpcode;",
            "Ljava/util/ArrayList<",
            "Lcom/cisco/android/nchs/ipc/ArgumentMapping;",
            ">;",
            "Landroid/net/LocalSocket;",
            "Lcom/cisco/android/nchs/ipc/IPCReturnMessage;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;
        }
    .end annotation

    .line 165
    invoke-interface {p1}, Lcom/cisco/android/nchs/codes/IOpcode;->getCode()B

    move-result p1

    invoke-static {p1}, Lcom/cisco/android/nchs/support/NCSSOpcode;->getByCode(B)Lcom/cisco/android/nchs/support/NCSSOpcode;

    move-result-object p1

    if-nez p4, :cond_0

    .line 169
    new-instance p4, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;

    invoke-direct {p4}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;-><init>()V

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p4}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->clearArguments()V

    :goto_0
    move-object v1, p4

    .line 178
    sget-object p4, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 180
    sget-object v0, Lcom/cisco/android/nchs/support/NCSSIPCServer$2;->$SwitchMap$com$cisco$android$nchs$support$NCSSOpcode:[I

    invoke-virtual {p1}, Lcom/cisco/android/nchs/support/NCSSOpcode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const-string/jumbo v2, "unknown"

    const-string v3, "NCSSIPCServer"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    .line 535
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 530
    :pswitch_0
    sget-object p1, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    new-instance p2, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    iget-object p3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;-><init>(Landroid/content/Context;)V

    const-string p3, "packet_capture_enabled"

    invoke-virtual {p2, p3}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)Z

    .line 531
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 524
    :pswitch_1
    iget-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mDevReport:Lcom/cisco/android/nchs/support/DeviceInfoReport;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/support/DeviceInfoReport;->getPhoneType()I

    move-result p1

    .line 525
    new-instance p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object p3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 526
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 514
    :pswitch_2
    iget-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mDevReport:Lcom/cisco/android/nchs/support/DeviceInfoReport;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/support/DeviceInfoReport;->getPhoneId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    .line 519
    :goto_1
    new-instance p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object p2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-direct {p1, p2, v2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 520
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 502
    :pswitch_3
    iget-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mDevReport:Lcom/cisco/android/nchs/support/DeviceInfoReport;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/support/DeviceInfoReport;->getMacAddress()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "02:00:00:00:00:00"

    .line 505
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, p1

    .line 509
    :cond_3
    :goto_2
    new-instance p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object p2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-direct {p1, p2, v2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 510
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 497
    :pswitch_4
    new-instance p1, Lcom/cisco/android/nchs/support/PackageInformation;

    iget-object p3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/cisco/android/nchs/support/PackageInformation;-><init>(Landroid/content/Context;)V

    .line 498
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lcom/cisco/android/nchs/support/PackageInformation;->GetAppOwnerUserId(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 493
    :pswitch_5
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->getCertChain(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 488
    :pswitch_6
    new-instance p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object p2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget-object p3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mDevMgr:Lcom/cisco/android/nchs/support/DeviceInfoManager;

    invoke-virtual {p3}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->GetPlatformVersion()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 489
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 483
    :pswitch_7
    new-instance p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object p2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget-object p3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mDevMgr:Lcom/cisco/android/nchs/support/DeviceInfoManager;

    invoke-virtual {p3}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->GetDeviceType()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 484
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 478
    :pswitch_8
    new-instance p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object p2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget-object p3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mDevReport:Lcom/cisco/android/nchs/support/DeviceInfoReport;

    invoke-virtual {p3}, Lcom/cisco/android/nchs/support/DeviceInfoReport;->getDeviceId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 479
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 474
    :pswitch_9
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->getSystemProperty(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 470
    :pswitch_a
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, v1, p1, p2}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->modifySystemProperty(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 453
    :pswitch_b
    iget-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/network/NetworkPropertiesFactory;->create(Landroid/content/Context;)Lcom/cisco/anyconnect/vpn/android/network/INetworkProperties;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 457
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/network/INetworkProperties;->getActiveNetworkInterface()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_5

    const-string p1, ""

    .line 465
    :cond_5
    new-instance p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object p3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-direct {p2, p3, p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 466
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 446
    :pswitch_c
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 447
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p4}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string v0, "client_v4_address"

    invoke-virtual {p3, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p4, "client_v6_address"

    invoke-virtual {p3, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-direct {p0, v1, p1, p3}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->updateNetworkStateProvider(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Lcom/cisco/android/nchs/support/NCSSOpcode;Landroid/content/ContentValues;)V

    goto/16 :goto_d

    .line 435
    :pswitch_d
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 436
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string/jumbo p4, "vpn_state"

    .line 437
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 438
    invoke-direct {p0, v1, p1, p3}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->updateNetworkStateProvider(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Lcom/cisco/android/nchs/support/NCSSOpcode;Landroid/content/ContentValues;)V

    .line 440
    new-instance p1, Landroid/content/Intent;

    const-string p3, "com.cisco.anyconnect.vpn.android.TUNNEL_STATE_CHANGED_ACTION"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "tunnel_state_new"

    .line 441
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 442
    new-instance p2, Lcom/cisco/anyconnect/common/ACBroadcastManager;

    iget-object p3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/cisco/anyconnect/common/ACBroadcastManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcom/cisco/anyconnect/common/ACBroadcastManager;->sendImplicitBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_d

    .line 429
    :pswitch_e
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 430
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const-string p4, "tnd_state"

    invoke-virtual {p3, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    invoke-direct {p0, v1, p1, p3}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->updateNetworkStateProvider(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Lcom/cisco/android/nchs/support/NCSSOpcode;Landroid/content/ContentValues;)V

    goto/16 :goto_d

    .line 425
    :pswitch_f
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 416
    :pswitch_10
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 417
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    iget-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 419
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 411
    :pswitch_11
    new-instance p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object p2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget-object p3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/cisco/android/nchs/permissions/Prerequisites;->useMultitableRoutes(Landroid/content/Context;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 412
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 406
    :pswitch_12
    new-instance p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object p2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-direct {p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->isManagedPerApp()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 407
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 401
    :pswitch_13
    new-instance p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object p2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-direct {p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->hasKnoxMeta()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 402
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 397
    :pswitch_14
    invoke-direct {p0, v1}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->getEnvAttributes(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V

    goto/16 :goto_d

    .line 392
    :pswitch_15
    new-instance p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object p2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 393
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 387
    :pswitch_16
    new-instance p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object p2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget-object p3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/cisco/android/nchs/permissions/Prerequisites;->hasKnoxVpn(Landroid/content/Context;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 388
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 383
    :pswitch_17
    invoke-direct {p0, v1}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->isVpnKnoxInitiated(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V

    goto/16 :goto_d

    .line 359
    :pswitch_18
    invoke-virtual {p3}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object p1

    .line 360
    array-length p2, p1

    if-le v6, p2, :cond_6

    .line 362
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "No FDs passed as part of the call to Protect()"

    invoke-static {p1, v3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 369
    :cond_6
    array-length p2, p1

    const/4 p3, 0x0

    :goto_4
    if-ge p3, p2, :cond_8

    aget-object p4, p1, p3

    .line 371
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {v0, p4}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->protect(Ljava/io/FileDescriptor;)Z

    move-result p4

    if-nez p4, :cond_7

    const/4 v6, 0x0

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_8
    if-eqz v6, :cond_9

    .line 376
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_5

    :cond_9
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :goto_5
    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 354
    :pswitch_19
    invoke-direct {p0, v1, p2}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->setPACProxy(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/util/ArrayList;)V

    goto/16 :goto_d

    .line 350
    :pswitch_1a
    invoke-direct {p0, v1, p2}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->setDirectProxy(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/util/ArrayList;)V

    goto/16 :goto_d

    .line 345
    :pswitch_1b
    iget-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->setSession(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 346
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_6

    :cond_a
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :goto_6
    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 340
    :pswitch_1c
    iget-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->setMtu(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 341
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_7

    :cond_b
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :goto_7
    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 329
    :pswitch_1d
    invoke-direct {p0, v1}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->restore(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 331
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 335
    :cond_c
    invoke-virtual {v1, p4}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 316
    :pswitch_1e
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 317
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 318
    invoke-direct {p0, p1, p2, v1}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->startAndPrepareICSVpnService(ZLjava/lang/String;Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 320
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 324
    :cond_d
    invoke-virtual {v1, p4}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 293
    :pswitch_1f
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->setIcsKnoxSession()V

    .line 295
    iget-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_e

    new-array p2, v6, [Landroid/os/ParcelFileDescriptor;

    aput-object p1, p2, v7

    .line 299
    invoke-virtual {v1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setFileDesciptorsForSend([Landroid/os/ParcelFileDescriptor;)V

    .line 300
    invoke-virtual {v1, v6}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCloseFdsAfterSend(Z)V

    .line 302
    new-instance p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object p2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget-object p3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {p3}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->isIPv4SplitExcludeFailed()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 303
    new-instance p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object p2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget-object p3, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {p3}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->isIPv6SplitExcludeFailed()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z

    .line 305
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 309
    :cond_e
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "establish was called when we were not prepared"

    invoke-static {p1, v3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 288
    :pswitch_20
    iget-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->addSearchDomain(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 289
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_8

    :cond_f
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :goto_8
    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 284
    :pswitch_21
    invoke-direct {p0, v1, p2}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->setAppRules(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/util/ArrayList;)V

    goto/16 :goto_d

    .line 279
    :pswitch_22
    iget-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p4}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p3, p4, p2}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->addRoute(Ljava/lang/String;IZ)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 280
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_9

    :cond_10
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :goto_9
    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 274
    :pswitch_23
    iget-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->allowFamily(I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 275
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_a

    :cond_11
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :goto_a
    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 269
    :pswitch_24
    iget-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->addDnsServer(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 270
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_b

    :cond_12
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :goto_b
    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 264
    :pswitch_25
    iget-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->addAddress(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 265
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_c

    :cond_13
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :goto_c
    invoke-virtual {v1, p1}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    goto/16 :goto_d

    .line 254
    :pswitch_26
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->startService(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 249
    :pswitch_27
    invoke-direct {p0, v1}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->getNetworkInterfaces(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V

    goto/16 :goto_d

    .line 245
    :pswitch_28
    invoke-direct {p0, v1, p2}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->getPublicDnsServers(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/util/ArrayList;)V

    goto/16 :goto_d

    .line 241
    :pswitch_29
    invoke-direct {p0, v1, p2}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->getDnsSearch(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/util/ArrayList;)V

    goto/16 :goto_d

    .line 237
    :pswitch_2a
    invoke-direct {p0, v1, p2}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->getDnsServers(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/util/ArrayList;)V

    goto/16 :goto_d

    .line 233
    :pswitch_2b
    invoke-direct {p0, v1}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->restoreDns(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V

    goto/16 :goto_d

    .line 229
    :pswitch_2c
    invoke-direct {p0, v1, p2}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->setDns(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/util/ArrayList;)V

    goto/16 :goto_d

    .line 225
    :pswitch_2d
    invoke-direct {p0, v1, p2}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->deleteCertificates(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/util/ArrayList;)V

    goto/16 :goto_d

    .line 221
    :pswitch_2e
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->getCertificates(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;I)V

    goto/16 :goto_d

    .line 217
    :pswitch_2f
    invoke-direct {p0, v1}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->getLocale(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V

    goto/16 :goto_d

    .line 211
    :pswitch_30
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 212
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 213
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/lang/Integer;

    move-object v0, p0

    move-object v4, p1

    .line 211
    invoke-direct/range {v0 .. v6}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->modifyForwardingRule(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_d

    .line 207
    :pswitch_31
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    invoke-direct {p0, v1, p1, p3, p2}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->signHashWithClientCert(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;Ljava/lang/String;[B)V

    goto/16 :goto_d

    .line 203
    :pswitch_32
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, [B

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->importPKCS12(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;[BLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_d

    .line 199
    :pswitch_33
    invoke-direct {p0, v1}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->enumerateClientCertificates(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V

    goto :goto_d

    .line 195
    :pswitch_34
    invoke-direct {p0, v1}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->getHttpProxy(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)V

    goto :goto_d

    .line 191
    :pswitch_35
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->changeHttpProxy(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    goto :goto_d

    .line 187
    :pswitch_36
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {p0, v1, p1}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->importTrustedCertificate(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;[B)V

    goto :goto_d

    .line 183
    :pswitch_37
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getObjectData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, v1, p1, p3, p2}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->verifyCertForHost(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;[I[BLjava/lang/String;)V

    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getNewOpCodeInterface(B)Lcom/cisco/android/nchs/codes/IOpcode;
    .locals 0

    .line 1064
    invoke-static {p1}, Lcom/cisco/android/nchs/support/NCSSOpcode;->getByCode(B)Lcom/cisco/android/nchs/support/NCSSOpcode;

    move-result-object p1

    return-object p1
.end method

.method public shutdownServer()V
    .locals 1

    .line 2079
    invoke-super {p0}, Lcom/cisco/android/nchs/ipc/IPCServerBase;->shutdownServer()V

    .line 2080
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mBuilder:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    if-eqz v0, :cond_0

    .line 2082
    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->Destroy()V

    .line 2085
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer;->mActiveConnectionTracker:Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;

    if-eqz v0, :cond_1

    .line 2087
    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;->onDestroy()V

    :cond_1
    return-void
.end method

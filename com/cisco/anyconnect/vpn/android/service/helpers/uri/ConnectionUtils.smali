.class public Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;
.super Ljava/lang/Object;
.source "ConnectionUtils.java"


# static fields
.field private static final CREATE_VPN_CONN:I = 0x37

.field private static final ENTITY_NAME:Ljava/lang/String; = "ConnectionUtils"


# instance fields
.field private mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

.field private mCertCommonName:Ljava/lang/String;

.field private mCertList:Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;

.field private mCertificateListener:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

.field private mConnectionList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mNewConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

.field private mRequestedCerts:Z

.field private mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCertCommonName(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mCertCommonName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCertList(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mCertList:Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNewConnection(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mNewConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestedCerts(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mRequestedCerts:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCertList(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mCertList:Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequestedCerts(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mRequestedCerts:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveNewConnection(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->saveNewConnection(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$2;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mCertificateListener:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 165
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    .line 166
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mContext:Landroid/content/Context;

    .line 167
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    .line 169
    invoke-interface {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->RegisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 172
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "ConnectionUtils"

    const-string p3, "failed to register cert listener"

    invoke-static {p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    const p2, 0x7f11013c

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, p3}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void

    .line 162
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null argument(s) passed to ConnectionImporter()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static GetAllImportedProfileNames(Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 586
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 587
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->GetAllConnectionNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 589
    invoke-virtual {p0, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 595
    :cond_1
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetProfileName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    .line 596
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 601
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 603
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private createConnection(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "ConnectionUtils"

    if-nez p2, :cond_0

    .line 191
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Invalid null host parameter."

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    move-object p1, p2

    .line 204
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v2

    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mConnectionList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    .line 205
    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->CreateNew()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetName(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetHost(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 209
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "AIDL call failed."

    invoke-static {p2, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static findConnectionByHost(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 6

    const-string v0, "ConnectionUtils"

    const/4 v1, 0x0

    .line 554
    :try_start_0
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object p1

    .line 555
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetAllNames()Ljava/util/List;

    move-result-object v2

    .line 557
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 559
    invoke-interface {p1, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v4

    .line 560
    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 562
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found VpnConnection, "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", with matching host name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    .line 569
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnService aidl call failed."

    invoke-static {p1, v0, v2, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static getConnection(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 4

    const-string v0, "ConnectionUtils"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 486
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p1, "getConnection, Invalid null parameters."

    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p2, :cond_1

    .line 492
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p1, "getConnection, null service passed"

    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    if-eqz p0, :cond_2

    .line 502
    :try_start_0
    invoke-interface {p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_3

    .line 512
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "No connection named, "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", was found."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception p0

    .line 506
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "GetConnectionList failed."

    invoke-static {p1, v0, p2, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_2
    move-object v2, v1

    :cond_3
    if-eqz p1, :cond_5

    if-eqz v2, :cond_4

    .line 523
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 525
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Host name, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", did not match connection "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v0, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 532
    :cond_4
    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->findConnectionByHost(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v2

    :cond_5
    return-object v2
.end method

.method private saveNewConnection(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z
    .locals 4

    const-string v0, "ConnectionUtils"

    const/4 v1, 0x0

    .line 437
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mConnectionList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->Save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->DuplicateName:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v2

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->DuplicateName:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v3

    and-int/2addr v3, p1

    if-ne v2, v3, :cond_0

    const p1, 0x7f1100f2

    .line 449
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 450
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V

    return v1

    .line 454
    :cond_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidHost:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v2

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidHost:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v3

    and-int/2addr v3, p1

    if-ne v2, v3, :cond_1

    const p1, 0x7f1100f4

    .line 456
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 457
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V

    return v1

    .line 461
    :cond_1
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->None:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v2

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->None:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v3

    and-int/2addr p1, v3

    if-eq v2, p1, :cond_2

    .line 463
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Failed to save the new vpn connection entry."

    invoke-static {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 441
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Failed to save the vpn connection."

    invoke-static {v2, v0, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method


# virtual methods
.method public processConnect(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/JniHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cisco/anyconnect/vpn/jni/JniHashMap;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->getConnection(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v0

    const-string v1, "ConnectionUtils"

    const/4 v2, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetActive()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const p1, 0x7f1101fd

    .line 342
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 343
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2, v2, p1, p3}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V

    return v2

    .line 348
    :cond_0
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-interface {v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 353
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "Could not connect to active connection."

    invoke-static {p2, v1, p3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_1
    :goto_0
    if-nez v0, :cond_4

    .line 359
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->get(Landroid/content/Context;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 360
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->blockUserCreateVpnConnection()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Could not find connection and managed config does not allow user to create new VPN connections"

    .line 361
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    .line 365
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->createConnection(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v0

    if-nez v0, :cond_3

    .line 368
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Failed to create a VpnConnection with the given host and name"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 373
    :cond_3
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->saveNewConnection(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z

    move-result p1

    if-nez p1, :cond_4

    const p1, 0x7f1100f3

    .line 375
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 376
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2, v2, p1, p3}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V

    return v2

    .line 383
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.cisco.anyconnect.vpn.android.ACTION_CONNECT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mContext:Landroid/content/Context;

    const-class v1, Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p2, "connection_name"

    .line 385
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_5

    .line 389
    new-instance p2, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;

    invoke-direct {p2, p3}, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/JniHashMap;)V

    const-string p3, "connection_prefill"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 392
    :cond_5
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "connection_success_uri"

    .line 394
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 396
    :cond_6
    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "connection_failure_uri"

    .line 398
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 401
    :cond_7
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    const/4 p3, 0x1

    invoke-interface {p2, p1, p3}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->LaunchActivityOrService(Landroid/content/Intent;Z)V

    .line 402
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 p4, 0x0

    invoke-interface {p1, p3, p4, p2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V

    const-string p1, "sent ACTION_CONNECT for connect uri"

    .line 403
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    return p3
.end method

.method public processCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->createConnection(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mNewConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 235
    iput-object p4, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mCertCommonName:Ljava/lang/String;

    const-string p2, "ConnectionUtils"

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    if-eqz p4, :cond_3

    :cond_0
    if-nez p4, :cond_2

    .line 241
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 244
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mNewConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    sget-object p3, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Automatic:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-virtual {p1, p3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetCertAuthMode(Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mNewConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    sget-object p3, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Disabled:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-virtual {p1, p3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetCertAuthMode(Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;)V

    goto :goto_0

    .line 256
    :cond_2
    sget-object p3, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-virtual {p1, p3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetCertAuthMode(Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;)V

    .line 262
    :try_start_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetClientCertificates()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    iput-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mRequestedCerts:Z

    :cond_3
    :goto_0
    if-eqz p5, :cond_7

    .line 273
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ipsec:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 275
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mNewConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIsIPsecUsed(Z)V

    if-eqz p6, :cond_6

    .line 279
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mNewConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1, p6}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIPsecAuthModeViaURI(Ljava/lang/String;)V

    .line 281
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_GTC:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_MD5:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    .line 282
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_MSCHAPv2:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    .line 283
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_4
    if-nez p7, :cond_5

    .line 287
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mNewConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    const-string p3, ""

    invoke-virtual {p1, p3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIKEIdentity(Ljava/lang/String;)V

    .line 289
    :cond_5
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mNewConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1, p7}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIKEIdentity(Ljava/lang/String;)V

    goto :goto_1

    .line 294
    :cond_6
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mNewConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    sget-object p3, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_ANYCONNECT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {p1, p3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIPsecAuthMode(Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;)V

    goto :goto_1

    .line 299
    :cond_7
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mNewConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIsIPsecUsed(Z)V

    .line 302
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mNewConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertAuthMode()Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    move-result-object p1

    sget-object p3, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    if-ne p1, p3, :cond_9

    return v1

    .line 310
    :cond_9
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mNewConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->saveNewConnection(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z

    move-result p1

    if-nez p1, :cond_a

    const p1, 0x7f1100f3

    .line 312
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 313
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p3, p2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2, v0, p1, p3}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V

    return v0

    .line 318
    :cond_a
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    const p2, 0x7f1100f8

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, v1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V

    return v1

    :catch_0
    move-exception p1

    .line 266
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p4, "GetClientCertificates failed."

    invoke-static {p3, p2, p4, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public processDisconnect(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 409
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.ACTION_DISCONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mContext:Landroid/content/Context;

    const-class v2, Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 412
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "connection_success_uri"

    .line 414
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 417
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "connection_failure_uri"

    .line 419
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 422
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    const/4 p2, 0x1

    invoke-interface {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->LaunchActivityOrService(Landroid/content/Intent;Z)V

    .line 423
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

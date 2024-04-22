.class public Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;
.super Ljava/lang/Object;
.source "CustomTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "TrustManager"


# instance fields
.field private mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

.field private mCertTrusted:Z

.field private mContext:Landroid/content/Context;

.field private mLastTrustedServerCert:Ljava/security/cert/X509Certificate;

.field private mPromptServerCert:Ljava/security/cert/X509Certificate;

.field private final mTrustPromptLock:Ljava/lang/Object;

.field private negativeResponseHandler:Landroid/content/DialogInterface$OnClickListener;

.field private positiveResponseHandler:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPromptServerCert(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;)Ljava/security/cert/X509Certificate;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->mPromptServerCert:Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrustPromptLock(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->mTrustPromptLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCertTrusted(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->mCertTrusted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastTrustedServerCert(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;Ljava/security/cert/X509Certificate;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->mLastTrustedServerCert:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->mTrustPromptLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->mCertTrusted:Z

    .line 88
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->positiveResponseHandler:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager$2;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->negativeResponseHandler:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 59
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected null args passed to CustomTrustManager"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getSystemTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 5

    const-string v0, "TrustManager"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "X509"

    .line 208
    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 209
    move-object v3, v1

    check-cast v3, Ljava/security/KeyStore;

    invoke-virtual {v2, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v2

    .line 218
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Failed to initialize trust factory."

    invoke-static {v3, v0, v4, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :catch_1
    move-exception v2

    .line 213
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "No X509 provider on system."

    invoke-static {v3, v0, v4, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private isCertTrusted([Ljavax/net/ssl/TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)Z
    .locals 5

    .line 237
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 240
    instance-of v4, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_1

    if-eqz p4, :cond_0

    .line 246
    :try_start_0
    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v3, p2, p3}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_1

    .line 250
    :cond_0
    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v3, p2, p3}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "TrustManager"

    const-string p3, "Certificate chain trusted by the system trust manager."

    invoke-static {p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo v1, "unexpected CustomTrustManager.checkClientTrusted call."

    const-string v2, "TrustManager"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->getSystemTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->isCertTrusted([Ljavax/net/ssl/TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance p1, Ljava/security/cert/CertificateException;

    invoke-direct {p1}, Ljava/security/cert/CertificateException;-><init>()V

    throw p1

    .line 72
    :cond_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "null systemtrustmanagers"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "could not get the trustmanagers required to validate cert"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 117
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 124
    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->mLastTrustedServerCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v2}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 130
    :cond_1
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->getSystemTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 133
    invoke-direct {p0, v1, p1, p2, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->isCertTrusted([Ljavax/net/ssl/TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 141
    :cond_2
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "TrustManager"

    const-string v2, "Server certificate not trusted by system trust manager."

    invoke-static {p2, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->mPromptServerCert:Ljava/security/cert/X509Certificate;

    .line 147
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->mContext:Landroid/content/Context;

    const v0, 0x7f110321

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->positiveResponseHandler:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->negativeResponseHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {p1, p2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportAlertCB(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 155
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->mTrustPromptLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :try_start_1
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->mTrustPromptLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V

    .line 158
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    iget-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->mCertTrusted:Z

    if-eqz p1, :cond_3

    .line 168
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "TrustManager"

    const-string v0, "User trusted the server certificate."

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 174
    :cond_3
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Certificate trust prompt not accepted."

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p2

    .line 158
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 162
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "TrustManager"

    const-string v1, "Wait for on user to trust cert has been interrupted"

    invoke-static {p2, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 119
    :cond_4
    :goto_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "TrustManager"

    const-string v0, "Unexpected null/empty chain"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 6

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->getSystemTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 187
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "TrustManager"

    const-string v3, "no trust managers returned, returning empty list"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0

    .line 191
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 194
    instance-of v5, v4, Ljavax/net/ssl/X509TrustManager;

    if-eqz v5, :cond_1

    .line 196
    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v4}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 200
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.class public Lcom/cisco/android/nchs/support/CertificateManager;
.super Ljava/lang/Object;
.source "CertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;
    }
.end annotation


# static fields
.field private static final AUTH_TYPE:Ljava/lang/String; = "RSA"

.field public static final CERTIFICATE_ADMIN_CLIENT_TAG:Ljava/lang/String; = "CERTIFICATE_ADMIN_TAG"

.field public static final CERTIFICATE_ADMIN_SERVER_TAG:Ljava/lang/String; = "CERTIFICATE_MDM_SERVER_TAG"

.field public static final CERTIFICATE_DEFAULT_GROUP:Ljava/lang/String; = "com.cisco.android.nchs.support.CERTIFICATE_DEFAULT_GROUP"

.field public static final CERTIFICATE_MDM_PROVISIONED_TAG:Ljava/lang/String; = "CERTIFICATE_MDM_PROVISIONED_TAG"

.field public static final CERTIFICATE_VPN_TAG:Ljava/lang/String; = "CERTIFICATE_VPN_TAG"

.field private static final CERT_CHAIN_CACHE_SIZE:I = 0xa

.field private static final CLIENT_KEYSTORE_FILENAME:Ljava/lang/String; = "anyconnect_client_certs.bks"

.field protected static final CLIENT_KEYSTORE_TYPE:Ljava/lang/String; = "BKS"

.field private static final ENTITY_NAME:Ljava/lang/String; = "CertificateManager"

.field private static final KEYCHAIN_ALIAS_FILENAME:Ljava/lang/String; = "aliases"

.field public static final KEYSTORE_PREFIX_ANDROID:Ljava/lang/String; = "ANDROID/"

.field public static final KEYSTORE_PREFIX_ANYCONNECT:Ljava/lang/String; = "AC/"

.field public static final KEYSTORE_PREFIX_KEYCHAIN:Ljava/lang/String; = "KEYCHAIN/"

.field public static final KEYSTORE_PREFIX_KNOX_TIMA:Ljava/lang/String; = "KNOX_TIMA/"

.field public static final KEYSTORE_PREFIX_SYSTEM:Ljava/lang/String; = "SYS/"

.field public static final KEYSTORE_PREFIX_YUBIKEY:Ljava/lang/String; = "YUBIKEY/"

.field public static final KU_CRL_SIGN:I = 0x2

.field public static final KU_DATA_ENCIPHERMENT:I = 0x10

.field public static final KU_DECIPHER_ONLY:I = 0x8000

.field public static final KU_DIGITAL_SIGNATURE:I = 0x80

.field public static final KU_ENCIPHER_ONLY:I = 0x1

.field public static final KU_KEY_AGREEMENT:I = 0x8

.field public static final KU_KEY_CERT_SIGN:I = 0x4

.field public static final KU_KEY_ENCIPHERMENT:I = 0x20

.field public static final KU_NON_REPUDIATION:I = 0x40

.field private static final PASSWORD_CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final RESULT_BAD:I = -0x1

.field public static final RESULT_CONFIRM_EXPIRED:I = 0x4

.field public static final RESULT_CONFIRM_INVALID_KEY_USE:I = 0x20

.field public static final RESULT_CONFIRM_NAME_MISMATCH:I = 0x2

.field public static final RESULT_CONFIRM_NOT_VALID_YET:I = 0x8

.field public static final RESULT_CONFIRM_UNSPECIFIED:I = 0x1

.field public static final RESULT_CONFIRM_UNTRUSTED_SOURCE:I = 0x10

.field public static final RESULT_GOOD:I = 0x0

.field private static final ROOT_KEYSTORE_FILENAME:Ljava/lang/String; = "anyconnect_certs.bks"

.field protected static final ROOT_KEYSTORE_TYPE:Ljava/lang/String;

.field private static final SERVER_KEY_USAGE:I = 0x4

.field private static final TRUSTED_KEYSTORE_FILENAME:Ljava/lang/String; = "anyconnect_trusted_certs.bks"

.field private static final TRUST_MANAGER_ALG:Ljava/lang/String; = "X509"


# instance fields
.field private mCategoryToCertGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cisco/android/nchs/support/FileCache<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mCertChainCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mClientPrivKeyPassword:Ljava/lang/String;

.field private mClientStorePassword:Ljava/lang/String;

.field private mCodeSigningCert:Ljava/security/cert/X509Certificate;

.field private final mContext:Landroid/content/Context;

.field private mHostnameMgr:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private final mKeyChainAliasList:Lcom/cisco/android/nchs/support/FileCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cisco/android/nchs/support/FileCache<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeychainAliasList:Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;

.field private mKeystorePath:Ljava/lang/String;

.field private mLocalTrustMgr:Ljavax/net/ssl/X509TrustManager;

.field private mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

.field private mNchs:Lcom/cisco/android/nchs/NetworkComponentHostService;

.field private mRootStorePassword:Ljava/lang/String;

.field private mSystemCertMgr:Lcom/cisco/android/nchs/support/SystemCertificateManager;

.field private mSystemTrustMgr:Ljavax/net/ssl/X509TrustManager;

.field private mTrustedKeyStore:Ljava/security/KeyStore;

.field private mYubikeyStore:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;


# direct methods
.method static bridge synthetic -$$Nest$fgetmKeyChainAliasList(Lcom/cisco/android/nchs/support/CertificateManager;)Lcom/cisco/android/nchs/support/FileCache;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mKeyChainAliasList:Lcom/cisco/android/nchs/support/FileCache;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 176
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cisco/android/nchs/support/CertificateManager;->ROOT_KEYSTORE_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cisco/android/nchs/NetworkComponentHostService;)V
    .locals 4

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mSystemTrustMgr:Ljavax/net/ssl/X509TrustManager;

    .line 227
    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mLocalTrustMgr:Ljavax/net/ssl/X509TrustManager;

    .line 228
    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mHostnameMgr:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 229
    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mTrustedKeyStore:Ljava/security/KeyStore;

    .line 230
    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCodeSigningCert:Ljava/security/cert/X509Certificate;

    .line 232
    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mRootStorePassword:Ljava/lang/String;

    .line 233
    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mClientStorePassword:Ljava/lang/String;

    .line 234
    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mClientPrivKeyPassword:Ljava/lang/String;

    .line 243
    new-instance v0, Lcom/cisco/android/nchs/support/CertificateManager$1;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/support/CertificateManager$1;-><init>(Lcom/cisco/android/nchs/support/CertificateManager;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mKeychainAliasList:Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;

    .line 359
    new-instance v0, Lcom/cisco/android/nchs/support/CertificateManager$2;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/support/CertificateManager$2;-><init>(Lcom/cisco/android/nchs/support/CertificateManager;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCertChainCache:Ljava/util/HashMap;

    .line 262
    iput-object p1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mContext:Landroid/content/Context;

    .line 264
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "aliases"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 265
    new-instance v1, Lcom/cisco/android/nchs/support/FileCache;

    invoke-direct {v1, v0}, Lcom/cisco/android/nchs/support/FileCache;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mKeyChainAliasList:Lcom/cisco/android/nchs/support/FileCache;

    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCategoryToCertGroupMap:Ljava/util/Map;

    .line 268
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "CERTIFICATE_ADMIN_TAG"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCategoryToCertGroupMap:Ljava/util/Map;

    new-instance v3, Lcom/cisco/android/nchs/support/FileCache;

    invoke-direct {v3, v0}, Lcom/cisco/android/nchs/support/FileCache;-><init>(Ljava/io/File;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "CERTIFICATE_MDM_SERVER_TAG"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCategoryToCertGroupMap:Ljava/util/Map;

    new-instance v3, Lcom/cisco/android/nchs/support/FileCache;

    invoke-direct {v3, v0}, Lcom/cisco/android/nchs/support/FileCache;-><init>(Ljava/io/File;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "CERTIFICATE_MDM_PROVISIONED_TAG"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCategoryToCertGroupMap:Ljava/util/Map;

    new-instance v3, Lcom/cisco/android/nchs/support/FileCache;

    invoke-direct {v3, v0}, Lcom/cisco/android/nchs/support/FileCache;-><init>(Ljava/io/File;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "CERTIFICATE_VPN_TAG"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCategoryToCertGroupMap:Ljava/util/Map;

    new-instance v3, Lcom/cisco/android/nchs/support/FileCache;

    invoke-direct {v3, v0}, Lcom/cisco/android/nchs/support/FileCache;-><init>(Ljava/io/File;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iput-object p2, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mNchs:Lcom/cisco/android/nchs/NetworkComponentHostService;

    .line 277
    new-instance v0, Lcom/cisco/android/nchs/support/SystemCertificateManager;

    invoke-direct {v0, p1, p2}, Lcom/cisco/android/nchs/support/SystemCertificateManager;-><init>(Landroid/content/Context;Lcom/cisco/android/nchs/NetworkComponentHostService;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mSystemCertMgr:Lcom/cisco/android/nchs/support/SystemCertificateManager;

    return-void
.end method

.method private buildVerifyCertChain([Ljava/security/cert/X509Certificate;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CertificateManager"

    if-nez p2, :cond_0

    .line 1316
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "buildVerifyCertChain: null cert list"

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1322
    :try_start_0
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/support/CertificateManager;->getPKIXParameters([Ljava/security/cert/X509Certificate;)Ljava/security/cert/PKIXParameters;

    move-result-object v2

    .line 1323
    invoke-virtual {v2, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    const-string v3, "PKIX"

    .line 1325
    invoke-static {v3}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v3

    .line 1326
    invoke-virtual {v3, v2}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v2

    check-cast v2, Ljava/security/cert/PKIXCertPathBuilderResult;

    .line 1327
    invoke-virtual {v2}, Ljava/security/cert/PKIXCertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    .line 1328
    invoke-virtual {v2}, Ljava/security/cert/PKIXCertPathBuilderResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v2

    .line 1329
    invoke-virtual {v3}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    .line 1331
    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1333
    :cond_1
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1338
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "buildVerifyCertChain: build chain failed"

    invoke-static {v3, v0, v4, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1342
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1344
    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1346
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private checkTrustManager(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/KeyStore;)I
    .locals 11

    const-string v0, "): the certificate chain cannot be validated: "

    const-string v1, "): the certificate is not valid yet: "

    const-string v2, "): the certificate has expired: "

    const-string v3, "CertificateManager"

    const-string v4, "checkTrustManager ("

    const/16 v5, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 1128
    :try_start_0
    aget-object v8, p2, v7

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x0

    goto :goto_0

    :catch_0
    const/16 v8, 0x8

    goto :goto_0

    :catch_1
    const/4 v8, 0x4

    :goto_0
    const/4 v9, -0x1

    :try_start_1
    const-string v10, "RSA"

    .line 1144
    invoke-interface {p1, p2, v10}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 1151
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v10, "Validating certificate path..."

    invoke-static {p1, v3, v10}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "X.509"

    .line 1152
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    .line 1153
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1154
    invoke-virtual {p1, p2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object p1

    .line 1156
    new-instance p2, Ljava/security/cert/PKIXParameters;

    invoke-direct {p2, p4}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/security/KeyStore;)V

    .line 1157
    invoke-virtual {p2, v7}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 1158
    invoke-static {}, Ljava/security/cert/CertPathValidator;->getDefaultType()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object p4

    .line 1159
    invoke-virtual {p4, p1, p2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    .line 1162
    :cond_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "): the certificate is trusted"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    return v7

    :catch_2
    move-exception p1

    .line 1240
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "): NoSuchAlgorithmException. "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :catch_3
    move-exception p1

    .line 1235
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "): InvalidAlgorithmParameterException. "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :catch_4
    move-exception p1

    .line 1230
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "): KeyStoreException. "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :catch_5
    move-exception p1

    .line 1193
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_4

    .line 1197
    instance-of p4, p2, Ljava/security/cert/CertificateExpiredException;

    if-eqz p4, :cond_1

    .line 1200
    sget-object p4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    or-int/lit8 v8, v8, 0x4

    goto :goto_2

    .line 1204
    :cond_1
    instance-of p4, p2, Ljava/security/cert/CertificateNotYetValidException;

    if-eqz p4, :cond_2

    .line 1207
    sget-object p4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    or-int/lit8 v8, v8, 0x8

    goto :goto_2

    .line 1211
    :cond_2
    instance-of p4, p2, Ljava/security/cert/CertPathValidatorException;

    if-eqz p4, :cond_3

    .line 1213
    sget-object p4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    or-int/lit8 v8, v8, 0x10

    goto :goto_2

    .line 1218
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_1

    :cond_4
    :goto_2
    if-nez p2, :cond_5

    .line 1224
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "): the certificate chain cannot be validated or is not trusted: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_6
    move-exception p1

    .line 1185
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    or-int/lit8 v8, v8, 0x10

    goto :goto_4

    :catch_7
    move-exception p1

    .line 1180
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    or-int/2addr v8, v5

    goto :goto_4

    :catch_8
    move-exception p1

    .line 1174
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    or-int/2addr v8, v6

    :cond_5
    :goto_4
    return v8

    :catch_9
    move-exception p1

    .line 1168
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "): bad certificate encoding: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v9
.end method

.method private createTrustManager(Ljava/security/KeyStore;Ljava/lang/String;)Ljavax/net/ssl/X509TrustManager;
    .locals 8

    const-string v0, "CertificateManager"

    const-string v1, "createTrustManager: got first of "

    const-string v2, " TrustManager for X509 with key store="

    const-string v3, "createTrustManager: no "

    const-string v4, "X509"

    const/4 v5, 0x0

    .line 1054
    :try_start_0
    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    .line 1057
    invoke-virtual {v4, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1059
    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1061
    array-length v6, v4

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    aget-object v6, v4, v6

    instance-of v7, v6, Ljavax/net/ssl/X509TrustManager;

    if-nez v7, :cond_0

    goto :goto_0

    .line 1067
    :cond_0
    check-cast v6, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1068
    :try_start_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " managers: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v6

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v5, v6

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v5, v6

    goto :goto_2

    .line 1063
    :cond_1
    :goto_0
    :try_start_2
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 1077
    :goto_1
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createTrustManager: failed to initialize "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TrustManagerFactory with X509 keystore: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    move-exception p1

    .line 1073
    :goto_2
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createTrustManager: no TrustManagerFactory for algorithm=X509: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v5
.end method

.method private deleteKeyStoreEntry(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 913
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 920
    :cond_0
    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 925
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteKeyStoreEntry: exception deleting alias="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CertificateManager"

    invoke-static {v1, p3, p2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static derToX509Certificate([B)Ljava/security/cert/X509Certificate;
    .locals 6

    const-string v0, "CertificateManager"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "X509"

    .line 1095
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 1096
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1097
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1098
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    .line 1106
    :goto_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "derToX509Certificate: IOException while parsing certificate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception p0

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    .line 1102
    :goto_1
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "derToX509Certificate: CertificateException while parsing certificate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object p0
.end method

.method private dumpCertAliasesMap()V
    .locals 5

    .line 2831
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCategoryToCertGroupMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2833
    iget-object v2, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCategoryToCertGroupMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/android/nchs/support/FileCache;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/support/FileCache;->getContainer()Ljava/util/HashMap;

    move-result-object v1

    .line 2834
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2835
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getACTrustedKeystore()Ljava/security/KeyStore;
    .locals 3

    .line 1619
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getRootKeyStoreFile()Ljava/lang/String;

    move-result-object v0

    .line 1620
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getRootKeyStorePassword()Ljava/lang/String;

    move-result-object v1

    .line 1622
    sget-object v2, Lcom/cisco/android/nchs/support/CertificateManager;->ROOT_KEYSTORE_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/cisco/android/nchs/support/CertificateManager;->openKeyStoreFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1626
    invoke-virtual {p0, v1, v2}, Lcom/cisco/android/nchs/support/CertificateManager;->createKeyStore(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1629
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "CertificateManager"

    const-string v2, "getACTrustedKeystore: failed to create root store!"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private getPKIXParameters([Ljava/security/cert/X509Certificate;)Ljava/security/cert/PKIXParameters;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1282
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1283
    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mSystemTrustMgr:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 1284
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 1286
    new-instance v6, Ljava/security/cert/TrustAnchor;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1289
    :cond_0
    new-instance v1, Ljava/security/cert/X509CertSelector;

    invoke-direct {v1}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 1290
    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 1291
    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setSubject(Ljava/lang/String;)V

    .line 1293
    new-instance v2, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {v2, v0, v1}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V

    .line 1295
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "Collection"

    .line 1296
    new-instance v1, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {v1, p1}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object p1

    .line 1297
    invoke-virtual {v2, p1}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 1303
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "CertificateManager"

    const-string v2, "getPKIXParameters: failed"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1304
    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-direct {v0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private initializeHostnameVerifier()Z
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mHostnameMgr:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mHostnameMgr:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mHostnameMgr:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initializeLocalTrustManager()Z
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mLocalTrustMgr:Ljavax/net/ssl/X509TrustManager;

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mTrustedKeyStore:Ljava/security/KeyStore;

    const-string v1, "local"

    invoke-direct {p0, v0, v1}, Lcom/cisco/android/nchs/support/CertificateManager;->createTrustManager(Ljava/security/KeyStore;Ljava/lang/String;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mLocalTrustMgr:Ljavax/net/ssl/X509TrustManager;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mLocalTrustMgr:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initializeSystemTrustManager()Z
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mSystemTrustMgr:Ljavax/net/ssl/X509TrustManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "system"

    .line 403
    invoke-direct {p0, v0, v1}, Lcom/cisco/android/nchs/support/CertificateManager;->createTrustManager(Ljava/security/KeyStore;Ljava/lang/String;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mSystemTrustMgr:Ljavax/net/ssl/X509TrustManager;

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mSystemTrustMgr:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initializeTrustedKeyStore()Z
    .locals 6

    .line 432
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mTrustedKeyStore:Ljava/security/KeyStore;

    const/4 v1, 0x1

    const-string v2, "CertificateManager"

    if-eqz v0, :cond_0

    .line 434
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "initializeTrustedKeyStore: local KeyStore already initialized"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getRootKeyStoreFile()Ljava/lang/String;

    move-result-object v0

    .line 441
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getRootKeyStorePassword()Ljava/lang/String;

    move-result-object v3

    .line 452
    sget-object v4, Lcom/cisco/android/nchs/support/CertificateManager;->ROOT_KEYSTORE_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v4}, Lcom/cisco/android/nchs/support/CertificateManager;->openKeyStoreFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mTrustedKeyStore:Ljava/security/KeyStore;

    if-nez v0, :cond_2

    .line 455
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "initializeTrustedKeyStore: failed to get local KeyStore"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_2
    return v1

    .line 445
    :cond_3
    :goto_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initializeTrustedKeyStore: no existing file for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method private isCertInGroups(Ljava/lang/String;)Z
    .locals 3

    .line 2482
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCategoryToCertGroupMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/android/nchs/support/FileCache;

    .line 2484
    invoke-virtual {v1}, Lcom/cisco/android/nchs/support/FileCache;->getContainer()Ljava/util/HashMap;

    move-result-object v1

    .line 2485
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2487
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private isTrustedLeaf(Ljava/security/cert/X509Certificate;)Z
    .locals 5

    const-string v0, "CertificateManager"

    const-string v1, "isTrustedLeaf: alias=\'"

    .line 1259
    :try_start_0
    iget-object v2, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mTrustedKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, p1}, Ljava/security/KeyStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1260
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1262
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' for cert: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 1268
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "isTrustedLeaf: problem with keystore: "

    invoke-static {v1, v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private openKeyStoreStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 2

    const-string v0, "CertificateManager"

    .line 858
    :try_start_0
    invoke-static {p3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p3

    .line 859
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 892
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "openKeyStoreStream: unhandled exception: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 888
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "openKeyStoreStream: is this DER/CER format? got exception: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 878
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "openKeyStoreStream: failed to read stream for local keystore: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 874
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "openKeyStoreStream: certificate error for local keystore: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 870
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "openKeyStoreStream: keystore error for local keystore: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_5
    move-exception p1

    .line 866
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "openKeyStoreStream: bad algorithm for local keystore: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p3, 0x0

    :goto_1
    return-object p3
.end method

.method private saveKeyStore(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "CertificateManager"

    .line 771
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 773
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 774
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 795
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "saveKeyStore: IOException: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 791
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "saveKeyStore: CertificateException: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 787
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "saveKeyStore: NoSuchAlgorithmException: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 783
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "saveKeyStore: KeyStoreException: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 779
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "saveKeyStore: FileNotFoundException: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public static updateCertMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStore;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cisco/android/nchs/support/FileCache<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cisco/android/nchs/aidl/NCHSCertStore;",
            "Z)V"
        }
    .end annotation

    .line 1728
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1729
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1730
    invoke-static/range {v0 .. v5}, Lcom/cisco/android/nchs/support/CertificateManager;->updateCertMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStore;Z)V

    return-void
.end method

.method public static updateCertMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStore;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cisco/android/nchs/support/FileCache<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/cisco/android/nchs/aidl/NCHSCertStore;",
            "Z)V"
        }
    .end annotation

    .line 1735
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 1738
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1740
    invoke-static/range {v0 .. v5}, Lcom/cisco/android/nchs/support/CertificateManager;->updateCertMap(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStore;Z)V

    return-void
.end method

.method public static updateCertMap(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStore;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cisco/android/nchs/support/FileCache<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cisco/android/nchs/aidl/NCHSCertStore;",
            "Z)V"
        }
    .end annotation

    .line 1745
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1746
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1747
    invoke-static/range {v0 .. v5}, Lcom/cisco/android/nchs/support/CertificateManager;->updateCertMap(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStore;Z)V

    return-void
.end method

.method public static updateCertMap(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStore;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cisco/android/nchs/support/FileCache<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/cisco/android/nchs/aidl/NCHSCertStore;",
            "Z)V"
        }
    .end annotation

    .line 1760
    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cisco/android/nchs/support/FileCache;

    .line 1761
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/FileCache;->getContainer()Ljava/util/HashMap;

    move-result-object p4

    const-string v0, ": "

    const-string v1, "/"

    const-string v2, "CertificateManager"

    if-eqz p5, :cond_3

    if-eqz p1, :cond_0

    .line 1764
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1766
    :cond_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "No group id for this cert(s) adding to default group: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, v2, p4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p4, "com.cisco.android.nchs.support.CERTIFICATE_DEFAULT_GROUP"

    .line 1768
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1771
    :cond_1
    sget-object p4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v3, "Updating cert map: Adding certificate(s) to group(s) "

    invoke-direct {p5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, v2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 1775
    invoke-virtual {p0, p3}, Lcom/cisco/android/nchs/support/FileCache;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    if-nez p4, :cond_2

    .line 1778
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 1781
    :cond_2
    invoke-interface {p4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1782
    invoke-virtual {p0, p3, p4}, Lcom/cisco/android/nchs/support/FileCache;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1789
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_7

    .line 1791
    sget-object p4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v3, "Updating cert map: Removing certificate(s) from group(s) "

    invoke-direct {p5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, v2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 1794
    invoke-virtual {p0, p3}, Lcom/cisco/android/nchs/support/FileCache;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    if-eqz p4, :cond_4

    .line 1797
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1798
    invoke-interface {p5, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 1800
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 1802
    invoke-virtual {p0, p3}, Lcom/cisco/android/nchs/support/FileCache;->remove(Ljava/lang/String;)Z

    goto :goto_1

    .line 1806
    :cond_5
    invoke-virtual {p0, p3, p5}, Lcom/cisco/android/nchs/support/FileCache;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    return-void

    .line 1814
    :cond_7
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "Removing certificate(s) from all groups: "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, v2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 1817
    new-instance p4, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Collection;

    invoke-direct {p4, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1818
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result p5

    if-eqz p5, :cond_8

    .line 1820
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_9

    .line 1822
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/cisco/android/nchs/support/FileCache;->remove(Ljava/lang/String;)Z

    goto :goto_2

    .line 1826
    :cond_9
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3, p4}, Lcom/cisco/android/nchs/support/FileCache;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    return-void
.end method

.method private updateChainCache(Ljava/lang/String;[Ljava/security/cert/Certificate;)V
    .locals 3

    .line 2355
    array-length v0, p2

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    .line 2356
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 2358
    aget-object v2, p2, v1

    check-cast v2, Ljava/security/cert/X509Certificate;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2361
    :cond_0
    iget-object p2, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCertChainCache:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static verifyExtendedKeyUse(Ljava/security/cert/X509Certificate;[Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;)Z
    .locals 7

    const/4 v0, 0x0

    const-string v1, "CertificateManager"

    if-nez p0, :cond_0

    .line 1903
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo p1, "verifyExtendedKeyUse: no certficate"

    invoke-static {p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v2, 0x1

    if-eqz p1, :cond_6

    .line 1907
    array-length v3, p1

    if-nez v3, :cond_1

    goto/16 :goto_1

    .line 1916
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    .line 1926
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo p1, "verifyExtendedKeyUse: certificate has no extended key uses specified"

    invoke-static {p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1931
    :cond_2
    array-length v3, p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 1933
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "verifyExtendedKeyUse: not enough required elements: required = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", certificate="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1937
    :cond_3
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, p1, v4

    .line 1939
    invoke-virtual {v5}, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1941
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "verifyExtendedKeyUse: missing required use="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1946
    :cond_5
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "verifyExtendedKeyUse: got all "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " required uses"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catch_0
    move-exception p0

    .line 1920
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "verifyExtendedKeyUse: failed to get extended usages:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1909
    :cond_6
    :goto_1
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo p1, "verifyExtendedKeyUse: no required uses"

    invoke-static {p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method protected convertKeystorePasswords(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 951
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 954
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const-string v2, "CertificateManager"

    if-eqz p5, :cond_a

    if-nez p3, :cond_1

    goto/16 :goto_3

    .line 966
    :cond_1
    invoke-virtual {p0, p1, p5, p2}, Lcom/cisco/android/nchs/support/CertificateManager;->openKeyStoreFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 969
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "convertKeystorePasswords: already converted to new password"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 974
    :cond_2
    invoke-virtual {p0, p1, p3, p2}, Lcom/cisco/android/nchs/support/CertificateManager;->openKeyStoreFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p2

    if-nez p2, :cond_3

    .line 977
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "convertKeystorePasswords: failed to open keystore="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with old password"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 984
    :cond_3
    :try_start_0
    invoke-virtual {p2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p3

    .line 985
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 988
    invoke-virtual {p2, v4}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_7

    if-nez p6, :cond_5

    goto :goto_1

    .line 1001
    :cond_5
    invoke-virtual {p2, v4}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v5

    .line 1002
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {p2, v4, v6}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v6

    if-nez v6, :cond_6

    .line 1005
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "convertKeystorePasswords: failed to update private key for keystore="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1010
    :cond_6
    invoke-virtual {p6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {p2, v4, v6, v7, v5}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    goto :goto_0

    .line 996
    :cond_7
    :goto_1
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "convertKeystorePasswords: null private key password for keystore="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1013
    :cond_8
    invoke-direct {p0, p2, p1, p5}, Lcom/cisco/android/nchs/support/CertificateManager;->saveKeyStore(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 1016
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "convertKeystorePasswords: failed to save updated keystore="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1020
    :cond_9
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "convertKeystorePasswords: converted keystore with "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " entries"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p2

    .line 1033
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "convertKeystorePasswords: UnrecoverableKeyException updating keystore="

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v2, p1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p2

    .line 1029
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "convertKeystorePasswords: NoSuchAlgorithmException updating keystore="

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v2, p1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception p2

    .line 1025
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "convertKeystorePasswords: KeyStoreException updating keystore="

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v2, p1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return v0

    .line 961
    :cond_a
    :goto_3
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "convertKeystorePasswords: cannot have a null password"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method protected createKeyStore(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 4

    const-string v0, "CertificateManager"

    const/4 v1, 0x0

    .line 734
    :try_start_0
    invoke-static {p2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p2

    .line 735
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 752
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createKeyStore: IOException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 748
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createKeyStore: CertificateException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 744
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createKeyStore: NoSuchAlgorithmException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 740
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createKeyStore: KeyStoreException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public deleteCertificate(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStore;)Z
    .locals 3

    .line 2735
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->SYSTEM:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    const/4 v1, 0x0

    const-string v2, "CertificateManager"

    if-eq v0, p2, :cond_1

    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ALL:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 2746
    :cond_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Not implemented"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2737
    :cond_1
    :goto_0
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ALL:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    if-ne v0, p2, :cond_2

    .line 2740
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Cannot delete one certificate from local store: Not implemented"

    invoke-static {p2, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    :cond_2
    sget-object p2, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_OPERATION_SUCCESS:Lcom/cisco/android/nchs/aidl/CertOpCode;

    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mSystemCertMgr:Lcom/cisco/android/nchs/support/SystemCertificateManager;

    invoke-virtual {v0, p1}, Lcom/cisco/android/nchs/support/SystemCertificateManager;->deleteCertificate(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/CertOpCode;

    move-result-object p1

    if-ne p2, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public declared-synchronized deleteCertificates([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 2376
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2377
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2378
    invoke-virtual {p0, p1, v0, p3}, Lcom/cisco/android/nchs/support/CertificateManager;->deleteCertificates([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteCertificates([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    .line 2390
    :try_start_0
    array-length v0, v2

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 2396
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getRootKeyStoreFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2397
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2403
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getRootKeyStoreFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getRootKeyStorePassword()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/cisco/android/nchs/support/CertificateManager;->ROOT_KEYSTORE_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v0, v4, v6}, Lcom/cisco/android/nchs/support/CertificateManager;->openKeyStoreFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2406
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v6, "CertificateManager"

    const-string v7, "deleteCertificates: failed to open root store"

    invoke-static {v4, v6, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v4, v0

    goto :goto_1

    .line 2399
    :cond_3
    :goto_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "CertificateManager"

    const-string v6, "deleteCertificates: no existing root store"

    invoke-static {v0, v4, v6}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 2412
    :goto_1
    array-length v6, v2

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v7, v6, :cond_a

    aget-object v15, v2, v7

    if-eqz v15, :cond_9

    .line 2416
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    goto/16 :goto_7

    .line 2422
    :cond_4
    iget-object v9, v1, Lcom/cisco/android/nchs/support/CertificateManager;->mCategoryToCertGroupMap:Ljava/util/Map;

    sget-object v13, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ANYCONNECT:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    const/4 v14, 0x0

    move-object/from16 v10, p2

    move-object v11, v15

    move-object/from16 v12, p3

    invoke-static/range {v9 .. v14}, Lcom/cisco/android/nchs/support/CertificateManager;->updateCertMap(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStore;Z)V

    const/4 v9, 0x1

    if-eqz v4, :cond_5

    const-string v10, "root store certificate"

    .line 2424
    invoke-direct {v1, v4, v15, v10}, Lcom/cisco/android/nchs/support/CertificateManager;->deleteKeyStoreEntry(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2429
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v8, "CertificateManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteCertificates: deleted cert="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from root keystore"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v8, v10}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x1

    goto :goto_3

    :cond_5
    move v10, v8

    move v8, v0

    const/4 v0, 0x0

    .line 2434
    :goto_3
    :try_start_1
    iget-object v11, v1, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    invoke-virtual {v11, v15}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->deleteCert(Ljava/lang/String;)Z

    move-result v11
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_6

    .line 2440
    :try_start_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v10, "CertificateManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deleteCertificates: deleted cert="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " from client keystore"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v10, v11}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/cert/CertStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_6
    move v9, v10

    .line 2449
    :goto_4
    :try_start_3
    iget-object v10, v1, Lcom/cisco/android/nchs/support/CertificateManager;->mCertChainCache:Ljava/util/HashMap;

    invoke-virtual {v10, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2451
    iget-object v10, v1, Lcom/cisco/android/nchs/support/CertificateManager;->mCertChainCache:Ljava/util/HashMap;

    invoke-virtual {v10, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-nez v0, :cond_8

    .line 2456
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v10, "CertificateManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deleteCertificates: did not delete alias="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v10, v11}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    move v0, v8

    move v8, v9

    goto :goto_8

    :catch_1
    move-exception v0

    move v9, v10

    .line 2445
    :goto_6
    sget-object v10, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v11, "CertificateManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to delete cert: alias="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 2418
    :cond_9
    :goto_7
    sget-object v9, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v10, "CertificateManager"

    const-string v11, "deleteCertificates: given null or empty certificate alias"

    invoke-static {v9, v10, v11}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_a
    if-eqz v0, :cond_c

    .line 2463
    invoke-virtual/range {p0 .. p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getRootKeyStoreFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getRootKeyStorePassword()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v0, v2}, Lcom/cisco/android/nchs/support/CertificateManager;->saveKeyStore(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2465
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "CertificateManager"

    const-string v3, "deleteCertificates: failed to save root KeyStore"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2467
    :cond_b
    iput-object v5, v1, Lcom/cisco/android/nchs/support/CertificateManager;->mTrustedKeyStore:Ljava/security/KeyStore;

    .line 2468
    iput-object v5, v1, Lcom/cisco/android/nchs/support/CertificateManager;->mLocalTrustMgr:Ljavax/net/ssl/X509TrustManager;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2471
    :cond_c
    monitor-exit p0

    return v8

    .line 2392
    :cond_d
    :goto_9
    :try_start_4
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "CertificateManager"

    const-string v4, "deleteCertificates: empty or null list provided"

    invoke-static {v0, v2, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2393
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method public deleteGroupOfCertificates(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStore;)Z
    .locals 2

    .line 2753
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ANYCONNECT:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    const-string v1, "CertificateManager"

    if-eq v0, p3, :cond_1

    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ALL:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    if-ne v0, p3, :cond_0

    goto :goto_0

    .line 2764
    :cond_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Not implemented"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 2755
    :cond_1
    :goto_0
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ALL:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    if-ne v0, p3, :cond_2

    .line 2758
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Cannot delete group of certificates from system store: Not implemented"

    invoke-static {p3, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2760
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/cisco/android/nchs/support/CertificateManager;->deleteGroupOfCertificatesFromLocalStore(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized deleteGroupOfCertificatesFromLocalStore(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "Deleting certificate(s) with id: "

    monitor-enter p0

    .line 2777
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->dumpCertAliasesMap()V

    .line 2779
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2780
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2783
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2784
    iget-object v2, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCategoryToCertGroupMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/android/nchs/support/FileCache;

    invoke-virtual {v2, p1}, Lcom/cisco/android/nchs/support/FileCache;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2785
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "CertificateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2791
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2792
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCategoryToCertGroupMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/android/nchs/support/FileCache;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/FileCache;->getContainer()Ljava/util/HashMap;

    move-result-object v0

    .line 2793
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2795
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2798
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    const/4 v0, 0x0

    if-nez v2, :cond_3

    if-eqz p1, :cond_2

    .line 2805
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "CertificateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to find certificates for given ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " & tag "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2809
    :cond_2
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "CertificateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to find certificates for given tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2811
    :goto_2
    monitor-exit p0

    return v0

    .line 2814
    :cond_3
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 2815
    array-length v3, p1

    const-class v4, [Ljava/lang/String;

    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 2816
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "CertificateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting certificate(s) from groups: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " certs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2817
    invoke-virtual {p0, p1, v1, p2}, Lcom/cisco/android/nchs/support/CertificateManager;->deleteCertificates([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    .line 2819
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 2823
    :cond_4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public enableYubikey(Z)V
    .locals 1

    .line 2976
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mYubikeyStore:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->enableYubikey(Z)V

    return-void
.end method

.method public declared-synchronized enumerateClientCertificates()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 2041
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2044
    :try_start_1
    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->getClientCerts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;

    .line 2046
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;->getX509()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2055
    :cond_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 2051
    :try_start_2
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "CertificateManager"

    const-string v3, "Exception on retrieving client certs"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2052
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getACCerts(ZLjava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/CertificateChain;
    .locals 5

    .line 2902
    new-instance v0, Lcom/cisco/android/nchs/aidl/CertificateChain;

    invoke-direct {v0}, Lcom/cisco/android/nchs/aidl/CertificateChain;-><init>()V

    .line 2903
    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCategoryToCertGroupMap:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cisco/android/nchs/support/FileCache;

    invoke-virtual {p3, p2}, Lcom/cisco/android/nchs/support/FileCache;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_5

    .line 2904
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string p3, "CertificateManager"

    if-nez p1, :cond_2

    .line 2911
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getACTrustedKeystore()Ljava/security/KeyStore;

    move-result-object p1

    .line 2914
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2918
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2920
    invoke-virtual {p1, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2923
    invoke-virtual {v0}, Lcom/cisco/android/nchs/aidl/CertificateChain;->getDerEncodedCerts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2929
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Unexpected Exception"

    invoke-static {v2, p3, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2935
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2939
    :try_start_1
    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    invoke-virtual {v1, p2}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->getCertChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2940
    array-length v2, v1

    if-nez v2, :cond_4

    .line 2942
    :cond_3
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No chain for alias="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p3, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    :cond_4
    invoke-virtual {v0}, Lcom/cisco/android/nchs/aidl/CertificateChain;->getDerEncodedCerts()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 2949
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception fetching chain for alias="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p3, p2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    :goto_2
    return-object v0
.end method

.method public getAliasListFromID(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    .line 2871
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCategoryToCertGroupMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/support/FileCache;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/support/FileCache;->getContainer()Ljava/util/HashMap;

    move-result-object p1

    .line 2872
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2873
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2875
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getCertAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 3

    .line 1591
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/android/nchs/support/CryptoAlgorithms;->hashToHexString([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1595
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCertAlias: failed to encode certificate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CertificateManager"

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public declared-synchronized getCertChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 2589
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCertChainCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2591
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCertChainCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 2596
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->getCertChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 2597
    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCertChainCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2598
    monitor-exit p0

    return-object v0

    .line 2602
    :catch_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCertificateHashForAlias(Ljava/lang/String;)[B
    .locals 3

    monitor-enter p0

    .line 2615
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    .line 2616
    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->getCertChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2618
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2625
    :cond_0
    aget-object p1, p1, v0

    .line 2627
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;-><init>([B)V

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->GetHash()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 2619
    :cond_1
    :goto_0
    :try_start_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "CertificateManager"

    const-string v2, "Failed to get cert chain from certificate store."

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v0, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2621
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2629
    :try_start_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "CertificateManager"

    const-string v2, "getCertificateforAlias exception"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2631
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public getClientCerts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;",
            ">;"
        }
    .end annotation

    .line 2960
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->getClientCerts()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2964
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "CertificateManager"

    const-string v3, "getClientCerts exception"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2965
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected getClientKeyStoreFile()Ljava/lang/String;
    .locals 2

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mKeystorePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "anyconnect_client_certs.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getClientKeyStorePassword()Ljava/lang/String;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mClientStorePassword:Ljava/lang/String;

    return-object v0
.end method

.method protected getClientPrivateKeyPassword()Ljava/lang/String;
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mClientPrivKeyPassword:Ljava/lang/String;

    return-object v0
.end method

.method protected getDeprecatedRootKeyStoreFile()Ljava/lang/String;
    .locals 2

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mKeystorePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "anyconnect_certs.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyAliasForCertAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_key"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getRootCertificates()[Ljava/security/cert/X509Certificate;
    .locals 8

    monitor-enter p0

    .line 2504
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->initializeTrustedKeyStore()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2506
    monitor-exit p0

    return-object v0

    .line 2512
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mTrustedKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2516
    :catch_0
    :try_start_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "CertificateManager"

    const-string v3, "getRootCertificates: failed to get aliases for keystore"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/security/cert/X509Certificate;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2521
    monitor-exit p0

    return-object v0

    .line 2524
    :cond_1
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2525
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2532
    :try_start_4
    iget-object v3, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mTrustedKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v2}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mTrustedKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v2}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 2538
    :cond_3
    iget-object v3, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mTrustedKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    if-nez v3, :cond_4

    .line 2541
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "CertificateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRootCertificates: failed to get certificate for alias="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2551
    :cond_4
    :try_start_5
    instance-of v4, v3, Ljava/security/cert/X509Certificate;

    if-nez v4, :cond_5

    .line 2553
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "CertificateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRootCertificates: non-X509 certificate for alias="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2558
    :cond_5
    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception v3

    .line 2547
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "CertificateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRootCertificates: exception getting certificate for alias="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2561
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method protected getRootKeyStoreFile()Ljava/lang/String;
    .locals 2

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mKeystorePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "anyconnect_trusted_certs.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRootKeyStorePassword()Ljava/lang/String;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mRootStorePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSortedChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 6

    .line 1962
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v1, v0, :cond_0

    return-object p1

    .line 1968
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1969
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 1972
    aget-object v4, p1, v3

    .line 1973
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1976
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_1

    .line 1978
    aget-object v5, p1, v1

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1985
    :cond_1
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object p1

    .line 1989
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 1991
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    move-object v4, p1

    :goto_1
    if-eqz v4, :cond_4

    .line 2001
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2002
    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2003
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object p1

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result p1

    move v3, p1

    :cond_4
    if-eqz v4, :cond_5

    if-eqz v3, :cond_1

    .line 2010
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 2012
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getSortedChain: got "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " extra certificates"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CertificateManager"

    invoke-static {p1, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2015
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "     "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2019
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method public declared-synchronized getSystemCertificates()[Ljava/security/cert/X509Certificate;
    .locals 1

    monitor-enter p0

    .line 2571
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->initializeSystemTrustManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2573
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mSystemTrustMgr:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/security/cert/X509Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2576
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getYubikeyCert(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;)Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;
    .locals 1

    .line 2971
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mYubikeyStore:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->getClientCert(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;)Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;

    move-result-object p1

    return-object p1
.end method

.method public handleClientCertRequest(Ljava/util/List;Ljava/util/List;)Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;
    .locals 8
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

    .line 2988
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getClientCerts()Ljava/util/List;

    move-result-object v0

    .line 2989
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;

    .line 2993
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;->getX509()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2994
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleClientCertRequest Issuer DN: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ","

    .line 2995
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2997
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2999
    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 3001
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-interface {v5, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 3008
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v5

    .line 3009
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleClientCertRequest Key algorithm: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3011
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v5}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3013
    :cond_3
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/cisco/android/nchs/support/CertificateManager;->getCertChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 3016
    new-instance v7, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;

    invoke-direct {v7, v5, v6}, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception v5

    const-string v6, "Error retrieving private key and cert chain"

    .line 3022
    invoke-static {p0, v6, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized hasCertFromSystem(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 2684
    :try_start_0
    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->getCertChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2686
    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2692
    :cond_0
    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "hasCertFromSystem could not get private key"

    .line 2696
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->warn(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2697
    monitor-exit p0

    return v0

    .line 2700
    :cond_1
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    :try_start_1
    const-string p1, "hasCertFromSystem could not get cert chain"

    .line 2688
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->warn(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2689
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2704
    :try_start_2
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "CertificateManager"

    const-string v3, "hasCertFromSystem exception"

    invoke-static {v1, v2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2705
    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized importCertFromSystem(Ljava/lang/String;)[B
    .locals 3

    monitor-enter p0

    .line 2652
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->importKeychainAlias(Ljava/lang/String;)V

    .line 2654
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->getCertChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2658
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2665
    :cond_0
    aget-object p1, p1, v0

    .line 2667
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;-><init>([B)V

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->GetHash()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 2660
    :cond_1
    :goto_0
    :try_start_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "CertificateManager"

    const-string v2, "Failed to get cert chain from system."

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v0, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2661
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2671
    :try_start_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "CertificateManager"

    const-string v2, "importCertFromSystem exception"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2672
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public importClientCertificatesToSystemStore([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/cisco/android/nchs/aidl/CertOpCode;
    .locals 7

    .line 2897
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mSystemCertMgr:Lcom/cisco/android/nchs/support/SystemCertificateManager;

    sget-object v1, Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;->TYPE_PKCS12:Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/cisco/android/nchs/support/SystemCertificateManager;->importCertificate(Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/cisco/android/nchs/aidl/CertOpCode;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized importPkcs12ClientCert([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2222
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/cisco/android/nchs/support/CertificateManager;->importPkcs12ClientCert([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized importPkcs12ClientCert([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/security/cert/X509Certificate;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    move-object/from16 v2, p2

    const-string v3, "importPkcs12ClientCert: KeyStoreException trying to get aliases: "

    monitor-enter p0

    const/4 v4, 0x0

    if-eqz v0, :cond_a

    .line 2243
    :try_start_0
    array-length v5, v0

    if-nez v5, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz v2, :cond_9

    .line 2255
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v0, "PKCS12"

    .line 2256
    invoke-direct {p0, v5, v2, v0}, Lcom/cisco/android/nchs/support/CertificateManager;->openKeyStoreStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_8

    .line 2266
    :try_start_1
    invoke-virtual {v5}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2274
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 2276
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "CertificateManager"

    const-string v3, "importPkcs12ClientCert: no aliases received"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2277
    monitor-exit p0

    return-object v4

    .line 2280
    :cond_1
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2281
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2284
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2293
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v6

    if-nez v6, :cond_2

    .line 2298
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v6, "CertificateManager"

    const-string v7, "importPkcs12ClientCert: no private key"

    invoke-static {v0, v6, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2303
    :cond_2
    invoke-virtual {v5, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v7

    .line 2306
    invoke-virtual {v5, v0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v9

    if-nez v9, :cond_3

    .line 2309
    sget-object v10, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v11, "CertificateManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "importPkcs12ClientCert: no chain for \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v11, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez v7, :cond_4

    .line 2319
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v6, "CertificateManager"

    const-string v7, "importPkcs12ClientCert: no client cert"

    invoke-static {v0, v6, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2324
    :cond_4
    instance-of v0, v7, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_5

    .line 2326
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v6, "CertificateManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "importPkcs12ClientCert: non-X509 certificate class="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2330
    :cond_5
    iget-object v0, v1, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v10, p5

    :try_start_5
    invoke-virtual {v0, v6, v9, v10}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->importPrivateKey(Ljava/security/Key;[Ljava/security/cert/Certificate;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 2333
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v6, "CertificateManager"

    const-string v7, "importPkcs12ClientCert: failed to import private key"

    invoke-static {v0, v6, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2337
    :cond_6
    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2338
    invoke-direct {p0, v0, v9}, Lcom/cisco/android/nchs/support/CertificateManager;->updateChainCache(Ljava/lang/String;[Ljava/security/cert/Certificate;)V

    .line 2339
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move/from16 v10, p5

    .line 2344
    :goto_1
    :try_start_6
    sget-object v6, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v7, "CertificateManager"

    const-string v9, "importPkcs12ClientCert: failed update due to Exception: "

    invoke-static {v6, v7, v9, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2349
    :cond_7
    iget-object v6, v1, Lcom/cisco/android/nchs/support/CertificateManager;->mCategoryToCertGroupMap:Ljava/util/Map;

    sget-object v10, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ANYCONNECT:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    const/4 v11, 0x1

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    invoke-static/range {v6 .. v11}, Lcom/cisco/android/nchs/support/CertificateManager;->updateCertMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStore;Z)V

    .line 2350
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_2
    move-exception v0

    .line 2270
    :try_start_7
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "CertificateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2271
    monitor-exit p0

    return-object v4

    .line 2259
    :cond_8
    :try_start_8
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "CertificateManager"

    const-string v3, "importPkcs12ClientCert: failed to open PKCS input"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2260
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    const-string v2, "failed to open PKCS blob -- probably bad password"

    invoke-direct {v0, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2251
    :cond_9
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "CertificateManager"

    const-string v3, "importPkcs12ClientCert: import password cannot be null"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    const-string v2, "import password cannot be null"

    invoke-direct {v0, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2245
    :cond_a
    :goto_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "CertificateManager"

    const-string v3, "importPkcs12ClientCert: no PKCS blob to import"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2246
    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public importServerCertificateToSystemStore([BLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/cisco/android/nchs/aidl/CertOpCode;
    .locals 7

    .line 2892
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mSystemCertMgr:Lcom/cisco/android/nchs/support/SystemCertificateManager;

    sget-object v1, Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;->TYPE_CERTIFICATE:Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/cisco/android/nchs/support/SystemCertificateManager;->importCertificate(Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/cisco/android/nchs/aidl/CertOpCode;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized importTrustedCertificate(Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "importTrustedCertificate: imported "

    const-string v3, "importTrustedCertificate: "

    const-string v4, "importTrustedCertificate: certificate already in the store with alias=\'"

    const-string v5, "importTrustedCertificate: failed due to KeyStoreException: "

    monitor-enter p0

    if-nez v0, :cond_0

    .line 1649
    :try_start_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "CertificateManager"

    const-string v3, "importTrustedCertificate: null certificate provided!"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1655
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getRootKeyStoreFile()Ljava/lang/String;

    move-result-object v6

    .line 1656
    invoke-virtual/range {p0 .. p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getRootKeyStorePassword()Ljava/lang/String;

    move-result-object v7

    .line 1659
    sget-object v8, Lcom/cisco/android/nchs/support/CertificateManager;->ROOT_KEYSTORE_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v8}, Lcom/cisco/android/nchs/support/CertificateManager;->openKeyStoreFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v9

    if-nez v9, :cond_1

    .line 1663
    invoke-virtual {v1, v7, v8}, Lcom/cisco/android/nchs/support/CertificateManager;->createKeyStore(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v9

    if-nez v9, :cond_1

    .line 1666
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "CertificateManager"

    const-string v3, "importTrustedCertificate: failed to create root store!"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1673
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lcom/cisco/android/nchs/support/CertificateManager;->getCertAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1678
    :try_start_3
    invoke-virtual {v9, v8}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1681
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "CertificateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    iget-object v10, v1, Lcom/cisco/android/nchs/support/CertificateManager;->mCategoryToCertGroupMap:Ljava/util/Map;

    sget-object v14, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ANYCONNECT:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    const/4 v15, 0x1

    move-object/from16 v11, p2

    move-object v12, v8

    move-object/from16 v13, p3

    invoke-static/range {v10 .. v15}, Lcom/cisco/android/nchs/support/CertificateManager;->updateCertMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStore;Z)V

    .line 1686
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_CERTIFICATE_ALREADY_EXISTS:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1690
    :cond_2
    :try_start_4
    invoke-virtual {v9, v8, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1698
    :try_start_5
    invoke-direct {v1, v9, v6, v7}, Lcom/cisco/android/nchs/support/CertificateManager;->saveKeyStore(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1700
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "CertificateManager"

    const-string v3, "importTrustedCertificate: failed to save root file!"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1704
    :cond_3
    :try_start_6
    iget-object v10, v1, Lcom/cisco/android/nchs/support/CertificateManager;->mCategoryToCertGroupMap:Ljava/util/Map;

    sget-object v14, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ANYCONNECT:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    const/4 v15, 0x1

    move-object/from16 v11, p2

    move-object v12, v8

    move-object/from16 v13, p3

    invoke-static/range {v10 .. v15}, Lcom/cisco/android/nchs/support/CertificateManager;->updateCertMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStore;Z)V

    .line 1705
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "CertificateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p2

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "CertificateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), local KeyStore="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/cisco/android/nchs/support/CertificateManager;->mTrustedKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1712
    iput-object v0, v1, Lcom/cisco/android/nchs/support/CertificateManager;->mTrustedKeyStore:Ljava/security/KeyStore;

    .line 1713
    iput-object v0, v1, Lcom/cisco/android/nchs/support/CertificateManager;->mLocalTrustMgr:Ljavax/net/ssl/X509TrustManager;

    .line 1715
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 1694
    :try_start_7
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "CertificateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initCertStores()V
    .locals 8

    .line 285
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    :try_start_0
    const-string v3, "AC/client"

    .line 291
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/crypto/ACLegacyCertStore;

    const-string v4, "BKS"

    new-instance v5, Ljava/io/File;

    .line 293
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getClientKeyStoreFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getClientKeyStorePassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 295
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getClientPrivateKeyPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/cisco/anyconnect/vpn/android/crypto/ACLegacyCertStore;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[C[C)V

    .line 296
    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    invoke-virtual {v1, v0}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->addCertStore(Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;)V
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :catch_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const-string v0, "ANDROID/client"

    .line 308
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/crypto/AndroidKeyStore;

    iget-object v2, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/crypto/AndroidKeyStore;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 309
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->addCertStore(Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;)V
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    :try_start_2
    const-string v0, "KEYCHAIN/client"

    .line 319
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore;

    iget-object v2, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mKeychainAliasList:Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;

    invoke-direct {v1, v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;)V

    .line 320
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->addCertStore(Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;)V
    :try_end_2
    .catch Ljava/security/cert/CertStoreException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    const-string v0, "KNOX_TIMA/client"

    .line 330
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/crypto/TimaKeystore;

    iget-object v2, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/crypto/TimaKeystore;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 331
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->addCertStore(Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;)V
    :try_end_3
    .catch Ljava/security/cert/CertStoreException; {:try_start_3 .. :try_end_3} :catch_3

    .line 338
    :catch_3
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;

    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mContext:Landroid/content/Context;

    const-string v2, "YUBIKEY/client"

    invoke-direct {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mYubikeyStore:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;

    return-void
.end method

.method public initializeSigningCert(Ljava/io/InputStream;)Z
    .locals 5

    const/4 v0, 0x0

    .line 473
    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCodeSigningCert:Ljava/security/cert/X509Certificate;

    const/4 v0, 0x0

    const-string v1, "CertificateManager"

    if-nez p1, :cond_0

    .line 477
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "initializeSigningCert: no input stream provided"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 483
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 487
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    .line 489
    invoke-virtual {v2, v3, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 492
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 494
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/android/nchs/support/CertificateManager;->derToX509Certificate([B)Ljava/security/cert/X509Certificate;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCodeSigningCert:Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    .line 505
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "initializeSigningCert: failed to parse to a cert!"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 509
    :cond_2
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "initializeSigningCert: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCodeSigningCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 498
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "initializeSigningCert: got IOException trying to read cert"

    invoke-static {v2, v1, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public declared-synchronized isCertificateInstalled(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStore;)Z
    .locals 2

    monitor-enter p0

    .line 2850
    :try_start_0
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ANYCONNECT:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    const/4 v1, 0x0

    if-eq v0, p2, :cond_3

    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ALL:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    if-ne v0, p2, :cond_0

    goto :goto_1

    .line 2856
    :cond_0
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->SYSTEM:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    if-eq v0, p2, :cond_2

    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ALL:Lcom/cisco/android/nchs/aidl/NCHSCertStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_1

    goto :goto_0

    .line 2861
    :cond_1
    monitor-exit p0

    return v1

    .line 2858
    :cond_2
    :goto_0
    :try_start_1
    iget-object p2, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mSystemCertMgr:Lcom/cisco/android/nchs/support/SystemCertificateManager;

    invoke-virtual {p2, p1}, Lcom/cisco/android/nchs/support/SystemCertificateManager;->isCertificateInstalled(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 2852
    :cond_3
    :goto_1
    :try_start_2
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "CertificateManager"

    const-string v0, "Not implemented"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2853
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isUserAuthRequired(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const-string v0, "Device not secure, deleting key with alias "

    const-string v1, "Could not find private key with alias "

    const/4 v2, 0x0

    .line 2062
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_4

    .line 2063
    iget-object v3, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    invoke-virtual {v3, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    .line 2071
    :cond_0
    invoke-interface {v3}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v4, "AndroidKeyStore"

    invoke-static {v1, v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 2072
    const-class v4, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v1, v3, v4}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v1

    check-cast v1, Landroid/security/keystore/KeyInfo;

    .line 2073
    invoke-virtual {v1}, Landroid/security/keystore/KeyInfo;->isUserAuthenticationRequired()Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 2078
    :cond_1
    invoke-virtual {v1}, Landroid/security/keystore/KeyInfo;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "NoPadding"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2082
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->deleteCert(Ljava/lang/String;)Z

    .line 2083
    iget-object p1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mContext:Landroid/content/Context;

    const v0, 0x7f110148

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    .line 2089
    :cond_2
    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cisco/android/nchs/permissions/Prerequisites;->isDeviceSecure(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x1

    return p1

    .line 2091
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2092
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->deleteCert(Ljava/lang/String;)Z

    .line 2093
    new-instance p1, Ljava/security/UnrecoverableKeyException;

    const-string v0, "Device not secure, key deleted"

    invoke-direct {p1, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 2109
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "CertificateManager"

    const-string v3, "isUserAuthRequired Exception "

    invoke-static {v0, v1, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_1
    :cond_4
    return v2

    :catch_2
    move-exception p1

    .line 2101
    throw p1
.end method

.method public declared-synchronized mapCertAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 2717
    :try_start_0
    new-instance v2, Lcom/cisco/android/nchs/support/CertificateManager$3;

    invoke-direct {v2, p0, p1}, Lcom/cisco/android/nchs/support/CertificateManager$3;-><init>(Lcom/cisco/android/nchs/support/CertificateManager;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2723
    :try_start_1
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCategoryToCertGroupMap:Ljava/util/Map;

    sget-object v4, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ANYCONNECT:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    const/4 v5, 0x1

    move-object v1, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/cisco/android/nchs/support/CertificateManager;->updateCertMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStore;Z)V

    .line 2724
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->dumpCertAliasesMap()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2731
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 2728
    :try_start_2
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "CertificateManager"

    const-string v0, "importCertAlias exception"

    invoke-static {p2, p3, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2729
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected openKeyStoreFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 4

    const-string v0, "openKeyStoreFile: "

    const-string v1, "CertificateManager"

    const/4 v2, 0x0

    .line 820
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 821
    invoke-direct {p0, v3, p2, p3}, Lcom/cisco/android/nchs/support/CertificateManager;->openKeyStoreStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 822
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 834
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "openKeyStoreFile: failed to read "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for local keystore: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 830
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 826
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method protected reset()V
    .locals 1

    const/4 v0, 0x0

    .line 2030
    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mHostnameMgr:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 2031
    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mTrustedKeyStore:Ljava/security/KeyStore;

    .line 2032
    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mSystemTrustMgr:Ljavax/net/ssl/X509TrustManager;

    .line 2033
    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mLocalTrustMgr:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method protected setClientKeyStorePassword(Ljava/lang/String;)Z
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mClientStorePassword:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method protected setClientPrivateKeyPassword(Ljava/lang/String;)Z
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mClientPrivKeyPassword:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method protected setCodeSigningCertificate(Ljava/security/cert/X509Certificate;)Z
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCodeSigningCert:Ljava/security/cert/X509Certificate;

    const/4 p1, 0x1

    return p1
.end method

.method public setKeystorePath(Ljava/lang/String;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mKeystorePath:Ljava/lang/String;

    return-void
.end method

.method public setPasswordSeed(Ljava/lang/String;)V
    .locals 5

    const-string v0, "UTF-8"

    const-string v1, "privkey:"

    const-string v2, "client:"

    const-string v3, "root:"

    .line 651
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 652
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/cisco/android/nchs/support/CryptoAlgorithms;->hashToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/cisco/android/nchs/support/CertificateManager;->setRootKeyStorePassword(Ljava/lang/String;)Z

    .line 654
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 655
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/cisco/android/nchs/support/CryptoAlgorithms;->hashToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cisco/android/nchs/support/CertificateManager;->setClientKeyStorePassword(Ljava/lang/String;)Z

    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 658
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/android/nchs/support/CryptoAlgorithms;->hashToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/support/CertificateManager;->setClientPrivateKeyPassword(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 662
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "CertificateManager"

    const-string v2, "setPasswordSeed: got exception: "

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected setRootKeyStorePassword(Ljava/lang/String;)Z
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mRootStorePassword:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setSafe()V
    .locals 2

    .line 345
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SAFE Certificate manager not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized signWithClientCertificate(Ljava/lang/String;[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const-string v0, "Key "

    const-string v1, "Could not find private key with alias: "

    monitor-enter p0

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    :try_start_0
    const-string v3, ""

    .line 2131
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p2, :cond_1

    .line 2139
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "CertificateManager"

    const-string v0, "signWithClientCertificate: null hash given"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2140
    monitor-exit p0

    return-object v2

    .line 2145
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    invoke-virtual {v3, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2149
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "CertificateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2150
    monitor-exit p0

    return-object v2

    .line 2153
    :cond_2
    :try_start_2
    invoke-interface {v3}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v4, "EC"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v3}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ECDSA"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 2165
    :cond_3
    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cisco/android/nchs/permissions/Prerequisites;->isChromebook(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mKeychainAliasList:Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;

    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;->getAliases()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Signing with PKCS1Padding"

    .line 2167
    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "RSA/ECB/PKCS1Padding"

    goto :goto_0

    :cond_4
    const-string v1, "Signing with NoPadding"

    .line 2174
    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "RSA/ECB/NoPadding"

    .line 2177
    :goto_0
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v4, 0x1

    .line 2178
    invoke-virtual {v1, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 2179
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_5
    :goto_1
    :try_start_3
    const-string v1, "NONEwithECDSA"

    .line 2155
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 2156
    invoke-virtual {v1, v3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 2157
    invoke-virtual {v1, p2}, Ljava/security/Signature;->update([B)V

    .line 2158
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object p1
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    .line 2205
    :try_start_4
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "CertificateManager"

    const-string v1, "signWithClientCertificate: Exception"

    invoke-static {p2, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p2

    .line 2186
    instance-of v1, p2, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    if-nez v1, :cond_6

    .line 2201
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "CertificateManager"

    const-string v1, "signWithClientCertificate: InvalidKeyException"

    invoke-static {p1, v0, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2208
    :goto_2
    monitor-exit p0

    return-object v2

    .line 2190
    :cond_6
    :try_start_5
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "CertificateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was invalidated, deleting"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    iget-object p2, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mMultiCertStore:Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;

    invoke-virtual {p2, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->deleteCert(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_2
    move-exception p1

    .line 2195
    :try_start_6
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "CertificateManager"

    const-string v1, "deleteCert: Exception"

    invoke-static {p2, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2198
    :goto_3
    new-instance p1, Ljava/security/UnrecoverableKeyException;

    invoke-direct {p1}, Ljava/security/UnrecoverableKeyException;-><init>()V

    throw p1

    .line 2133
    :cond_7
    :goto_4
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "CertificateManager"

    const-string v0, "signWithClientCertificate: no client key alias given"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2134
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized signWithYubikeyCertificate(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;[B)[B
    .locals 1

    monitor-enter p0

    .line 2213
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mYubikeyStore:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;

    invoke-virtual {v0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->sign(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;[B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updatePasswordSeed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const/4 v7, 0x0

    const-string v8, "CertificateManager"

    if-nez p2, :cond_0

    .line 677
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo v1, "updatePasswordSeed: cannot have null seed"

    invoke-static {v0, v8, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 682
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/support/CertificateManager;->setPasswordSeed(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getClientKeyStorePassword()Ljava/lang/String;

    move-result-object v9

    .line 684
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getClientPrivateKeyPassword()Ljava/lang/String;

    move-result-object v10

    .line 685
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getRootKeyStorePassword()Ljava/lang/String;

    move-result-object v3

    .line 687
    invoke-virtual {p0, p2}, Lcom/cisco/android/nchs/support/CertificateManager;->setPasswordSeed(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getRootKeyStoreFile()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cisco/android/nchs/support/CertificateManager;->ROOT_KEYSTORE_TYPE:Ljava/lang/String;

    const/4 v4, 0x0

    .line 694
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getRootKeyStorePassword()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    .line 690
    invoke-virtual/range {v0 .. v6}, Lcom/cisco/android/nchs/support/CertificateManager;->convertKeystorePasswords(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 698
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo v1, "updatePasswordSeed: failed to convert root store"

    invoke-static {v0, v8, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 703
    :cond_1
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getClientKeyStoreFile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BKS"

    .line 707
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getClientKeyStorePassword()Ljava/lang/String;

    move-result-object v5

    .line 708
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->getClientPrivateKeyPassword()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v3, v9

    move-object v4, v10

    .line 703
    invoke-virtual/range {v0 .. v6}, Lcom/cisco/android/nchs/support/CertificateManager;->convertKeystorePasswords(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 711
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo v1, "updatePasswordSeed: failed to convert client store"

    invoke-static {v0, v8, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_2
    const/4 v0, 0x0

    .line 717
    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mTrustedKeyStore:Ljava/security/KeyStore;

    .line 718
    iput-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mLocalTrustMgr:Ljavax/net/ssl/X509TrustManager;

    const/4 v0, 0x1

    return v0
.end method

.method public verifyKeyUsage(Ljava/security/cert/X509Certificate;I)Z
    .locals 8

    const/4 v0, 0x0

    const-string v1, "CertificateManager"

    if-nez p1, :cond_0

    .line 1846
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo p2, "verifyKeyUsage: no certficate"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v2, 0x1

    if-nez p2, :cond_1

    .line 1853
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo p2, "verifyKeyUsage: no required uses"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1860
    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object p1

    if-nez p1, :cond_2

    .line 1864
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo p2, "verifyKeyUsage: certificate has no uses specified"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1868
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const-string v5, ")"

    if-ge v4, v3, :cond_6

    shl-int v6, v2, v4

    and-int v7, v6, p2

    if-nez v7, :cond_3

    goto :goto_1

    .line 1880
    :cond_3
    array-length v7, p1

    if-gt v4, v7, :cond_5

    aget-boolean v7, p1, v4

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1882
    :cond_5
    :goto_2
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "verifyKeyUsage: missing required use #"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (0x"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1887
    :cond_6
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "verifyKeyUsage: certificate has all required uses (0x"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public declared-synchronized verifyX509CertForSigning([Ljava/security/cert/X509Certificate;)I
    .locals 3

    monitor-enter p0

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    .line 1552
    :try_start_0
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1558
    :cond_0
    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCodeSigningCert:Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_1

    .line 1560
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "CertificateManager"

    const-string/jumbo v2, "verifyX509CertForSigning: signing cert not initialized"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1561
    monitor-exit p0

    return v0

    .line 1565
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/support/CertificateManager;->getSortedChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    .line 1568
    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mCodeSigningCert:Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1570
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "CertificateManager"

    const-string/jumbo v2, "verifyX509CertForSigning: presented certificate does not match code signing cert"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1571
    monitor-exit p0

    return v0

    .line 1574
    :cond_2
    :try_start_2
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "CertificateManager"

    const-string/jumbo v1, "verifyX509CertForSigning: presented valid certificate"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1575
    monitor-exit p0

    return v2

    .line 1554
    :cond_3
    :goto_0
    :try_start_3
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "CertificateManager"

    const-string/jumbo v2, "verifyX509CertForSigning: no chain provided"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1555
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected verifyX509Certificate([Ljava/security/cert/X509Certificate;ZZ)I
    .locals 11

    const/4 v0, -0x1

    const-string v1, "CertificateManager"

    if-eqz p1, :cond_c

    .line 1377
    array-length v2, p1

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 1383
    :cond_0
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->initializeSystemTrustManager()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1385
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo p2, "verifyX509Certificate: system TrustManger intialization failed"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1390
    :cond_1
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v2, :cond_2

    aget-object v7, p1, v4

    .line 1392
    sget-object v8, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Certificate #"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v1, v9}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    sget-object v8, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "    Subject : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v1, v9}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    sget-object v8, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "    Issuer  : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v1, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1400
    :cond_2
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Verifying against the system key store..."

    invoke-static {v2, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    iget-object v2, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mSystemTrustMgr:Ljavax/net/ssl/X509TrustManager;

    const-string v4, "system"

    const/4 v5, 0x0

    invoke-direct {p0, v2, p1, v4, v5}, Lcom/cisco/android/nchs/support/CertificateManager;->checkTrustManager(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/KeyStore;)I

    move-result v2

    if-eq v0, v2, :cond_b

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    if-nez p2, :cond_4

    .line 1409
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo p2, "verifyX509Certificate: not checking local certificate store"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1413
    :cond_4
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->initializeTrustedKeyStore()Z

    move-result p2

    if-nez p2, :cond_5

    .line 1415
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo p2, "verifyX509Certificate: no local key store to try"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1419
    :cond_5
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->initializeLocalTrustManager()Z

    move-result p2

    if-nez p2, :cond_6

    .line 1421
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo p2, "verifyX509Certificate: could not create local trust manager"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_6
    and-int/lit8 p2, v2, 0x10

    if-nez p2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    .line 1432
    :goto_1
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Verifying against the local key store..."

    invoke-static {p2, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    iget-object p2, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mLocalTrustMgr:Ljavax/net/ssl/X509TrustManager;

    const-string v4, "local"

    iget-object v5, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mTrustedKeyStore:Ljava/security/KeyStore;

    invoke-direct {p0, p2, p1, v4, v5}, Lcom/cisco/android/nchs/support/CertificateManager;->checkTrustManager(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/KeyStore;)I

    move-result p2

    if-eq v0, p2, :cond_a

    if-nez p2, :cond_8

    goto :goto_2

    :cond_8
    or-int/2addr p2, v2

    if-eqz v6, :cond_9

    and-int/lit8 p2, p2, -0x11

    .line 1450
    :cond_9
    aget-object p1, p1, v3

    if-eqz p3, :cond_a

    .line 1451
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/support/CertificateManager;->isTrustedLeaf(Ljava/security/cert/X509Certificate;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 1453
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "verifyX509Certificate: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is trusted"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_a
    :goto_2
    return p2

    :cond_b
    :goto_3
    return v2

    .line 1379
    :cond_c
    :goto_4
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo p2, "verifyX509Certificate: invalid certificate format"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public declared-synchronized verifyX509ServerCert([Ljava/security/cert/X509Certificate;)I
    .locals 5

    const-string/jumbo v0, "verifyX509ServerCertForHost: confirm because missing key usage: 0x"

    monitor-enter p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1470
    :try_start_0
    invoke-virtual {p0, p1, v1, v2}, Lcom/cisco/android/nchs/support/CertificateManager;->verifyX509Certificate([Ljava/security/cert/X509Certificate;ZZ)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-ne v3, v1, :cond_0

    .line 1474
    monitor-exit p0

    return v1

    .line 1478
    :cond_0
    :try_start_1
    aget-object p1, p1, v2

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2}, Lcom/cisco/android/nchs/support/CertificateManager;->verifyKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1480
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "CertificateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    or-int/lit8 v1, v1, 0x20

    .line 1484
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized verifyX509ServerCertForHost([Ljava/security/cert/X509Certificate;Ljava/lang/String;ZLjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)I"
        }
    .end annotation

    const-string/jumbo v0, "verifyX509ServerCertForHost: confirm because certificate did not match server: "

    monitor-enter p0

    const/4 v1, 0x1

    .line 1502
    :try_start_0
    invoke-virtual {p0, p1, v1, p3}, Lcom/cisco/android/nchs/support/CertificateManager;->verifyX509Certificate([Ljava/security/cert/X509Certificate;ZZ)I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v1, p3, :cond_0

    .line 1506
    monitor-exit p0

    return p3

    .line 1515
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p4}, Lcom/cisco/android/nchs/support/CertificateManager;->buildVerifyCertChain([Ljava/security/cert/X509Certificate;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1521
    :try_start_2
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/CertificateManager;->initializeHostnameVerifier()Z

    move-result p4

    if-nez p4, :cond_1

    .line 1523
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "CertificateManager"

    const-string/jumbo p4, "verifyX509ServerCertForHost: failed to initialize domain checker"

    invoke-static {p1, p2, p4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    or-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1529
    :cond_1
    iget-object p4, p0, Lcom/cisco/android/nchs/support/CertificateManager;->mHostnameMgr:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-interface {p4, p2, p1}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1535
    :try_start_3
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p4, "CertificateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p4, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    or-int/lit8 p3, p3, 0x2

    .line 1539
    :goto_0
    monitor-exit p0

    return p3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

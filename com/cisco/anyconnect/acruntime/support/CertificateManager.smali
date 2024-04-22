.class public Lcom/cisco/anyconnect/acruntime/support/CertificateManager;
.super Ljava/lang/Object;
.source "CertificateManager.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "com.cisco.anyconnect.acruntime.support.CertificateManager"


# instance fields
.field private final CERTIFICATE_TYPE:Ljava/lang/String;

.field private defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

.field private trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

.field private trustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    .line 41
    iput-object v0, p0, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 42
    iput-object v0, p0, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->trustManagers:[Ljavax/net/ssl/TrustManager;

    const-string v0, "X.509"

    .line 44
    iput-object v0, p0, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->CERTIFICATE_TYPE:Ljava/lang/String;

    return-void
.end method

.method private checkTrustManager([[BZLjava/lang/String;)I
    .locals 5

    const-string p3, "Exception while verifiying certificate : "

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 123
    :try_start_0
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->derToX509Certificates([[B)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    aget-object v3, p1, v0

    if-eqz v3, :cond_0

    .line 125
    iget-object v4, p0, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, p1, v3}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return v2

    :catch_0
    move-exception p1

    .line 150
    sget-object p2, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    sget-object v0, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->ENTITY_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_1
    move-exception p1

    .line 134
    sget-object v2, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    sget-object v3, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->ENTITY_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 134
    invoke-static {v2, v3, p3}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    instance-of p3, p1, Ljava/security/cert/CertificateExpiredException;

    if-nez p3, :cond_6

    instance-of p3, p1, Ljava/security/cert/CertificateNotYetValidException;

    if-eqz p3, :cond_1

    goto :goto_2

    .line 138
    :cond_1
    instance-of p3, p1, Ljava/security/cert/CertificateParsingException;

    if-nez p3, :cond_5

    instance-of p3, p1, Ljava/security/cert/CertificateEncodingException;

    if-eqz p3, :cond_2

    goto :goto_1

    .line 140
    :cond_2
    instance-of p1, p1, Ljava/security/cert/CertificateRevokedException;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    const/16 p1, 0x40

    return p1

    .line 144
    :cond_3
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string p2, "Status: Certificate is revoked, but revocation errors are being ignored."

    invoke-static {p1, v3, p2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_4
    return v1

    :cond_5
    :goto_1
    const/4 p1, 0x4

    return p1

    :cond_6
    :goto_2
    const/16 p1, 0x8

    return p1

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    .line 130
    :goto_3
    sget-object p2, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    sget-object v0, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->ENTITY_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private derToX509Certificates([[B)[Ljava/security/cert/X509Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 88
    :cond_0
    new-array v1, v0, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    :try_start_0
    const-string v3, "X.509"

    .line 92
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 93
    new-instance v4, Ljava/io/ByteArrayInputStream;

    aget-object v5, p1, v2

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 97
    invoke-virtual {v3, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    aput-object v3, v1, v2

    .line 98
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 104
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    sget-object v1, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->ENTITY_NAME:Ljava/lang/String;

    const-string v2, "derToX509Certificates: IOException while parsing certificate: "

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    throw p1

    :catch_1
    move-exception p1

    .line 100
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    sget-object v1, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->ENTITY_NAME:Ljava/lang/String;

    const-string v2, "derToX509Certificates: CertificateException while parsing certificate: "

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    throw p1

    :cond_1
    return-object v1
.end method

.method private native registerCertificateManagerInterface()I
.end method

.method private native unregisterCertificateManagerInterface()I
.end method


# virtual methods
.method public clean()I
    .locals 4

    .line 220
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->unregisterCertificateManagerInterface()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 222
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    sget-object v2, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->ENTITY_NAME:Ljava/lang/String;

    const-string v3, " Error while unregistering FlowController "

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public enumerateSystemCertificates()[[B
    .locals 10

    .line 186
    iget-object v0, p0, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_2

    .line 187
    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 188
    array-length v1, v0

    new-array v1, v1, [[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 190
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 192
    :try_start_0
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    aput-object v5, v1, v4
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v5

    .line 194
    sget-object v6, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    sget-object v7, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->ENTITY_NAME:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception while encoding certificate : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v5}, Ljava/security/cert/CertificateEncodingException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 194
    invoke-static {v6, v7, v5}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 200
    :cond_0
    array-length v0, v0

    if-ge v4, v0, :cond_3

    .line 201
    new-array v0, v4, [[B

    :goto_2
    if-ge v2, v4, :cond_1

    .line 203
    aget-object v3, v1, v2

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    return-object v0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    return-object v1
.end method

.method public init()I
    .locals 6

    const/4 v0, -0x1

    .line 57
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    const/4 v2, 0x0

    .line 58
    move-object v3, v2

    check-cast v3, Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 59
    iget-object v1, p0, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->trustManagers:[Ljavax/net/ssl/TrustManager;

    .line 60
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 61
    instance-of v5, v4, Ljavax/net/ssl/X509TrustManager;

    if-eqz v5, :cond_0

    .line 62
    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    iput-object v4, p0, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    if-nez v1, :cond_2

    return v0

    .line 68
    :cond_2
    invoke-direct {p0}, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->registerCertificateManagerInterface()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 70
    sget-object v2, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    sget-object v3, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->ENTITY_NAME:Ljava/lang/String;

    const-string v4, " Error while registering CertificateManager "

    invoke-static {v2, v3, v4, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return v0
.end method

.method public verifyCertificate([[BZLjava/lang/String;)I
    .locals 3

    .line 170
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    sget-object v1, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->ENTITY_NAME:Ljava/lang/String;

    const-string v2, "Called verifyCertificate java "

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 175
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->checkTrustManager([[BZLjava/lang/String;)I

    move-result p1

    return p1
.end method

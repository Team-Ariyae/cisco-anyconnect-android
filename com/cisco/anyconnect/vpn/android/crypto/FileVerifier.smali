.class public Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;
.super Ljava/lang/Object;
.source "FileVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;,
        Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;
    }
.end annotation


# static fields
.field private static final ANYCONNECT_CODE_SIGNING_CERT:Ljava/lang/String; = "codeSign.der"

.field private static final ENTITY_NAME:Ljava/lang/String; = "FileVerifier"

.field private static sFileAssetSignatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static sTrustedSigningCert:Ljava/security/cert/X509Certificate;


# instance fields
.field private final mCatalog:[B

.field private final mDataFile:Ljava/io/File;

.field private mLogger:Lcom/cisco/android/filesignerlib/LogInterface;


# direct methods
.method private constructor <init>(Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;)V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/cisco/android/nchs/codesign/JavaLogger;

    invoke-direct {v0}, Lcom/cisco/android/nchs/codesign/JavaLogger;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    .line 145
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->getTrustedSigningCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;->-$$Nest$fgetmDataFile(Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->mDataFile:Ljava/io/File;

    .line 151
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;->-$$Nest$fgetmCatalog(Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->mCatalog:[B

    return-void

    .line 147
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Static data is not initialized"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;-><init>(Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;)V

    return-void
.end method

.method private generateCertificate([B)Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 301
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p1, "X.509"

    .line 302
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    .line 304
    invoke-virtual {p1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    return-object p1

    .line 297
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cert byte array must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getAssetBytes(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 182
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p0

    new-array p0, p0, [B

    .line 184
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 192
    :cond_1
    throw p0
.end method

.method public static declared-synchronized getFileSignature(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;
        }
    .end annotation

    const-class v0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;

    monitor-enter v0

    .line 219
    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->sFileAssetSignatureMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 224
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 221
    :cond_0
    :try_start_1
    new-instance p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;

    const-string v1, "FileVerifier is not initialized"

    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getTrustedSigningCert()Ljava/security/cert/X509Certificate;
    .locals 2

    const-class v0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;

    monitor-enter v0

    .line 198
    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->sTrustedSigningCert:Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initStaticData(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;
        }
    .end annotation

    const-class v0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;

    monitor-enter v0

    .line 158
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->sFileAssetSignatureMap:Ljava/util/Map;

    .line 161
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->sTrustedSigningCert:Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_0

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "codeSign.der"

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const-string v1, "X509"

    .line 164
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 165
    invoke-virtual {v1, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->sTrustedSigningCert:Ljava/security/cert/X509Certificate;

    .line 166
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 171
    :try_start_1
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;

    const-string v2, "Failed to init static data"

    invoke-direct {v1, v2, p0}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isFileSigned(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;
        }
    .end annotation

    const-class v0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;

    monitor-enter v0

    .line 206
    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->sFileAssetSignatureMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 211
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    .line 208
    :cond_1
    :try_start_1
    new-instance p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;

    const-string v1, "FileVerifier is not initialized"

    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private validateSigningCert(Ljava/security/cert/Certificate;)Z
    .locals 2

    .line 316
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->getTrustedSigningCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 318
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "FileVerifier"

    const-string v1, "ValidateCertificate failed."

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public verify()Z
    .locals 5

    const/4 v0, 0x0

    .line 235
    :try_start_0
    new-instance v1, Lcom/cisco/android/nchs/codesign/VerifySignFile;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    invoke-direct {v1, v2}, Lcom/cisco/android/nchs/codesign/VerifySignFile;-><init>(Lcom/cisco/android/filesignerlib/LogInterface;)V

    .line 238
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->mCatalog:[B

    if-eqz v2, :cond_0

    .line 240
    new-instance v2, Lcom/cisco/android/filesignerlib/CodeSignTlv;

    new-instance v3, Lcom/cisco/android/nchs/codesign/JavaLogger;

    invoke-direct {v3}, Lcom/cisco/android/nchs/codesign/JavaLogger;-><init>()V

    invoke-direct {v2, v3}, Lcom/cisco/android/filesignerlib/CodeSignTlv;-><init>(Lcom/cisco/android/filesignerlib/LogInterface;)V

    .line 241
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->mCatalog:[B

    invoke-virtual {v2, v3}, Lcom/cisco/android/filesignerlib/CodeSignTlv;->SetCodeSignTlv([B)V

    .line 242
    invoke-virtual {v1, v2}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->SetTlv(Lcom/cisco/android/filesignerlib/CodeSignTlv;)Z

    goto :goto_0

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->mDataFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->open(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->GetTlv()Lcom/cisco/android/filesignerlib/CodeSignTlv;

    move-result-object v2

    .line 251
    :goto_0
    invoke-virtual {v2}, Lcom/cisco/android/filesignerlib/CodeSignTlv;->IsValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 253
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    const-string v2, "Invalid signature structure attached to file"

    invoke-interface {v1, v2}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V

    return v0

    :cond_1
    const/16 v3, 0x64

    .line 257
    invoke-virtual {v2, v3}, Lcom/cisco/android/filesignerlib/CodeSignTlv;->GetSignatureForFileType(S)[B

    move-result-object v3

    .line 258
    invoke-virtual {v2}, Lcom/cisco/android/filesignerlib/CodeSignTlv;->GetCert()[B

    move-result-object v2

    .line 259
    invoke-direct {p0, v2}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->generateCertificate([B)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 261
    invoke-direct {p0, v2}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->validateSigningCert(Ljava/security/cert/Certificate;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 264
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    const-string v2, "Certificate did not pass validation, file is untrusted"

    invoke-interface {v1, v2}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V

    return v0

    .line 268
    :cond_2
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->mDataFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->open(Ljava/lang/String;)V

    const-string v4, "Sha1withRSA"

    .line 269
    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 270
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 271
    invoke-virtual {v1, v4}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->addFileContentsToSignatureHash(Ljava/security/Signature;)Z

    .line 272
    invoke-virtual {v4, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_3

    .line 275
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->mDataFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " failed code signature validation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/cisco/android/filesignerlib/CodeSignException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 287
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to validate "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->mDataFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V

    return v0

    :catch_1
    move-exception v1

    .line 282
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "When validating signature a CodeSignException occurred "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V

    return v0
.end method

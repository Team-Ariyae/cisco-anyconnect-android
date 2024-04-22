.class public Lcom/cisco/anyconnect/vpn/android/crypto/TimaKeystore;
.super Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;
.source "TimaKeystore.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "TimaKeystore"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    const-string v0, "TIMAKeyStore"

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;-><init>(Ljava/lang/String;Ljava/lang/String;[C[C)V

    .line 35
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/TimaKeystore;->mContext:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/crypto/TimaKeystore;->hasTimaSupport()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/security/cert/CertStoreException;

    const-string p2, "Tima is not supported"

    invoke-direct {p1, p2}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private hasTimaSupport()Z
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/TimaKeystore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->getKnoxVer(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTimaEnabled()Z
    .locals 5

    const-string v0, "TimaKeystore"

    .line 99
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/TimaKeystore;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 102
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getTimaKeystorePolicy()Lcom/samsung/android/knox/keystore/TimaKeystore;

    move-result-object v3

    if-nez v3, :cond_0

    .line 104
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "No TIMA keystore policy"

    invoke-static {v1, v0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 108
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getTimaKeystorePolicy()Lcom/samsung/android/knox/keystore/TimaKeystore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/TimaKeystore;->isTimaKeystoreEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 112
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Exception in isTimaEnabled"

    invoke-static {v3, v0, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method


# virtual methods
.method public hasImport(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public importPrivateKey(Ljava/security/Key;[Ljava/security/cert/Certificate;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->importPrivateKey(Ljava/security/Key;[Ljava/security/cert/Certificate;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected loadKeystore()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/crypto/TimaKeystore;->isTimaEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 62
    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/TimaKeystore;->mKeyStore:Ljava/security/KeyStore;

    return v1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/TimaKeystore;->mKeyStore:Ljava/security/KeyStore;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    return v3

    .line 73
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/TimaKeystore;->mType:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/TimaKeystore;->mKeyStore:Ljava/security/KeyStore;

    .line 74
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/TimaKeystore;->mKeyStore:Ljava/security/KeyStore;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/crypto/TimaKeystore;->mStorePass:[C

    invoke-virtual {v0, v2, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const-string v3, "Failed to load TIMA store"

    .line 79
    invoke-static {p0, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/TimaKeystore;->mKeyStore:Ljava/security/KeyStore;

    return v1
.end method

.method protected saveKeyStore()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    return-void
.end method

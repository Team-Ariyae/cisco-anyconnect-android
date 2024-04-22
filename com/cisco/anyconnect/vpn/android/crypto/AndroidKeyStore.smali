.class public Lcom/cisco/anyconnect/vpn/android/crypto/AndroidKeyStore;
.super Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;
.source "AndroidKeyStore.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "AndroidKeyStore"


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

    const-string v0, "AndroidKeyStore"

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;-><init>(Ljava/lang/String;Ljava/lang/String;[C[C)V

    .line 47
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/AndroidKeyStore;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/crypto/AndroidKeyStore;->loadKeystore()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 92
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/crypto/AndroidKeyStore;->getKeyAliasForCertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/AndroidKeyStore;->mKeyStore:Ljava/security/KeyStore;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/crypto/AndroidKeyStore;->mKeyPass:[C

    invoke-virtual {v2, v0, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "Unexpected exception in getPrivateKey"

    .line 108
    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :catch_1
    move-exception v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was invalidated, deleting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/AndroidKeyStore;->deleteCert(Ljava/lang/String;)Z

    .line 104
    throw v0
.end method

.method public importPrivateKey(Ljava/security/Key;[Ljava/security/cert/Certificate;Z)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/crypto/AndroidKeyStore;->loadKeystore()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p3, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 124
    :try_start_0
    array-length p3, p2

    if-eqz p3, :cond_2

    .line 129
    iget-object p3, p0, Lcom/cisco/anyconnect/vpn/android/crypto/AndroidKeyStore;->mContext:Landroid/content/Context;

    const-string v0, "keyguard"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/KeyguardManager;

    .line 130
    invoke-virtual {p3}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 135
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/crypto/AndroidKeyStore;->getCertAliasForImport([Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object p3

    .line 136
    invoke-static {p3}, Lcom/cisco/anyconnect/vpn/android/crypto/AndroidKeyStore;->getKeyAliasForCertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 138
    new-instance v0, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "NONE"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 139
    invoke-virtual {v0, v2}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v5, "NoPadding"

    aput-object v5, v3, v4

    const-string v5, "PKCS1Padding"

    aput-object v5, v3, v1

    .line 140
    invoke-virtual {v0, v3}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "PKCS1"

    aput-object v3, v2, v4

    const-string v3, "PSS"

    aput-object v3, v2, v1

    .line 141
    invoke-virtual {v0, v2}, Landroid/security/keystore/KeyProtection$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0, v4}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    const/16 v1, 0xa

    .line 144
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/security/KeyStore$PrivateKeyEntry;

    check-cast p1, Ljava/security/PrivateKey;

    invoke-direct {v1, p1, p2}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    .line 147
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/AndroidKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object p2

    invoke-virtual {p1, p3, v1, p2}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 148
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "AndroidKeyStore"

    const-string v0, "Imported cert requiring user authentication"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 132
    :cond_1
    new-instance p1, Ljava/security/cert/CertStoreException;

    const-string p2, "Can\'t import cert - no screen lock"

    invoke-direct {p1, p2}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_2
    new-instance p1, Ljava/security/cert/CertStoreException;

    const-string p2, "empty certificate chain"

    invoke-direct {p1, p2}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 153
    new-instance p2, Ljava/security/cert/CertStoreException;

    const-string p3, "importPrivateKey failed"

    invoke-direct {p2, p3, p1}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected loadKeystore()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/AndroidKeyStore;->mKeyStore:Ljava/security/KeyStore;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/AndroidKeyStore;->mType:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/AndroidKeyStore;->mKeyStore:Ljava/security/KeyStore;

    .line 65
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/AndroidKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    .line 77
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/AndroidKeyStore;->mKeyStore:Ljava/security/KeyStore;

    .line 78
    new-instance v0, Ljava/security/cert/CertStoreException;

    invoke-direct {v0, v1}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const-string v1, "Failed to load AndroidKeyStore"

    .line 71
    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/AndroidKeyStore;->mKeyStore:Ljava/security/KeyStore;

    const/4 v0, 0x0

    return v0
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

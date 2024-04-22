.class public abstract Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;
.super Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;
.source "KsCertStore.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "KsCertStore"


# instance fields
.field protected final mKeyPass:[C

.field protected mKeyStore:Ljava/security/KeyStore;

.field protected final mStorePass:[C

.field protected final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[C[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->mStorePass:[C

    .line 52
    iput-object p4, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->mKeyPass:[C

    .line 53
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->mType:Ljava/lang/String;

    return-void
.end method

.method protected static getCertAliasForImport([Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 176
    :try_start_0
    aget-object p0, p0, v0

    .line 177
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/cisco/android/nchs/support/CryptoAlgorithms;->hashToHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 182
    new-instance v0, Ljava/security/cert/CertStoreException;

    const-string v1, "Failed to get alias for import"

    invoke-direct {v0, v1, p0}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected static getCertAliasForKeyAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method protected static getKeyAliasForCertAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public deleteCert(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->loadKeystore()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 220
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->getKeyAliasForCertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->saveKeyStore()V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    .line 238
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteKeyStoreEntry: exception deleting alias="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "KsCertStore"

    invoke-static {v2, v3, p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public getCertChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->loadKeystore()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 257
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->getKeyAliasForCertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 258
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 264
    :cond_1
    array-length v0, p1

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    .line 265
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 267
    aget-object v2, p1, v1

    check-cast v2, Ljava/security/cert/X509Certificate;

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    .line 274
    new-instance v0, Ljava/security/cert/CertStoreException;

    invoke-direct {v0, p1}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getClientCerts()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    const-string v0, "KsCertStore"

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->loadKeystore()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 68
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 70
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    :try_start_1
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v4, v3}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 79
    :cond_2
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v4, v3}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 80
    array-length v5, v4

    if-nez v5, :cond_3

    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p0, v3}, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_0

    .line 91
    :cond_4
    new-instance v5, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->getCertAliasForKeyAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v4, v6, v7}, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;-><init>(Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v4

    .line 95
    :try_start_2
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse key with alias:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v0, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    .line 101
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected KeyStoreException in getClientCerts: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-object v1
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->loadKeystore()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 117
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->getKeyAliasForCertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->mKeyStore:Ljava/security/KeyStore;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->mKeyPass:[C

    invoke-virtual {v0, p1, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p1

    check-cast p1, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 127
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "KsCertStore"

    const-string v3, "Unexpected exception in getPrivateKey"

    invoke-static {v0, v2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public hasImport(Z)Z
    .locals 4

    const/4 v0, 0x0

    .line 191
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->loadKeystore()Z

    move-result v1
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v0

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 200
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "KsCertStore"

    const-string v3, "Exception in hasImport"

    invoke-static {v1, v2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public importKeychainAlias(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 208
    new-instance p1, Ljava/security/cert/CertStoreException;

    const-string v0, "Importing KeyChain alias is not supported"

    invoke-direct {p1, v0}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public importPrivateKey(Ljava/security/Key;[Ljava/security/cert/Certificate;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->loadKeystore()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 143
    :try_start_0
    array-length p3, p2

    if-eqz p3, :cond_1

    .line 148
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->getCertAliasForImport([Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object p3

    .line 149
    invoke-static {p3}, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->getKeyAliasForCertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->mKeyStore:Ljava/security/KeyStore;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->mKeyPass:[C

    invoke-virtual {v1, v0, p1, v2, p2}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 152
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->saveKeyStore()V

    .line 154
    invoke-static {p3}, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;->getKeyAliasForCertAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 145
    :cond_1
    new-instance p1, Ljava/security/cert/CertStoreException;

    const-string p2, "empty certificate chain"

    invoke-direct {p1, p2}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 158
    new-instance p2, Ljava/security/cert/CertStoreException;

    const-string p3, "importPrivateKey failed"

    invoke-direct {p2, p3, p1}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract loadKeystore()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation
.end method

.method protected abstract saveKeyStore()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation
.end method

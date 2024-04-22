.class public Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;
.super Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;
.source "MultiCertStore.java"


# instance fields
.field private final mStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->mStores:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCertStore(Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->mStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public deleteCert(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->mStores:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;

    .line 123
    invoke-virtual {v2, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;->deleteCert(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getCertChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->mStores:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;

    .line 137
    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;->getCertChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getClientCerts()Ljava/util/List;
    .locals 3
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

    .line 45
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->mStores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;

    .line 48
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;->getClientCerts()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 50
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->mStores:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;

    .line 58
    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasImport(Z)Z
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->mStores:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;

    .line 109
    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;->hasImport(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public importKeychainAlias(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->mStores:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;

    const/4 v2, 0x1

    .line 93
    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;->hasImport(Z)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;->importKeychainAlias(Ljava/lang/String;)V

    return-void

    .line 102
    :cond_1
    new-instance p1, Ljava/security/cert/CertStoreException;

    const-string v0, "No store supports importPrivateKey"

    invoke-direct {p1, v0}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public importPrivateKey(Ljava/security/Key;[Ljava/security/cert/Certificate;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/MultiCertStore;->mStores:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;->hasImport(Z)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v1, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;->importPrivateKey(Ljava/security/Key;[Ljava/security/cert/Certificate;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 84
    :cond_2
    new-instance p1, Ljava/security/cert/CertStoreException;

    const-string p2, "No store supports importPrivateKey"

    invoke-direct {p1, p2}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

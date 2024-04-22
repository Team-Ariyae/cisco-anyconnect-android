.class public Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore;
.super Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;
.source "KeychainClientStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "KeychainClientStore"


# instance fields
.field private mAliases:Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;-><init>(Ljava/lang/String;)V

    .line 52
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore;->mAliases:Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;

    .line 53
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getCertChainFromSystem(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 2

    .line 108
    :try_start_0
    invoke-static {p0, p1}, Landroid/security/KeyChain;->getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 112
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "KeychainClientStore"

    const-string v1, "getCertChainFromSystem failed."

    invoke-static {p1, v0, v1, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public deleteCert(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore;->mAliases:Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;

    invoke-interface {v0, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;->removeAlias(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getCertChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore;->mAliases:Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;->getAliases()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore;->getCertChainFromSystem(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public getClientCerts()Ljava/util/List;
    .locals 6
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

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore;->mAliases:Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;

    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;->getAliases()Ljava/util/List;

    move-result-object v1

    .line 71
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    :try_start_0
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/security/KeyChain;->getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 77
    array-length v4, v3

    if-nez v4, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    new-instance v4, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v2, v5}, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;-><init>(Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_1
    :goto_1
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "KeychainClientStore"

    const-string v5, "Removing deleted system client cert."

    invoke-static {v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore;->mAliases:Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;

    invoke-interface {v3, v2}, Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;->removeAlias(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "KeyChain.getCertificateChain failed"

    .line 90
    invoke-static {p0, v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    :try_start_0
    const-string v0, "android.security.KeyChain"

    .line 129
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 131
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "getPrivateKey"

    .line 133
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 135
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore;->mContext:Landroid/content/Context;

    aput-object v3, v1, v4

    aput-object p1, v1, v5

    .line 137
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 141
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "KeychainClientStore"

    const-string v2, "getPrivateKeyFromSystem failed."

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasImport(Z)Z
    .locals 0

    return p1
.end method

.method public importKeychainAlias(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore;->mAliases:Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;

    invoke-interface {v0, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;->addAlias(Ljava/lang/String;)V

    return-void
.end method

.method public importPrivateKey(Ljava/security/Key;[Ljava/security/cert/Certificate;Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 149
    new-instance p1, Ljava/security/cert/CertStoreException;

    const-string p2, "Importing of raw private key is not supported"

    invoke-direct {p1, p2}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

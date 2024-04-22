.class public abstract Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;
.super Ljava/lang/Object;
.source "ClientCertStoreBase.java"


# instance fields
.field protected mGroup:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;->mGroup:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract deleteCert(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation
.end method

.method public abstract getCertChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation
.end method

.method public abstract getClientCerts()Ljava/util/List;
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
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/ClientCertStoreBase;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation
.end method

.method public abstract hasImport(Z)Z
.end method

.method public abstract importKeychainAlias(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation
.end method

.method public abstract importPrivateKey(Ljava/security/Key;[Ljava/security/cert/Certificate;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation
.end method

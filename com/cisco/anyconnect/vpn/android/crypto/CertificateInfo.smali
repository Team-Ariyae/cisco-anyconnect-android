.class public Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;
.super Ljava/lang/Object;
.source "CertificateInfo.java"


# instance fields
.field private final mAlias:Ljava/lang/String;

.field private final mCert:Ljava/security/cert/X509Certificate;

.field private final mGroup:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;->mCert:Ljava/security/cert/X509Certificate;

    .line 13
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;->mAlias:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;->mGroup:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 40
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 45
    :cond_2
    check-cast p1, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;

    .line 46
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;->getX509()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;->getX509()Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getX509()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;->mCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;->mCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->hashCode()I

    move-result v0

    return v0
.end method

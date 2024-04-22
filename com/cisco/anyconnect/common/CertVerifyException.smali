.class public Lcom/cisco/anyconnect/common/CertVerifyException;
.super Ljava/security/cert/CertificateException;
.source "CertVerifyException.java"


# static fields
.field public static final RESULT_CONFIRM_CANCELLED:I = 0x400

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCertChain:[Ljava/security/cert/X509Certificate;

.field private mVerifyCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/security/cert/X509Certificate;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p2, p0, Lcom/cisco/anyconnect/common/CertVerifyException;->mCertChain:[Ljava/security/cert/X509Certificate;

    .line 39
    iput p3, p0, Lcom/cisco/anyconnect/common/CertVerifyException;->mVerifyCode:I

    return-void
.end method

.method public static getWarningsFromCode(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "Certificate is from an untrusted source"

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string v1, "Certificate has expired."

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_3

    const-string v1, "Certificate is not identified for this purpose."

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_4

    const-string v1, "Certificate does not match the server name."

    .line 120
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_5

    const-string p0, "Certificate is not yet valid."

    .line 124
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method


# virtual methods
.method public getCertChain()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/cisco/anyconnect/common/CertVerifyException;->mCertChain:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getWarnings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    iget v0, p0, Lcom/cisco/anyconnect/common/CertVerifyException;->mVerifyCode:I

    invoke-static {v0}, Lcom/cisco/anyconnect/common/CertVerifyException;->getWarningsFromCode(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 2

    .line 50
    iget v0, p0, Lcom/cisco/anyconnect/common/CertVerifyException;->mVerifyCode:I

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnrecoverable()Z
    .locals 2

    .line 61
    iget v0, p0, Lcom/cisco/anyconnect/common/CertVerifyException;->mVerifyCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.class public Lcom/cisco/anyconnect/common/X509CertificateDNMapping;
.super Ljava/lang/Object;
.source "X509CertificateDNMapping.java"


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/cisco/anyconnect/common/X509CertificateDNMapping;->mKey:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/cisco/anyconnect/common/X509CertificateDNMapping;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/cisco/anyconnect/common/X509CertificateDNMapping;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/cisco/anyconnect/common/X509CertificateDNMapping;->mValue:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;
.super Ljava/lang/Object;
.source "ClientCertRequestParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCertChain:Lcom/cisco/android/nchs/aidl/CertificateChain;

.field mKey:Ljava/security/PrivateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel$1;

    invoke-direct {v0}, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/cisco/android/nchs/aidl/CertificateChain;

    invoke-direct {v0}, Lcom/cisco/android/nchs/aidl/CertificateChain;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;->mCertChain:Lcom/cisco/android/nchs/aidl/CertificateChain;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;

    iput-object v0, p0, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;->mKey:Ljava/security/PrivateKey;

    .line 55
    const-class v0, Lcom/cisco/android/nchs/aidl/CertificateChain;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/CertificateChain;

    iput-object p1, p0, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;->mCertChain:Lcom/cisco/android/nchs/aidl/CertificateChain;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/cisco/android/nchs/aidl/CertificateChain;

    invoke-direct {v0}, Lcom/cisco/android/nchs/aidl/CertificateChain;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;->mCertChain:Lcom/cisco/android/nchs/aidl/CertificateChain;

    .line 38
    iput-object p1, p0, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;->mKey:Ljava/security/PrivateKey;

    .line 41
    :try_start_0
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 43
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;->mCertChain:Lcom/cisco/android/nchs/aidl/CertificateChain;

    invoke-virtual {v2}, Lcom/cisco/android/nchs/aidl/CertificateChain;->getDerEncodedCerts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Exception encoding certificate chain"

    .line 48
    invoke-static {p0, p2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCertChain()[Ljava/security/cert/X509Certificate;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;->mCertChain:Lcom/cisco/android/nchs/aidl/CertificateChain;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/aidl/CertificateChain;->getDerEncodedCerts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    iget-object v1, p0, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;->mCertChain:Lcom/cisco/android/nchs/aidl/CertificateChain;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/aidl/CertificateChain;->getDerEncodedCerts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const-string v3, "X509"

    .line 81
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 82
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 83
    invoke-virtual {v3, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;->mKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 67
    iget-object p2, p0, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;->mKey:Ljava/security/PrivateKey;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 68
    iget-object p2, p0, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;->mCertChain:Lcom/cisco/android/nchs/aidl/CertificateChain;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

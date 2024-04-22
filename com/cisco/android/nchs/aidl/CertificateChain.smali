.class public Lcom/cisco/android/nchs/aidl/CertificateChain;
.super Ljava/lang/Object;
.source "CertificateChain.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/android/nchs/aidl/CertificateChain;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mDerEncodedCertBlobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/cisco/android/nchs/aidl/CertificateChain$1;

    invoke-direct {v0}, Lcom/cisco/android/nchs/aidl/CertificateChain$1;-><init>()V

    sput-object v0, Lcom/cisco/android/nchs/aidl/CertificateChain;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/aidl/CertificateChain;->mDerEncodedCertBlobs:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/aidl/CertificateChain;->mDerEncodedCertBlobs:Ljava/util/ArrayList;

    .line 33
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/aidl/CertificateChain;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/cisco/android/nchs/aidl/CertificateChain;->mDerEncodedCertBlobs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDerEncodedCerts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/cisco/android/nchs/aidl/CertificateChain;->mDerEncodedCertBlobs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 45
    iget-object p2, p0, Lcom/cisco/android/nchs/aidl/CertificateChain;->mDerEncodedCertBlobs:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method

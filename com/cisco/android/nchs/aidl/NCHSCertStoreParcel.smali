.class public Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;
.super Ljava/lang/Object;
.source "NCHSCertStoreParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCertStore:Lcom/cisco/android/nchs/aidl/NCHSCertStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel$1;

    invoke-direct {v0}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ANYCONNECT:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    iput-object v0, p0, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->mCertStore:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/android/nchs/aidl/NCHSCertStore;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->mCertStore:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStore()Lcom/cisco/android/nchs/aidl/NCHSCertStore;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->mCertStore:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 62
    invoke-static {}, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->values()[Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->mCertStore:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    return-void
.end method

.method public setStore(Lcom/cisco/android/nchs/aidl/NCHSCertStore;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->mCertStore:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 32
    iget-object p2, p0, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->mCertStore:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

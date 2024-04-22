.class public Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;
.super Ljava/lang/Object;
.source "NCHSNativeServiceStateParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mState:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel$1;

    invoke-direct {v0}, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->STOPPED:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    iput-object v0, p0, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;->mState:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;->mState:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getState()Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;->mState:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 60
    invoke-static {}, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->values()[Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;->mState:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    return-void
.end method

.method public setState(Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;->mState:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 50
    iget-object p2, p0, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;->mState:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

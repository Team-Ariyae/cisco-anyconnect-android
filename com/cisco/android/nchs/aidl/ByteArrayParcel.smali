.class public Lcom/cisco/android/nchs/aidl/ByteArrayParcel;
.super Ljava/lang/Object;
.source "ByteArrayParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/android/nchs/aidl/ByteArrayParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mPayload:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/cisco/android/nchs/aidl/ByteArrayParcel$1;

    invoke-direct {v0}, Lcom/cisco/android/nchs/aidl/ByteArrayParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/android/nchs/aidl/ByteArrayParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 22
    iput-object v0, p0, Lcom/cisco/android/nchs/aidl/ByteArrayParcel;->mPayload:[B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 22
    iput-object v0, p0, Lcom/cisco/android/nchs/aidl/ByteArrayParcel;->mPayload:[B

    .line 31
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/aidl/ByteArrayParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPayload()[B
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/cisco/android/nchs/aidl/ByteArrayParcel;->mPayload:[B

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/android/nchs/aidl/ByteArrayParcel;->mPayload:[B

    return-void
.end method

.method public setPayload([B)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/cisco/android/nchs/aidl/ByteArrayParcel;->mPayload:[B

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 43
    iget-object p2, p0, Lcom/cisco/android/nchs/aidl/ByteArrayParcel;->mPayload:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

.class public Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/RouteParcel;
.super Ljava/lang/Object;
.source "RouteParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/RouteParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddress:Ljava/net/InetAddress;

.field private mPrefixLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/RouteParcel$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/RouteParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/RouteParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/RouteParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 38
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1

    if-ltz p2, :cond_0

    const/16 v0, 0x20

    if-gt p2, v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid IPv4 prefix length "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_1
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_3

    if-ltz p2, :cond_2

    const/16 v0, 0x80

    if-gt p2, v0, :cond_2

    goto :goto_0

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid IPv6 prefix length "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/RouteParcel;->mAddress:Ljava/net/InetAddress;

    .line 53
    iput p2, p0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/RouteParcel;->mPrefixLength:I

    return-void

    .line 36
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid address (null)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/RouteParcel;->mAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    .line 80
    check-cast v0, Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/RouteParcel;->mAddress:Ljava/net/InetAddress;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/RouteParcel;->mPrefixLength:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 68
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/RouteParcel;->mAddress:Ljava/net/InetAddress;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 69
    iget p2, p0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/RouteParcel;->mPrefixLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

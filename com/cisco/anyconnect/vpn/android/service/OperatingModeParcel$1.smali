.class Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel$1;
.super Ljava/lang/Object;
.source "OperatingModeParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;
    .locals 2

    .line 51
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->values()[Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v1, p1

    invoke-direct {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/OperatingMode;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;
    .locals 0

    .line 56
    new-array p1, p1, [Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel$1;->newArray(I)[Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;

    move-result-object p1

    return-object p1
.end method

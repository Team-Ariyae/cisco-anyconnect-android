.class Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult$1;
.super Ljava/lang/Object;
.source "VpnServiceResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 0

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 0

    .line 72
    new-array p1, p1, [Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult$1;->newArray(I)[Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    return-object p1
.end method

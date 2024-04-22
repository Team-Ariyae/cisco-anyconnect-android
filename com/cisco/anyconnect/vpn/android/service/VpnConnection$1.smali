.class Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$1;
.super Ljava/lang/Object;
.source "VpnConnection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 2

    .line 191
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;-><init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/VpnConnection-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 0

    .line 196
    new-array p1, p1, [Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$1;->newArray(I)[Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p1

    return-object p1
.end method

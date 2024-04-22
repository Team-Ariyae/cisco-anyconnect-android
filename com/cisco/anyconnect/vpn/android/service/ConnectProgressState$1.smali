.class Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState$1;
.super Ljava/lang/Object;
.source "ConnectProgressState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;
    .locals 0

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;
    .locals 0

    .line 66
    new-array p1, p1, [Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState$1;->newArray(I)[Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    move-result-object p1

    return-object p1
.end method

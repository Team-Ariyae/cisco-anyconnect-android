.class Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel$1;
.super Ljava/lang/Object;
.source "AAVKReturnCodeParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;
    .locals 2

    .line 73
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;-><init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;
    .locals 0

    .line 78
    new-array p1, p1, [Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel$1;->newArray(I)[Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;

    move-result-object p1

    return-object p1
.end method

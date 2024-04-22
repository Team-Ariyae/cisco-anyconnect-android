.class public Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;
.super Ljava/lang/Object;
.source "OperatingModeParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMode:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/jni/OperatingMode;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;->mMode:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOperatingMode()Lcom/cisco/anyconnect/vpn/jni/OperatingMode;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;->mMode:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 43
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;->mMode:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.class public Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;
.super Ljava/lang/Object;
.source "AAVKReturnCodeParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCode:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;->mCode:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 35
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;->mCode:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    goto :goto_0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;->mCode:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCode()Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;->mCode:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;->getOpCodeForCode(I)Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;->mCode:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 55
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;->mCode:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;->getCode()B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

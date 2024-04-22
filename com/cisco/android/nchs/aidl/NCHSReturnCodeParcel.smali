.class public Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
.super Ljava/lang/Object;
.source "NCHSReturnCodeParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCode:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel$1;

    invoke-direct {v0}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iput-object v0, p0, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->mCode:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 33
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iput-object p1, p0, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->mCode:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->mCode:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->mCode:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->getOpCodeForCode(I)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->mCode:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 52
    iget-object p2, p0, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->mCode:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p2}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->getCode()B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

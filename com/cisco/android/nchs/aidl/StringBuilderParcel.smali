.class public Lcom/cisco/android/nchs/aidl/StringBuilderParcel;
.super Ljava/lang/Object;
.source "StringBuilderParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/android/nchs/aidl/StringBuilderParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSB:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/cisco/android/nchs/aidl/StringBuilderParcel$1;

    invoke-direct {v0}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;->mSB:Ljava/lang/StringBuilder;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/android/nchs/aidl/StringBuilderParcel-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;->mSB:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;->mSB:Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStringBuilder()Ljava/lang/StringBuilder;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;->mSB:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;->mSB:Ljava/lang/StringBuilder;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 52
    iget-object p2, p0, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;->mSB:Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    const-string p2, ""

    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    :cond_1
    iget-object p2, p0, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

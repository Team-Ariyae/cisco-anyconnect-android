.class public Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;
.super Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;
.source "ProtocolInfoParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;-><init>()V

    .line 29
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;-><init>()V

    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->state:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;->state:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->protocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;->protocol:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->cipher:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;->cipher:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->compression:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;->compression:Ljava/lang/String;

    .line 49
    iget-boolean p1, p1, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->isActive:Z

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;->isActive:Z

    :cond_0
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;->state:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;->protocol:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;->cipher:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;->compression:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;->isActive:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 59
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;->state:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;->protocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;->cipher:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;->compression:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;->isActive:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.class public Lcom/cisco/anyconnect/vpn/android/service/StateInfo;
.super Ljava/lang/Object;
.source "StateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/anyconnect/vpn/android/service/StateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field private mStateString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/StateInfo$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/StateInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/jni/VPNState;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->mState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 54
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->mStateString:Ljava/lang/String;

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->values()[Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v1

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ParcelUtils;->intToEnumSafe(I[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->mState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->mStateString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->mState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->mStateString:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->mStateString:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 84
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->mState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->mStateString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

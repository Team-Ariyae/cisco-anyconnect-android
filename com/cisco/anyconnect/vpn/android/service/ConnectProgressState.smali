.class public final enum Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;
.super Ljava/lang/Enum;
.source "ConnectProgressState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Connecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

.field public static final enum Disconnecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

.field public static final enum Initializing:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

.field public static final enum NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 29
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    const-string v1, "NoAction"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    .line 34
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    const-string v3, "Connecting"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Connecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    .line 39
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    const-string v5, "Disconnecting"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Disconnecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    .line 44
    new-instance v5, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    const-string v7, "Initializing"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Initializing:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 24
    sput-object v7, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    .line 57
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;
    .locals 1

    .line 24
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;
    .locals 1

    .line 24
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

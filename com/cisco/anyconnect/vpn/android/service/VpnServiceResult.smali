.class public final enum Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
.super Ljava/lang/Enum;
.source "VpnServiceResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

.field public static final enum CERT_IMPORT_INVALID_STATE:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

.field public static final enum CERT_IMPORT_IN_PROGRESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

.field public static final enum CONNECT_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

.field public static final enum CONNECT_FIPS_MISMATCH:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_CERTIFICATE_HASH:Ljava/lang/String; = "certHash"

.field public static final enum INITIALIZATION_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

.field public static final enum MDM_CONTROLLED_CONNECTION:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

.field public static final enum OPERATION_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

.field public static final enum OPERATION_IN_PROGRESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

.field public static final enum SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;


# instance fields
.field private mExtras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 23
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 24
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    const-string v3, "OPERATION_FAILED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->OPERATION_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 25
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    const-string v5, "INITIALIZATION_FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->INITIALIZATION_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 26
    new-instance v5, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    const-string v7, "CERT_IMPORT_INVALID_STATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CERT_IMPORT_INVALID_STATE:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 27
    new-instance v7, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    const-string v9, "CERT_IMPORT_IN_PROGRESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CERT_IMPORT_IN_PROGRESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 28
    new-instance v9, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    const-string v11, "OPERATION_IN_PROGRESS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->OPERATION_IN_PROGRESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 29
    new-instance v11, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    const-string v13, "CONNECT_FIPS_MISMATCH"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CONNECT_FIPS_MISMATCH:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 34
    new-instance v13, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    const-string v15, "CONNECT_FAILED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CONNECT_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 40
    new-instance v15, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    const-string v14, "MDM_CONTROLLED_CONNECTION"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->MDM_CONTROLLED_CONNECTION:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 21
    sput-object v14, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 63
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 1

    .line 21
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 1

    .line 21
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

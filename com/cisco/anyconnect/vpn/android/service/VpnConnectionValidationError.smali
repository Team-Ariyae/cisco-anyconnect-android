.class public final enum Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;
.super Ljava/lang/Enum;
.source "VpnConnectionValidationError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

.field public static final enum DuplicateName:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

.field public static final enum InvalidCertificate:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

.field public static final enum InvalidHost:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

.field public static final enum InvalidName:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

.field public static final enum InvalidState:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

.field public static final enum NoPermissions:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

.field public static final enum None:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

.field public static final enum Unknown:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

.field public static final enum Unpopulated:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;


# instance fields
.field private mBitmask:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 22
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->None:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    .line 23
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    const-string v3, "InvalidName"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidName:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    .line 24
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    const-string v6, "DuplicateName"

    const/4 v7, 0x4

    invoke-direct {v3, v6, v5, v7}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->DuplicateName:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    .line 25
    new-instance v6, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    const-string v8, "InvalidHost"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidHost:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    .line 26
    new-instance v8, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    const-string v11, "InvalidState"

    const/16 v12, 0x10

    invoke-direct {v8, v11, v7, v12}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidState:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    .line 27
    new-instance v11, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    const/16 v12, 0x20

    const-string v13, "InvalidCertificate"

    const/4 v14, 0x5

    invoke-direct {v11, v13, v14, v12}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidCertificate:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    .line 28
    new-instance v12, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    const/16 v13, 0x40

    const-string v15, "Unpopulated"

    const/4 v14, 0x6

    invoke-direct {v12, v15, v14, v13}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->Unpopulated:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    .line 29
    new-instance v13, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    const/16 v15, 0x80

    const-string v14, "Unknown"

    const/4 v7, 0x7

    invoke-direct {v13, v14, v7, v15}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->Unknown:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    .line 30
    new-instance v14, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    const-string v15, "NoPermissions"

    const/16 v7, 0x100

    invoke-direct {v14, v15, v10, v7}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->NoPermissions:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    const/16 v7, 0x9

    new-array v7, v7, [Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v5

    aput-object v6, v7, v9

    const/4 v0, 0x4

    aput-object v8, v7, v0

    const/4 v0, 0x5

    aput-object v11, v7, v0

    const/4 v0, 0x6

    aput-object v12, v7, v0

    const/4 v0, 0x7

    aput-object v13, v7, v0

    aput-object v14, v7, v10

    .line 20
    sput-object v7, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->mBitmask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;
    .locals 1

    .line 20
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;
    .locals 1

    .line 20
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    return-object v0
.end method


# virtual methods
.method public GetBitmask()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->mBitmask:I

    return v0
.end method

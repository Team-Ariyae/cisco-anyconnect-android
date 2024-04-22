.class public final enum Lcom/cisco/anyconnect/vpn/jni/OperatingMode;
.super Ljava/lang/Enum;
.source "OperatingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/jni/OperatingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum AlwaysOnVpn:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum AutomaticHeadendSelection:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum DisconnectAllowed:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum EventModel:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum FIPS:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum NetworkIssue:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum None:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum OnTrustedNetwork:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum Quarantined:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum StartBeforeLogon:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum StrictMode:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum TrustedNetworkDetection:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 9
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->None:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 10
    new-instance v1, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const-string v3, "FIPS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->FIPS:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 11
    new-instance v3, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const-string v5, "StartBeforeLogon"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->StartBeforeLogon:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 12
    new-instance v5, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const-string v7, "EventModel"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->EventModel:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 13
    new-instance v7, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const-string v10, "TrustedNetworkDetection"

    const/16 v11, 0x8

    invoke-direct {v7, v10, v9, v11}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->TrustedNetworkDetection:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 14
    new-instance v10, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const/16 v12, 0x10

    const-string v13, "AlwaysOnVpn"

    const/4 v14, 0x5

    invoke-direct {v10, v13, v14, v12}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->AlwaysOnVpn:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 15
    new-instance v12, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const/16 v13, 0x20

    const-string v15, "NetworkIssue"

    const/4 v14, 0x6

    invoke-direct {v12, v15, v14, v13}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->NetworkIssue:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 16
    new-instance v13, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const/16 v15, 0x40

    const-string v14, "Quarantined"

    const/4 v9, 0x7

    invoke-direct {v13, v14, v9, v15}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->Quarantined:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 17
    new-instance v14, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const-string v15, "AutomaticHeadendSelection"

    const/16 v9, 0x80

    invoke-direct {v14, v15, v11, v9}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->AutomaticHeadendSelection:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 18
    new-instance v9, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const/16 v15, 0x100

    const-string v11, "DisconnectAllowed"

    const/16 v8, 0x9

    invoke-direct {v9, v11, v8, v15}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->DisconnectAllowed:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 19
    new-instance v11, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const/16 v15, 0x800

    const-string v8, "OnTrustedNetwork"

    const/16 v6, 0xa

    invoke-direct {v11, v8, v6, v15}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->OnTrustedNetwork:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 20
    new-instance v8, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const/16 v15, 0x4000

    const-string v6, "StrictMode"

    const/16 v4, 0xb

    invoke-direct {v8, v6, v4, v15}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->StrictMode:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const/16 v6, 0xc

    new-array v6, v6, [Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v10, v6, v0

    const/4 v0, 0x6

    aput-object v12, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v14, v6, v0

    const/16 v0, 0x9

    aput-object v9, v6, v0

    const/16 v0, 0xa

    aput-object v11, v6, v0

    aput-object v8, v6, v4

    .line 7
    sput-object v6, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/OperatingMode;
    .locals 1

    .line 7
    const-class v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/jni/OperatingMode;
    .locals 1

    .line 7
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    return-object v0
.end method


# virtual methods
.method GetValue()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->mValue:I

    return v0
.end method

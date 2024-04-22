.class final enum Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;
.super Ljava/lang/Enum;
.source "LoggingActivity.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter$ExpandableListItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SystemInfoItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;",
        ">;",
        "Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter$ExpandableListItem;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

.field public static final enum DEVICE_IDENTIFIERS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

.field public static final enum FILTERS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

.field public static final enum INTERFACE:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

.field public static final enum IP_RULES:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

.field public static final enum MANAGED_CONFIG:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

.field public static final enum MEMORY:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

.field public static final enum MEMORY_MAP:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

.field public static final enum PERMISSIONS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

.field public static final enum PROCESS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

.field public static final enum PROPERTIES:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

.field public static final enum ROUTE:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

.field public static final enum ROUTE_TABLES:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;


# instance fields
.field private final mStringResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 181
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    const v1, 0x7f1101b6

    const-string v2, "MANAGED_CONFIG"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->MANAGED_CONFIG:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 182
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    const v2, 0x7f1101cc

    const-string v4, "MEMORY"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->MEMORY:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 183
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    const v4, 0x7f110188

    const-string v6, "INTERFACE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->INTERFACE:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 184
    new-instance v4, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    const v6, 0x7f11029a

    const-string v8, "ROUTE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->ROUTE:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 185
    new-instance v6, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    const v8, 0x7f110145

    const-string v10, "FILTERS"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->FILTERS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 186
    new-instance v8, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    const v10, 0x7f110235

    const-string v12, "PERMISSIONS"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->PERMISSIONS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 187
    new-instance v10, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    const v12, 0x7f110254

    const-string v14, "PROCESS"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->PROCESS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 188
    new-instance v12, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    const v14, 0x7f11026b

    const-string v15, "PROPERTIES"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->PROPERTIES:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 189
    new-instance v14, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    const v15, 0x7f1101cd

    const-string v13, "MEMORY_MAP"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->MEMORY_MAP:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 190
    new-instance v13, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    const v15, 0x7f11018b

    const-string v11, "IP_RULES"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->IP_RULES:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 191
    new-instance v11, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    const v15, 0x7f110038

    const-string v9, "ROUTE_TABLES"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->ROUTE_TABLES:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 192
    new-instance v9, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    const v15, 0x7f11011a

    const-string v7, "DEVICE_IDENTIFIERS"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->DEVICE_IDENTIFIERS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    const/16 v7, 0xc

    new-array v7, v7, [Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    aput-object v0, v7, v3

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v4, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    const/4 v0, 0x5

    aput-object v8, v7, v0

    const/4 v0, 0x6

    aput-object v10, v7, v0

    const/4 v0, 0x7

    aput-object v12, v7, v0

    const/16 v0, 0x8

    aput-object v14, v7, v0

    const/16 v0, 0x9

    aput-object v13, v7, v0

    const/16 v0, 0xa

    aput-object v11, v7, v0

    aput-object v9, v7, v5

    .line 180
    sput-object v7, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 196
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 197
    iput p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->mStringResource:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;
    .locals 1

    .line 180
    const-class v0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;
    .locals 1

    .line 180
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    return-object v0
.end method


# virtual methods
.method public getStringResource()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->mStringResource:I

    return v0
.end method

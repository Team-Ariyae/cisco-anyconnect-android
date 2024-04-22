.class public final enum Lcom/cisco/android/nchs/codes/BroadcastOpcode;
.super Ljava/lang/Enum;
.source "BroadcastOpcode.java"

# interfaces
.implements Lcom/cisco/android/nchs/codes/IOpcode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/android/nchs/codes/BroadcastOpcode;",
        ">;",
        "Lcom/cisco/android/nchs/codes/IOpcode;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/android/nchs/codes/BroadcastOpcode;

.field public static final enum LOCALE_CHANGE_EVENT:Lcom/cisco/android/nchs/codes/BroadcastOpcode;

.field public static final enum NETWORK_CONNECTIVITY_EVENT:Lcom/cisco/android/nchs/codes/BroadcastOpcode;

.field public static final enum PACKAGE_CHANGE_EVENT:Lcom/cisco/android/nchs/codes/BroadcastOpcode;

.field public static final enum PUBLIC_NETWORK_CHANGE_EVENT:Lcom/cisco/android/nchs/codes/BroadcastOpcode;

.field public static final enum VPN_REVOKED_EVENT:Lcom/cisco/android/nchs/codes/BroadcastOpcode;


# instance fields
.field private mCode:B


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 30
    new-instance v0, Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    const-string v1, "NETWORK_CONNECTIVITY_EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/cisco/android/nchs/codes/BroadcastOpcode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/android/nchs/codes/BroadcastOpcode;->NETWORK_CONNECTIVITY_EVENT:Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    .line 35
    new-instance v1, Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    const-string v3, "LOCALE_CHANGE_EVENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/cisco/android/nchs/codes/BroadcastOpcode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cisco/android/nchs/codes/BroadcastOpcode;->LOCALE_CHANGE_EVENT:Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    .line 40
    new-instance v3, Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    const-string v5, "VPN_REVOKED_EVENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/cisco/android/nchs/codes/BroadcastOpcode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/cisco/android/nchs/codes/BroadcastOpcode;->VPN_REVOKED_EVENT:Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    .line 43
    new-instance v5, Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    const-string v7, "PUBLIC_NETWORK_CHANGE_EVENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/cisco/android/nchs/codes/BroadcastOpcode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/cisco/android/nchs/codes/BroadcastOpcode;->PUBLIC_NETWORK_CHANGE_EVENT:Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    .line 48
    new-instance v7, Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    const-string v9, "PACKAGE_CHANGE_EVENT"

    const/4 v10, 0x4

    const/4 v11, 0x5

    invoke-direct {v7, v9, v10, v11}, Lcom/cisco/android/nchs/codes/BroadcastOpcode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/cisco/android/nchs/codes/BroadcastOpcode;->PACKAGE_CHANGE_EVENT:Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    new-array v9, v11, [Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 25
    sput-object v9, Lcom/cisco/android/nchs/codes/BroadcastOpcode;->$VALUES:[Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    and-int/lit16 p1, p3, 0xff

    int-to-byte p1, p1

    .line 57
    iput-byte p1, p0, Lcom/cisco/android/nchs/codes/BroadcastOpcode;->mCode:B

    return-void
.end method

.method public static getByCode(B)Lcom/cisco/android/nchs/codes/BroadcastOpcode;
    .locals 5

    .line 114
    invoke-static {}, Lcom/cisco/android/nchs/codes/BroadcastOpcode;->values()[Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 116
    invoke-virtual {v3}, Lcom/cisco/android/nchs/codes/BroadcastOpcode;->getCode()B

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/android/nchs/codes/BroadcastOpcode;
    .locals 1

    .line 25
    const-class v0, Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    return-object p0
.end method

.method public static values()[Lcom/cisco/android/nchs/codes/BroadcastOpcode;
    .locals 1

    .line 25
    sget-object v0, Lcom/cisco/android/nchs/codes/BroadcastOpcode;->$VALUES:[Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    invoke-virtual {v0}, [Lcom/cisco/android/nchs/codes/BroadcastOpcode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    return-object v0
.end method


# virtual methods
.method public getCode()B
    .locals 1

    .line 65
    iget-byte v0, p0, Lcom/cisco/android/nchs/codes/BroadcastOpcode;->mCode:B

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/cisco/android/nchs/codes/BroadcastOpcode;->validateCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/cisco/android/nchs/codes/BroadcastOpcode;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldDisconnect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public validateArguments(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cisco/android/nchs/ipc/ArgumentMapping;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public validateCode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

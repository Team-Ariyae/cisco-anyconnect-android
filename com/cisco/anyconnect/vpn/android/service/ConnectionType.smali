.class public final enum Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;
.super Ljava/lang/Enum;
.source "ConnectionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

.field public static final enum Manual:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

.field public static final enum Profile_Android_Work:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

.field public static final enum Profile_Imported:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

.field public static final enum Profile_Knox_AppTunnel:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

.field public static final enum Profile_Knox_System:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

.field private static mTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 18
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    const-string v1, "Manual"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Manual:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    .line 19
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    const-string v3, "Profile_Imported"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Imported:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    .line 20
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    const-string v5, "Profile_Knox_System"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Knox_System:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    .line 21
    new-instance v5, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    const-string v7, "Profile_Knox_AppTunnel"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Knox_AppTunnel:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    .line 22
    new-instance v7, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    const-string v9, "Profile_Android_Work"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Android_Work:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 16
    sput-object v9, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    .line 28
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->values()[Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->mTypes:[Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->values()[Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v5, v0, v2

    .line 32
    sget-object v6, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->mTypes:[Ljava/lang/String;

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getStringValue(I)Ljava/lang/String;
    .locals 2

    .line 44
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->mTypes:[Ljava/lang/String;

    array-length v1, v0

    if-le v1, p0, :cond_0

    .line 46
    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStringValues()[Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->mTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;
    .locals 1

    .line 16
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;
    .locals 1

    .line 16
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    return-object v0
.end method

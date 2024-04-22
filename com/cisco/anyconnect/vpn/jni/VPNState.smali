.class public final enum Lcom/cisco/anyconnect/vpn/jni/VPNState;
.super Ljava/lang/Enum;
.source "VPNState.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/jni/VPNState;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field public static final enum AUTHENTICATING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field public static final enum CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field public static final enum CONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field public static final enum DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field public static final enum DISCONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field public static final enum OPENPAUSED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field public static final enum PAUSING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field public static final enum RECONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field public static final enum SSOPOLLING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field private static final intMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/cisco/anyconnect/vpn/jni/VPNState;",
            ">;"
        }
    .end annotation
.end field

.field private static final stringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cisco/anyconnect/vpn/jni/VPNState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 15
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const-string v1, "Connecting"

    const-string v2, "CONNECTING"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cisco/anyconnect/vpn/jni/VPNState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 19
    new-instance v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const-string v2, "Connected"

    const-string v4, "CONNECTED"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/cisco/anyconnect/vpn/jni/VPNState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 23
    new-instance v2, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const-string v4, "Reconnecting"

    const-string v6, "RECONNECTING"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/cisco/anyconnect/vpn/jni/VPNState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/cisco/anyconnect/vpn/jni/VPNState;->RECONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 27
    new-instance v4, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const-string v6, "Disconnecting"

    const-string v8, "DISCONNECTING"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/cisco/anyconnect/vpn/jni/VPNState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 31
    new-instance v6, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const-string v8, "Disconnected"

    const-string v10, "DISCONNECTED"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/cisco/anyconnect/vpn/jni/VPNState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 35
    new-instance v8, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const-string v10, "Pausing"

    const-string v12, "PAUSING"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/cisco/anyconnect/vpn/jni/VPNState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/cisco/anyconnect/vpn/jni/VPNState;->PAUSING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 39
    new-instance v10, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const-string v12, "Paused"

    const-string v14, "OPENPAUSED"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/cisco/anyconnect/vpn/jni/VPNState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/cisco/anyconnect/vpn/jni/VPNState;->OPENPAUSED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 41
    new-instance v12, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const-string v14, "Authenticating"

    const-string v15, "AUTHENTICATING"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/cisco/anyconnect/vpn/jni/VPNState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/cisco/anyconnect/vpn/jni/VPNState;->AUTHENTICATING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 43
    new-instance v14, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const-string v15, "SSO Polling"

    const-string v13, "SSOPOLLING"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/cisco/anyconnect/vpn/jni/VPNState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/cisco/anyconnect/vpn/jni/VPNState;->SSOPOLLING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const/16 v13, 0x9

    new-array v13, v13, [Lcom/cisco/anyconnect/vpn/jni/VPNState;

    aput-object v0, v13, v3

    aput-object v1, v13, v5

    aput-object v2, v13, v7

    aput-object v4, v13, v9

    const/4 v0, 0x4

    aput-object v6, v13, v0

    const/4 v0, 0x5

    aput-object v8, v13, v0

    const/4 v0, 0x6

    aput-object v10, v13, v0

    const/4 v0, 0x7

    aput-object v12, v13, v0

    aput-object v14, v13, v11

    .line 10
    sput-object v13, Lcom/cisco/anyconnect/vpn/jni/VPNState;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->intMap:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->stringMap:Ljava/util/Map;

    .line 51
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->values()[Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 52
    sget-object v4, Lcom/cisco/anyconnect/vpn/jni/VPNState;->intMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v4, Lcom/cisco/anyconnect/vpn/jni/VPNState;->stringMap:Ljava/util/Map;

    iget-object v5, v2, Lcom/cisco/anyconnect/vpn/jni/VPNState;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->name:Ljava/lang/String;

    return-void
.end method

.method public static getState(Ljava/lang/Integer;)Lcom/cisco/anyconnect/vpn/jni/VPNState;
    .locals 1

    .line 70
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->intMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    return-object p0
.end method

.method public static getState(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/VPNState;
    .locals 1

    .line 66
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->stringMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/VPNState;
    .locals 1

    .line 10
    const-class v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/jni/VPNState;
    .locals 1

    .line 10
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/VPNState;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/jni/VPNState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/jni/VPNState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->name:Ljava/lang/String;

    return-object v0
.end method

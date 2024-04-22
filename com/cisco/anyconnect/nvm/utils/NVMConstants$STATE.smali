.class public final enum Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;
.super Ljava/lang/Enum;
.source "NVMConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/nvm/utils/NVMConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

.field public static final enum STATE_AUTHENTICATING:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

.field public static final enum STATE_CONNECTED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

.field public static final enum STATE_CONNECTING:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

.field public static final enum STATE_DISCONNECTED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

.field public static final enum STATE_DISCONNECTING:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

.field public static final enum STATE_PAUSED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

.field public static final enum STATE_PAUSING:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

.field public static final enum STATE_RECONNECTING:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

.field public static final enum STATE_SSOPOLLING:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

.field public static final enum STATE_UNDEFINED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

.field static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private vpnState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 186
    new-instance v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    const-string v1, "Connecting"

    const-string v2, "STATE_CONNECTING"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->STATE_CONNECTING:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    new-instance v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    const-string v2, "Connected"

    const-string v4, "STATE_CONNECTED"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->STATE_CONNECTED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    new-instance v2, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    const-string v4, "Reconnecting"

    const-string v6, "STATE_RECONNECTING"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->STATE_RECONNECTING:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    .line 187
    new-instance v4, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    const-string v6, "Disconnecting"

    const-string v8, "STATE_DISCONNECTING"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->STATE_DISCONNECTING:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    new-instance v6, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    const-string v8, "Disconnected"

    const-string v10, "STATE_DISCONNECTED"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->STATE_DISCONNECTED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    .line 188
    new-instance v8, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    const-string v10, "Pausing"

    const-string v12, "STATE_PAUSING"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->STATE_PAUSING:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    new-instance v10, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    const-string v12, "Paused"

    const-string v14, "STATE_PAUSED"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->STATE_PAUSED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    .line 189
    new-instance v12, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    const-string v14, "Authenticating"

    const-string v15, "STATE_AUTHENTICATING"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->STATE_AUTHENTICATING:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    new-instance v14, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    const-string v15, "SSOPooling"

    const-string v13, "STATE_SSOPOLLING"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->STATE_SSOPOLLING:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    .line 190
    new-instance v13, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    const-string v15, "Undefined"

    const-string v11, "STATE_UNDEFINED"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->STATE_UNDEFINED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    aput-object v0, v11, v3

    aput-object v1, v11, v5

    aput-object v2, v11, v7

    const/4 v0, 0x3

    aput-object v4, v11, v0

    const/4 v0, 0x4

    aput-object v6, v11, v0

    const/4 v0, 0x5

    aput-object v8, v11, v0

    const/4 v0, 0x6

    aput-object v10, v11, v0

    const/4 v0, 0x7

    aput-object v12, v11, v0

    const/16 v0, 0x8

    aput-object v14, v11, v0

    aput-object v13, v11, v9

    .line 185
    sput-object v11, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->$VALUES:[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->map:Ljava/util/Map;

    .line 201
    invoke-static {}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->values()[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 202
    sget-object v4, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->map:Ljava/util/Map;

    iget-object v5, v2, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->vpnState:Ljava/lang/String;

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

    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 195
    iput-object p3, p0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->vpnState:Ljava/lang/String;

    return-void
.end method

.method public static getByState(Ljava/lang/String;)Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;
    .locals 1

    .line 207
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    .line 209
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->STATE_UNDEFINED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->STATE_DISCONNECTED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    :goto_0
    return-object p0

    .line 211
    :cond_1
    sget-object p0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->STATE_UNDEFINED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;
    .locals 1

    .line 185
    const-class v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;
    .locals 1

    .line 185
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->$VALUES:[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    return-object v0
.end method

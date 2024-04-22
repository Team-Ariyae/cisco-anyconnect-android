.class public final enum Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;
.super Ljava/lang/Enum;
.source "NVMConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/nvm/utils/NVMConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NETWORK_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

.field public static final enum NT_TRUSTED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

.field public static final enum NT_UNDEFINED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

.field public static final enum NT_UNTRUSTED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

.field static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private netType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 244
    new-instance v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    const-string v1, "Trusted"

    const-string v2, "NT_TRUSTED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;->NT_TRUSTED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    new-instance v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    const-string v2, "Untrusted"

    const-string v4, "NT_UNTRUSTED"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;->NT_UNTRUSTED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    new-instance v2, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    const-string v4, "Undefined"

    const-string v6, "NT_UNDEFINED"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;->NT_UNDEFINED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    .line 243
    sput-object v4, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;->$VALUES:[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;->map:Ljava/util/Map;

    .line 255
    invoke-static {}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;->values()[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 256
    sget-object v4, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;->map:Ljava/util/Map;

    iget-object v5, v2, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;->netType:Ljava/lang/String;

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

    .line 248
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 249
    iput-object p3, p0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;->netType:Ljava/lang/String;

    return-void
.end method

.method public static getByType(Ljava/lang/String;)Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;
    .locals 1

    .line 261
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;
    .locals 1

    .line 243
    const-class v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;
    .locals 1

    .line 243
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;->$VALUES:[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    return-object v0
.end method

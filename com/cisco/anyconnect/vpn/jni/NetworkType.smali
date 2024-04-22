.class public final enum Lcom/cisco/anyconnect/vpn/jni/NetworkType;
.super Ljava/lang/Enum;
.source "NetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/jni/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/jni/NetworkType;

.field public static final enum TRUSTED:Lcom/cisco/anyconnect/vpn/jni/NetworkType;

.field public static final enum UNDEFINED:Lcom/cisco/anyconnect/vpn/jni/NetworkType;

.field public static final enum UNTRUSTED:Lcom/cisco/anyconnect/vpn/jni/NetworkType;

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/cisco/anyconnect/vpn/jni/NetworkType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 12
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/NetworkType;

    const-string v1, "Trusted"

    const-string v2, "TRUSTED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cisco/anyconnect/vpn/jni/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/NetworkType;->TRUSTED:Lcom/cisco/anyconnect/vpn/jni/NetworkType;

    .line 13
    new-instance v1, Lcom/cisco/anyconnect/vpn/jni/NetworkType;

    const-string v2, "Untrusted"

    const-string v4, "UNTRUSTED"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/cisco/anyconnect/vpn/jni/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/jni/NetworkType;->UNTRUSTED:Lcom/cisco/anyconnect/vpn/jni/NetworkType;

    .line 14
    new-instance v2, Lcom/cisco/anyconnect/vpn/jni/NetworkType;

    const-string v4, "Undefined"

    const-string v6, "UNDEFINED"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/cisco/anyconnect/vpn/jni/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/cisco/anyconnect/vpn/jni/NetworkType;->UNDEFINED:Lcom/cisco/anyconnect/vpn/jni/NetworkType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/cisco/anyconnect/vpn/jni/NetworkType;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    .line 10
    sput-object v4, Lcom/cisco/anyconnect/vpn/jni/NetworkType;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/NetworkType;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/NetworkType;->map:Ljava/util/Map;

    .line 21
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/NetworkType;->values()[Lcom/cisco/anyconnect/vpn/jni/NetworkType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 22
    sget-object v4, Lcom/cisco/anyconnect/vpn/jni/NetworkType;->map:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/jni/NetworkType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/jni/NetworkType;->name:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/Integer;)Lcom/cisco/anyconnect/vpn/jni/NetworkType;
    .locals 1

    .line 35
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/NetworkType;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/jni/NetworkType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/NetworkType;
    .locals 1

    .line 10
    const-class v0, Lcom/cisco/anyconnect/vpn/jni/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/jni/NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/jni/NetworkType;
    .locals 1

    .line 10
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/NetworkType;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/NetworkType;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/jni/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/jni/NetworkType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/NetworkType;->name:Ljava/lang/String;

    return-object v0
.end method

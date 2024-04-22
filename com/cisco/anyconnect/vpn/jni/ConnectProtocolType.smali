.class public final enum Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;
.super Ljava/lang/Enum;
.source "ConnectProtocolType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

.field public static final enum Ipsec:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

.field public static final enum Ssl:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

.field public static final enum Unknown:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

.field private static mTypes:[Ljava/lang/String;


# instance fields
.field private mLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 5
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Unknown:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    .line 6
    new-instance v1, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    const-string v3, "SSL"

    const-string v4, "Ssl"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ssl:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    .line 7
    new-instance v3, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    const-string v4, "IPsec"

    const-string v6, "Ipsec"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ipsec:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    aput-object v0, v4, v2

    aput-object v1, v4, v5

    aput-object v3, v4, v7

    .line 3
    sput-object v4, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    .line 37
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->values()[Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->mTypes:[Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->values()[Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 41
    sget-object v5, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->mTypes:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v6

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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;
    .locals 5

    .line 23
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->values()[Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 25
    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_1
    sget-object p0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Unknown:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    return-object p0
.end method

.method public static getStringValue(I)Ljava/lang/String;
    .locals 2

    .line 52
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->getStringValues()[Ljava/lang/String;

    move-result-object v0

    .line 54
    array-length v1, v0

    if-le v1, p0, :cond_0

    .line 56
    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStringValues()[Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->mTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;
    .locals 1

    .line 3
    const-class v0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;
    .locals 1

    .line 3
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->mLabel:Ljava/lang/String;

    return-object v0
.end method

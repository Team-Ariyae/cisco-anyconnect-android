.class final enum Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;
.super Ljava/lang/Enum;
.source "ANIMessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

.field public static final enum ClientDisconnect:Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

.field public static final enum Configure:Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

.field public static final enum FlowClosed:Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

.field public static final enum FlowData:Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

.field public static final enum FlowOpened:Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

.field public static final enum Unknown:Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

.field static valueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 7
    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->Unknown:Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    .line 8
    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    const-string v3, "Configure"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->Configure:Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    .line 9
    new-instance v3, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    const-string v5, "ClientDisconnect"

    const/4 v6, 0x2

    const/4 v7, 0x5

    invoke-direct {v3, v5, v6, v7}, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->ClientDisconnect:Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    .line 10
    new-instance v5, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    const/16 v8, 0xa

    const-string v9, "FlowOpened"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v8}, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->FlowOpened:Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    .line 11
    new-instance v8, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    const/16 v9, 0xb

    const-string v11, "FlowData"

    const/4 v12, 0x4

    invoke-direct {v8, v11, v12, v9}, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->FlowData:Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    .line 12
    new-instance v9, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    const-string v11, "FlowClosed"

    const/16 v13, 0xc

    invoke-direct {v9, v11, v7, v13}, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->FlowClosed:Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v10

    aput-object v8, v11, v12

    aput-object v9, v11, v7

    .line 6
    sput-object v11, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->$VALUES:[Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->valueMap:Ljava/util/Map;

    .line 20
    invoke-static {}, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->values()[Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 22
    sget-object v4, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->valueMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->mValue:I

    return-void
.end method

.method static from(I)Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;
    .locals 1

    .line 37
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->valueMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    if-nez p0, :cond_0

    .line 39
    sget-object p0, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->Unknown:Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;
    .locals 1

    .line 6
    const-class v0, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;
    .locals 1

    .line 6
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->$VALUES:[Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/ANIMessageType;->mValue:I

    return v0
.end method

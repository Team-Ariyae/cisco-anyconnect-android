.class public final enum Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;
.super Ljava/lang/Enum;
.source "NetworkFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPProtocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

.field public static final enum TCP:Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

.field public static final enum UDP:Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

.field static valueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 80
    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    const/16 v1, 0x11

    const-string v2, "UDP"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;->UDP:Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    .line 81
    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    const/4 v2, 0x6

    const-string v4, "TCP"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;->TCP:Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    .line 79
    sput-object v2, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;->$VALUES:[Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;->valueMap:Ljava/util/Map;

    .line 87
    invoke-static {}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;->values()[Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 88
    sget-object v4, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;->valueMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

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

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput p3, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;->mValue:I

    return-void
.end method

.method public static from(I)Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;
    .locals 1

    .line 101
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;->valueMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;
    .locals 1

    .line 79
    const-class v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;
    .locals 1

    .line 79
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;->$VALUES:[Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;->mValue:I

    return v0
.end method

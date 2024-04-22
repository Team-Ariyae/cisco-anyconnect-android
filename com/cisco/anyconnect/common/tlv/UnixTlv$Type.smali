.class public final enum Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;
.super Ljava/lang/Enum;
.source "UnixTlv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/common/tlv/UnixTlv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

.field public static final enum Boolean:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

.field public static final enum Bytes:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

.field public static final enum IPv4Address:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

.field public static final enum IPv6Address:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

.field public static final enum Int:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

.field public static final enum Short:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

.field public static final enum String:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

.field public static final enum TLV:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

.field public static final enum Unknown:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 7
    new-instance v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->Unknown:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    .line 8
    new-instance v1, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    const-string v3, "Int"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->Int:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    .line 9
    new-instance v3, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    const-string v5, "Short"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->Short:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    .line 10
    new-instance v5, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    const-string v7, "IPv4Address"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->IPv4Address:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    .line 11
    new-instance v7, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    const-string v9, "IPv6Address"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->IPv6Address:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    .line 12
    new-instance v9, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    const-string v11, "String"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->String:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    .line 13
    new-instance v11, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    const-string v13, "Boolean"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->Boolean:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    .line 14
    new-instance v13, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    const-string v15, "Bytes"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->Bytes:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    .line 15
    new-instance v15, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    const-string v14, "TLV"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->TLV:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 6
    sput-object v14, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->$VALUES:[Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static from(I)Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;
    .locals 1

    .line 19
    :try_start_0
    invoke-static {}, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->values()[Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    move-result-object v0

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;
    .locals 1

    .line 6
    const-class v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;
    .locals 1

    .line 6
    sget-object v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->$VALUES:[Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    return-object v0
.end method

.class final enum Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;
.super Ljava/lang/Enum;
.source "URIHandlerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VpnUriParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

.field public static final enum AUTHENTICATION:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

.field public static final enum CERT_COMMON_NAME:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

.field public static final enum HOST:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

.field public static final enum KEYCHAINALIAS:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

.field public static final enum LANG:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

.field public static final enum NAME:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

.field public static final enum ON_ERROR:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

.field public static final enum ON_SUCCESS:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

.field public static final enum PROTOCOL:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

.field public static final enum TOKEN:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

.field public static final enum TYPE:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

.field public static final enum URI:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

.field public static final enum USECERT:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 190
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    const-string v1, "type"

    const-string v2, "TYPE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->TYPE:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    .line 191
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    const-string/jumbo v2, "uri"

    const-string v4, "URI"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->URI:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    .line 192
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    const-string v4, "name"

    const-string v6, "NAME"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->NAME:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    .line 193
    new-instance v4, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    const-string v6, "host"

    const-string v8, "HOST"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->HOST:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    .line 194
    new-instance v6, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    const-string/jumbo v8, "usecert"

    const-string v10, "USECERT"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->USECERT:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    .line 195
    new-instance v8, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    const-string v10, "lang"

    const-string v12, "LANG"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->LANG:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    .line 196
    new-instance v10, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    const-string v12, "certcommonname"

    const-string v14, "CERT_COMMON_NAME"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->CERT_COMMON_NAME:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    .line 197
    new-instance v12, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    const-string v14, "onsuccess"

    const-string v15, "ON_SUCCESS"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->ON_SUCCESS:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    .line 198
    new-instance v14, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    const-string v15, "onerror"

    const-string v13, "ON_ERROR"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->ON_ERROR:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    .line 199
    new-instance v13, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    const-string v15, "protocol"

    const-string v11, "PROTOCOL"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->PROTOCOL:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    .line 200
    new-instance v11, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    const-string v15, "authentication"

    const-string v9, "AUTHENTICATION"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->AUTHENTICATION:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    .line 201
    new-instance v9, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    const-string v15, "keychainalias"

    const-string v7, "KEYCHAINALIAS"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->KEYCHAINALIAS:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    .line 202
    new-instance v7, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    const-string v15, "token"

    const-string v5, "TOKEN"

    const/16 v3, 0xc

    invoke-direct {v7, v5, v3, v15}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->TOKEN:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    const/16 v5, 0xd

    new-array v5, v5, [Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    const/4 v15, 0x0

    aput-object v0, v5, v15

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object v6, v5, v0

    const/4 v0, 0x5

    aput-object v8, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v12, v5, v0

    const/16 v0, 0x8

    aput-object v14, v5, v0

    const/16 v0, 0x9

    aput-object v13, v5, v0

    const/16 v0, 0xa

    aput-object v11, v5, v0

    const/16 v0, 0xb

    aput-object v9, v5, v0

    aput-object v7, v5, v3

    .line 188
    sput-object v5, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

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

    .line 207
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 208
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;
    .locals 5

    .line 218
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->values()[Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 220
    iget-object v4, v3, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->mValue:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;
    .locals 1

    .line 188
    const-class v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;
    .locals 1

    .line 188
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->mValue:Ljava/lang/String;

    return-object v0
.end method

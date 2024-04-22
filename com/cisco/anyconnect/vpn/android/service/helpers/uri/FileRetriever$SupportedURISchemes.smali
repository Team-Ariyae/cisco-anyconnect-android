.class public final enum Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;
.super Ljava/lang/Enum;
.source "FileRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SupportedURISchemes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

.field public static final enum file:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

.field public static final enum ftp:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

.field public static final enum http:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

.field public static final enum https:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 94
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    const-string v1, "http"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->http:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    .line 95
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    const-string v3, "https"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->https:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    .line 96
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    const-string v5, "ftp"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->ftp:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    .line 97
    new-instance v5, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    const-string v7, "file"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->file:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 92
    sput-object v7, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 5

    .line 107
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->values()[Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    move-result-object v0

    .line 108
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 110
    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;
    .locals 1

    .line 92
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;
    .locals 1

    .line 92
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    return-object v0
.end method

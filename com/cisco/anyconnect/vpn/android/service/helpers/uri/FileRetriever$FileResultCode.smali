.class public final enum Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;
.super Ljava/lang/Enum;
.source "FileRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

.field public static final enum failure_file_not_found:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

.field public static final enum failure_file_too_big:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

.field public static final enum failure_generic:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

.field public static final enum failure_invalid_uri:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 48
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    const-string v1, "failure_generic"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_generic:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    .line 49
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    const-string v3, "failure_file_too_big"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_file_too_big:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    .line 50
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    const-string v5, "failure_file_not_found"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_file_not_found:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    .line 51
    new-instance v5, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    const-string v7, "failure_invalid_uri"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_invalid_uri:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 46
    sput-object v7, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;
    .locals 1

    .line 46
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;
    .locals 1

    .line 46
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    return-object v0
.end method

.class public final enum Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;
.super Ljava/lang/Enum;
.source "ImportTypes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

.field public static final enum localization:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

.field public static final enum pkcs12:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

.field public static final enum profile:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    const-string v1, "pkcs12"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->pkcs12:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    .line 22
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    const-string v3, "profile"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->profile:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    .line 23
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    const-string v5, "localization"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->localization:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 19
    sput-object v5, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 5

    .line 33
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->values()[Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    move-result-object v0

    .line 34
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 36
    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->toString()Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;
    .locals 1

    .line 19
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;
    .locals 1

    .line 19
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    return-object v0
.end method

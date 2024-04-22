.class public final enum Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;
.super Ljava/lang/Enum;
.source "IPsecAuthMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

.field public static final enum USER_AUTH_IKE_EAP_ANYCONNECT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

.field public static final enum USER_AUTH_IKE_EAP_GTC:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

.field public static final enum USER_AUTH_IKE_EAP_MD5:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

.field public static final enum USER_AUTH_IKE_EAP_MSCHAPv2:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

.field public static final enum USER_AUTH_IKE_ECDSA:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

.field public static final enum USER_AUTH_IKE_PSK:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

.field public static final enum USER_AUTH_IKE_RSA:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

.field public static final enum USER_AUTH_SSL_MACHINE_STORE_CERT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

.field public static final enum USER_AUTH_UNKNOWN:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

.field private static mAvailableModes:[Ljava/lang/String;

.field private static mModes:[Ljava/lang/String;


# instance fields
.field private mLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 18
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    const-string v1, "Unknown"

    const-string v2, "USER_AUTH_UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_UNKNOWN:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    .line 19
    new-instance v1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    const-string v2, "SSL-Machine-Store-Cert"

    const-string v4, "USER_AUTH_SSL_MACHINE_STORE_CERT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_SSL_MACHINE_STORE_CERT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    .line 20
    new-instance v2, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    const-string v4, "IKE-PSK"

    const-string v6, "USER_AUTH_IKE_PSK"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_PSK:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    .line 21
    new-instance v4, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    const-string v6, "IKE-RSA"

    const-string v8, "USER_AUTH_IKE_RSA"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_RSA:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    .line 22
    new-instance v6, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    const-string v8, "IKE-ECDSA"

    const-string v10, "USER_AUTH_IKE_ECDSA"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_ECDSA:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    .line 23
    new-instance v8, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    const-string v10, "EAP-MD5"

    const-string v12, "USER_AUTH_IKE_EAP_MD5"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_MD5:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    .line 24
    new-instance v10, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    const-string v12, "EAP-MSCHAPv2"

    const-string v14, "USER_AUTH_IKE_EAP_MSCHAPv2"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_MSCHAPv2:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    .line 25
    new-instance v12, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    const-string v14, "EAP-GTC"

    const-string v15, "USER_AUTH_IKE_EAP_GTC"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_GTC:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    .line 26
    new-instance v14, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    const-string v15, "EAP-AnyConnect"

    const-string v13, "USER_AUTH_IKE_EAP_ANYCONNECT"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_ANYCONNECT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    const/16 v13, 0x9

    new-array v13, v13, [Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    aput-object v0, v13, v3

    aput-object v1, v13, v5

    aput-object v2, v13, v7

    aput-object v4, v13, v9

    const/4 v0, 0x4

    aput-object v6, v13, v0

    const/4 v0, 0x5

    aput-object v8, v13, v0

    const/4 v0, 0x6

    aput-object v10, v13, v0

    const/4 v1, 0x7

    aput-object v12, v13, v1

    aput-object v14, v13, v11

    .line 16
    sput-object v13, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    new-array v0, v0, [Ljava/lang/String;

    .line 44
    invoke-virtual {v14}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 45
    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 46
    invoke-virtual {v12}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 47
    invoke-virtual {v8}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 48
    invoke-virtual {v10}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 49
    invoke-virtual {v6}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->mAvailableModes:[Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->values()[Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->mModes:[Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->values()[Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 75
    sget-object v5, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->mModes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    add-int/lit8 v3, v3, 0x1

    move v2, v6

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;
    .locals 5

    .line 59
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->values()[Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 61
    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_1
    sget-object p0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_UNKNOWN:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    return-object p0
.end method

.method public static getAvailableStringValues()[Ljava/lang/String;
    .locals 1

    .line 88
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->mAvailableModes:[Ljava/lang/String;

    return-object v0
.end method

.method public static getStringValue(I)Ljava/lang/String;
    .locals 2

    .line 93
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->getStringValues()[Ljava/lang/String;

    move-result-object v0

    .line 95
    array-length v1, v0

    if-le v1, p0, :cond_0

    .line 97
    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStringValues()[Ljava/lang/String;
    .locals 1

    .line 81
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->mModes:[Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;
    .locals 1

    .line 16
    const-class v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;
    .locals 1

    .line 16
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->mLabel:Ljava/lang/String;

    return-object v0
.end method

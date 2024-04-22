.class public final enum Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;
.super Ljava/lang/Enum;
.source "CustLogComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

.field public static final enum ANDROID_MANAGED_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

.field public static final enum UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

.field public static final enum VPN_ANDROID_ANI:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

.field public static final enum VPN_DTLS_MTU:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

.field public static final enum VPN_IPSEC_IKEV2:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

.field public static final enum VPN_NETWORK_ENV:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

.field public static final enum VPN_PBR:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

.field public static final enum VPN_SAML:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

.field public static final enum VPN_STATE:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

.field public static final enum VPN_STRAP:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;


# instance fields
.field private mComponentName:Ljava/lang/String;

.field private mbEnabledByDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 27
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    const-string/jumbo v1, "vpn_ipsec_ikev2"

    const-string v2, "VPN_IPSEC_IKEV2"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->VPN_IPSEC_IKEV2:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    .line 28
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    const-string v2, "android_managed_config"

    const-string v4, "ANDROID_MANAGED_CONFIG"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->ANDROID_MANAGED_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    .line 29
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    const-string/jumbo v4, "vpn_android_ani"

    const-string v6, "VPN_ANDROID_ANI"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4, v3}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->VPN_ANDROID_ANI:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    .line 30
    new-instance v4, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    const-string/jumbo v6, "vpn_pbr"

    const-string v8, "VPN_PBR"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6, v3}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->VPN_PBR:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    .line 31
    new-instance v6, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    const-string v8, "umbrella_config"

    const-string v10, "UMBRELLA_CONFIG"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8, v3}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v6, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    .line 32
    new-instance v8, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    const-string/jumbo v10, "vpn_strap"

    const-string v12, "VPN_STRAP"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10, v3}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v8, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->VPN_STRAP:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    .line 33
    new-instance v10, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    const-string/jumbo v12, "vpn_network_env"

    const-string v14, "VPN_NETWORK_ENV"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12, v3}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v10, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->VPN_NETWORK_ENV:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    .line 34
    new-instance v12, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    const-string/jumbo v14, "vpn_dtls_mtu"

    const-string v15, "VPN_DTLS_MTU"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14, v3}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v12, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->VPN_DTLS_MTU:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    .line 35
    new-instance v14, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    const-string/jumbo v15, "vpn_saml"

    const-string v13, "VPN_SAML"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15, v3}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v14, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->VPN_SAML:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    .line 36
    new-instance v13, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    const-string/jumbo v15, "vpn_state"

    const-string v11, "VPN_STATE"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15, v3}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v13, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->VPN_STATE:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    aput-object v0, v11, v3

    aput-object v1, v11, v5

    aput-object v2, v11, v7

    const/4 v0, 0x3

    aput-object v4, v11, v0

    const/4 v0, 0x4

    aput-object v6, v11, v0

    const/4 v0, 0x5

    aput-object v8, v11, v0

    const/4 v0, 0x6

    aput-object v10, v11, v0

    const/4 v0, 0x7

    aput-object v12, v11, v0

    const/16 v0, 0x8

    aput-object v14, v11, v0

    aput-object v13, v11, v9

    .line 24
    sput-object v11, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->mComponentName:Ljava/lang/String;

    .line 44
    iput-boolean p4, p0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->mbEnabledByDefault:Z

    return-void
.end method

.method public static getCustLogComponent(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;
    .locals 5

    .line 73
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->values()[Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 75
    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->getComponentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;
    .locals 1

    .line 24
    const-class v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;
    .locals 1

    .line 24
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    return-object v0
.end method


# virtual methods
.method public getComponentName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->mComponentName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabledByDefault()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->mbEnabledByDefault:Z

    return v0
.end method

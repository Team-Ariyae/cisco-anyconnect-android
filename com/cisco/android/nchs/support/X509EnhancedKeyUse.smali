.class public final enum Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;
.super Ljava/lang/Enum;
.source "X509EnhancedKeyUse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

.field public static final enum CLIENT_AUTH:Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

.field public static final enum CODE_SIGN:Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

.field public static final enum DVCS:Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

.field public static final enum EMAIL_PROTECT:Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

.field public static final enum IPSEC_END_SYS:Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

.field public static final enum IPSEC_TUNNEL:Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

.field public static final enum IPSEC_USER:Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

.field public static final enum OCSP_SIGN:Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

.field public static final enum SERVER_AUTH:Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

.field public static final enum TIMESTAMP:Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;


# instance fields
.field private mName:Ljava/lang/String;

.field private mOid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 27
    new-instance v0, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    const-string v1, "serverAuth"

    const-string v2, "1.3.6.1.5.5.7.3.1"

    const-string v3, "SERVER_AUTH"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;->SERVER_AUTH:Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    .line 28
    new-instance v1, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    const-string v2, "clientAuth"

    const-string v3, "1.3.6.1.5.5.7.3.2"

    const-string v5, "CLIENT_AUTH"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;->CLIENT_AUTH:Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    .line 29
    new-instance v2, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    const-string v3, "codeSign"

    const-string v5, "1.3.6.1.5.5.7.3.3"

    const-string v7, "CODE_SIGN"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;->CODE_SIGN:Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    .line 30
    new-instance v3, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    const-string v5, "emailProtect"

    const-string v7, "1.3.6.1.5.5.7.3.4"

    const-string v9, "EMAIL_PROTECT"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v5, v7}, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;->EMAIL_PROTECT:Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    .line 31
    new-instance v5, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    const-string v7, "ipsecEndSystem"

    const-string v9, "1.3.6.1.5.5.7.3.5"

    const-string v11, "IPSEC_END_SYS"

    const/4 v12, 0x4

    invoke-direct {v5, v11, v12, v7, v9}, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;->IPSEC_END_SYS:Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    .line 32
    new-instance v7, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    const-string v9, "ipsecTunnel"

    const-string v11, "1.3.6.1.5.5.7.3.6"

    const-string v13, "IPSEC_TUNNEL"

    const/4 v14, 0x5

    invoke-direct {v7, v13, v14, v9, v11}, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;->IPSEC_TUNNEL:Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    .line 33
    new-instance v9, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    const-string v11, "ipsecUser"

    const-string v13, "1.3.6.1.5.5.7.3.7"

    const-string v15, "IPSEC_USER"

    const/4 v14, 0x6

    invoke-direct {v9, v15, v14, v11, v13}, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;->IPSEC_USER:Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    .line 34
    new-instance v11, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    const-string v13, "timeStamp"

    const-string v15, "1.3.6.1.5.5.7.3.8"

    const-string v14, "TIMESTAMP"

    const/4 v12, 0x7

    invoke-direct {v11, v14, v12, v13, v15}, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;->TIMESTAMP:Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    .line 35
    new-instance v13, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    const-string v14, "OCSPSign"

    const-string v15, "1.3.6.1.5.5.7.3.9"

    const-string v12, "OCSP_SIGN"

    const/16 v10, 0x8

    invoke-direct {v13, v12, v10, v14, v15}, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;->OCSP_SIGN:Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    .line 36
    new-instance v12, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    const-string v14, "dvcs"

    const-string v15, "1.3.6.1.5.5.7.3.10"

    const-string v10, "DVCS"

    const/16 v8, 0x9

    invoke-direct {v12, v10, v8, v14, v15}, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;->DVCS:Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    const/16 v10, 0xa

    new-array v10, v10, [Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    aput-object v0, v10, v4

    aput-object v1, v10, v6

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v5, v10, v0

    const/4 v0, 0x5

    aput-object v7, v10, v0

    const/4 v0, 0x6

    aput-object v9, v10, v0

    const/4 v0, 0x7

    aput-object v11, v10, v0

    const/16 v0, 0x8

    aput-object v13, v10, v0

    aput-object v12, v10, v8

    .line 21
    sput-object v10, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;->$VALUES:[Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p4, p0, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;->mOid:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;
    .locals 1

    .line 21
    const-class v0, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    return-object p0
.end method

.method public static values()[Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;
    .locals 1

    .line 21
    sget-object v0, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;->$VALUES:[Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    invoke-virtual {v0}, [Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOid()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;->mOid:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cisco/android/nchs/support/X509EnhancedKeyUse;->mOid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

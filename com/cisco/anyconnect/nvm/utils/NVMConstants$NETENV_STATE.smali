.class public final enum Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;
.super Ljava/lang/Enum;
.source "NVMConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/nvm/utils/NVMConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NETENV_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

.field public static final enum NES_AUTH_PROXY_DETECTED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

.field public static final enum NES_CAPTIVE_PORTAL_DETECTED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

.field public static final enum NES_NETWORK_ACCESSIBLE:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

.field public static final enum NES_NO_DNS_CONNECTIVITY:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

.field public static final enum NES_NO_NETWORK_INTERFACE:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

.field public static final enum NES_NO_PUBLIC_INTERFACE:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

.field public static final enum NES_SECURE_GATEWAY_ACCESSIBLE:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;


# instance fields
.field private netEnvState:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 169
    new-instance v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    const-string v1, "NES_NO_NETWORK_INTERFACE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;->NES_NO_NETWORK_INTERFACE:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    new-instance v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    const-string v4, "NES_NO_PUBLIC_INTERFACE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;->NES_NO_PUBLIC_INTERFACE:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    new-instance v4, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    const-string v6, "NES_NO_DNS_CONNECTIVITY"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;->NES_NO_DNS_CONNECTIVITY:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    .line 170
    new-instance v6, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    const/16 v8, 0x8

    const-string v9, "NES_CAPTIVE_PORTAL_DETECTED"

    const/4 v10, 0x3

    invoke-direct {v6, v9, v10, v8}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;->NES_CAPTIVE_PORTAL_DETECTED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    new-instance v8, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    const-string v9, "NES_AUTH_PROXY_DETECTED"

    const/16 v11, 0x10

    invoke-direct {v8, v9, v7, v11}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;->NES_AUTH_PROXY_DETECTED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    .line 171
    new-instance v9, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    const/16 v11, 0x20

    const-string v12, "NES_NETWORK_ACCESSIBLE"

    const/4 v13, 0x5

    invoke-direct {v9, v12, v13, v11}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;->NES_NETWORK_ACCESSIBLE:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    new-instance v11, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    const/16 v12, 0x40

    const-string v14, "NES_SECURE_GATEWAY_ACCESSIBLE"

    const/4 v15, 0x6

    invoke-direct {v11, v14, v15, v12}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;->NES_SECURE_GATEWAY_ACCESSIBLE:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    const/4 v12, 0x7

    new-array v12, v12, [Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v10

    aput-object v8, v12, v7

    aput-object v9, v12, v13

    aput-object v11, v12, v15

    .line 168
    sput-object v12, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;->$VALUES:[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 177
    iput p3, p0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;->netEnvState:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;
    .locals 1

    .line 168
    const-class v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;
    .locals 1

    .line 168
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;->$VALUES:[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;->netEnvState:I

    return v0
.end method

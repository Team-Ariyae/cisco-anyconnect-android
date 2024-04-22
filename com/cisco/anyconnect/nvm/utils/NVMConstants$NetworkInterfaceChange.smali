.class public final enum Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;
.super Ljava/lang/Enum;
.source "NVMConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/nvm/utils/NVMConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkInterfaceChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

.field public static final enum NIFCHANGE_INTF_DOWN:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

.field public static final enum NIFCHANGE_INTF_UP:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

.field public static final enum NIFCHANGE_NONE:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

.field public static final enum NIFCHANGE_VPN_INTF_DOWN:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

.field public static final enum NIFCHANGE_VPN_INTF_UP:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 216
    new-instance v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    const-string v1, "NIFCHANGE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;->NIFCHANGE_NONE:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    new-instance v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    const-string v3, "NIFCHANGE_INTF_DOWN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;->NIFCHANGE_INTF_DOWN:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    new-instance v3, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    const-string v5, "NIFCHANGE_INTF_UP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;->NIFCHANGE_INTF_UP:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    new-instance v5, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    const-string v7, "NIFCHANGE_VPN_INTF_DOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;->NIFCHANGE_VPN_INTF_DOWN:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    new-instance v7, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    const-string v9, "NIFCHANGE_VPN_INTF_UP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;->NIFCHANGE_VPN_INTF_UP:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 215
    sput-object v9, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;->$VALUES:[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 215
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;
    .locals 1

    .line 215
    const-class v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;
    .locals 1

    .line 215
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;->$VALUES:[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    return-object v0
.end method

.class public final enum Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;
.super Ljava/lang/Enum;
.source "NVMConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/nvm/utils/NVMConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserSessionChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;

.field public static final enum USERSESSION_CHANGE_LOGOFF:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;

.field public static final enum USERSESSION_CHANGE_LOGON:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;

.field public static final enum USERSESSION_CHANGE_NONE:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 220
    new-instance v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;

    const-string v1, "USERSESSION_CHANGE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;->USERSESSION_CHANGE_NONE:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;

    new-instance v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;

    const-string v3, "USERSESSION_CHANGE_LOGON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;->USERSESSION_CHANGE_LOGON:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;

    new-instance v3, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;

    const-string v5, "USERSESSION_CHANGE_LOGOFF"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;->USERSESSION_CHANGE_LOGOFF:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 219
    sput-object v5, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;->$VALUES:[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 219
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;
    .locals 1

    .line 219
    const-class v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;
    .locals 1

    .line 219
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;->$VALUES:[Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;

    return-object v0
.end method

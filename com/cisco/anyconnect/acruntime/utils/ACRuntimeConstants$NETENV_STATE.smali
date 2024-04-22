.class public final enum Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;
.super Ljava/lang/Enum;
.source "ACRuntimeConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NETENV_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;

.field public static final enum DNS_REACHABLE:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;

.field public static final enum METERED:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;

.field public static final enum NET_STATE_UNKNOWN:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;


# instance fields
.field private netEnvState:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 58
    new-instance v0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;

    const-string v1, "NET_STATE_UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;->NET_STATE_UNKNOWN:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;

    .line 59
    new-instance v1, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;

    const-string v4, "DNS_REACHABLE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;->DNS_REACHABLE:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;

    .line 60
    new-instance v4, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;

    const-string v6, "METERED"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;->METERED:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 57
    sput-object v6, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;->$VALUES:[Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;->netEnvState:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;
    .locals 1

    .line 57
    const-class v0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;
    .locals 1

    .line 57
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;->$VALUES:[Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;->netEnvState:I

    return v0
.end method

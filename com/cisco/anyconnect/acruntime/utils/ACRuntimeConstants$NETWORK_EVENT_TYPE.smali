.class public final enum Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;
.super Ljava/lang/Enum;
.source "ACRuntimeConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NETWORK_EVENT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

.field public static final enum INTERFACE_CHANGE_EVENT:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

.field public static final enum NETWORK_EVENT_NONE:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

.field public static final enum NETWORK_STATE_CHANGE_EVENT:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 46
    new-instance v0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

    const-string v1, "NETWORK_EVENT_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;->NETWORK_EVENT_NONE:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

    new-instance v1, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

    const-string v3, "INTERFACE_CHANGE_EVENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;->INTERFACE_CHANGE_EVENT:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

    new-instance v3, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

    const-string v5, "NETWORK_STATE_CHANGE_EVENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;->NETWORK_STATE_CHANGE_EVENT:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 45
    sput-object v5, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;->$VALUES:[Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;
    .locals 1

    .line 45
    const-class v0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;
    .locals 1

    .line 45
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;->$VALUES:[Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

    return-object v0
.end method

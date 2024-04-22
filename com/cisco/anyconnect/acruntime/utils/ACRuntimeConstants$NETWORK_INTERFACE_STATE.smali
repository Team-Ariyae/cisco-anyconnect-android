.class public final enum Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;
.super Ljava/lang/Enum;
.source "ACRuntimeConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NETWORK_INTERFACE_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

.field public static final enum NETIFNT_INTERFACE_DOWN:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

.field public static final enum NETIFNT_INTERFACE_UP:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

.field public static final enum NETIFNT_NO_NET_INTERFACES:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

.field public static final enum NETIFNT_UNDEFINED:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 51
    new-instance v0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    const-string v1, "NETIFNT_UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;->NETIFNT_UNDEFINED:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    .line 52
    new-instance v1, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    const-string v3, "NETIFNT_INTERFACE_DOWN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;->NETIFNT_INTERFACE_DOWN:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    .line 53
    new-instance v3, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    const-string v5, "NETIFNT_INTERFACE_UP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;->NETIFNT_INTERFACE_UP:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    .line 54
    new-instance v5, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    const-string v7, "NETIFNT_NO_NET_INTERFACES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;->NETIFNT_NO_NET_INTERFACES:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 50
    sput-object v7, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;->$VALUES:[Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;
    .locals 1

    .line 50
    const-class v0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;
    .locals 1

    .line 50
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;->$VALUES:[Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    return-object v0
.end method

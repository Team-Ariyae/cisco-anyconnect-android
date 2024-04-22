.class public final enum Lcom/cisco/umbrella/ui/states/AgentState;
.super Ljava/lang/Enum;
.source "AgentState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/umbrella/ui/states/AgentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/umbrella/ui/states/AgentState;

.field public static final enum NO_ORGINFO:Lcom/cisco/umbrella/ui/states/AgentState;

.field public static final enum OK:Lcom/cisco/umbrella/ui/states/AgentState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lcom/cisco/umbrella/ui/states/AgentState;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/umbrella/ui/states/AgentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/umbrella/ui/states/AgentState;->OK:Lcom/cisco/umbrella/ui/states/AgentState;

    .line 18
    new-instance v1, Lcom/cisco/umbrella/ui/states/AgentState;

    const-string v3, "NO_ORGINFO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/umbrella/ui/states/AgentState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/umbrella/ui/states/AgentState;->NO_ORGINFO:Lcom/cisco/umbrella/ui/states/AgentState;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/cisco/umbrella/ui/states/AgentState;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 16
    sput-object v3, Lcom/cisco/umbrella/ui/states/AgentState;->$VALUES:[Lcom/cisco/umbrella/ui/states/AgentState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/umbrella/ui/states/AgentState;
    .locals 1

    .line 16
    const-class v0, Lcom/cisco/umbrella/ui/states/AgentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/umbrella/ui/states/AgentState;

    return-object p0
.end method

.method public static values()[Lcom/cisco/umbrella/ui/states/AgentState;
    .locals 1

    .line 16
    sget-object v0, Lcom/cisco/umbrella/ui/states/AgentState;->$VALUES:[Lcom/cisco/umbrella/ui/states/AgentState;

    invoke-virtual {v0}, [Lcom/cisco/umbrella/ui/states/AgentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/umbrella/ui/states/AgentState;

    return-object v0
.end method

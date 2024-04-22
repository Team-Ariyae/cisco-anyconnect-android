.class public final enum Lcom/cisco/umbrella/ui/states/LoggingState;
.super Ljava/lang/Enum;
.source "LoggingState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/umbrella/ui/states/LoggingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/umbrella/ui/states/LoggingState;

.field public static final enum DISABLED:Lcom/cisco/umbrella/ui/states/LoggingState;

.field public static final enum ENABLED:Lcom/cisco/umbrella/ui/states/LoggingState;

.field public static final enum UNKNOWN:Lcom/cisco/umbrella/ui/states/LoggingState;


# instance fields
.field private final resId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 21
    new-instance v0, Lcom/cisco/umbrella/ui/states/LoggingState;

    sget v1, Lcom/cisco/umbrella/R$string;->umbrella_not_available:I

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cisco/umbrella/ui/states/LoggingState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/umbrella/ui/states/LoggingState;->UNKNOWN:Lcom/cisco/umbrella/ui/states/LoggingState;

    .line 22
    new-instance v1, Lcom/cisco/umbrella/ui/states/LoggingState;

    sget v2, Lcom/cisco/umbrella/R$string;->umbrella_enabled:I

    const-string v4, "ENABLED"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/cisco/umbrella/ui/states/LoggingState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cisco/umbrella/ui/states/LoggingState;->ENABLED:Lcom/cisco/umbrella/ui/states/LoggingState;

    .line 23
    new-instance v2, Lcom/cisco/umbrella/ui/states/LoggingState;

    sget v4, Lcom/cisco/umbrella/R$string;->umbrella_disabled:I

    const-string v6, "DISABLED"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/cisco/umbrella/ui/states/LoggingState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/cisco/umbrella/ui/states/LoggingState;->DISABLED:Lcom/cisco/umbrella/ui/states/LoggingState;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/cisco/umbrella/ui/states/LoggingState;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    .line 19
    sput-object v4, Lcom/cisco/umbrella/ui/states/LoggingState;->$VALUES:[Lcom/cisco/umbrella/ui/states/LoggingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/cisco/umbrella/ui/states/LoggingState;->resId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/umbrella/ui/states/LoggingState;
    .locals 1

    .line 19
    const-class v0, Lcom/cisco/umbrella/ui/states/LoggingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/umbrella/ui/states/LoggingState;

    return-object p0
.end method

.method public static values()[Lcom/cisco/umbrella/ui/states/LoggingState;
    .locals 1

    .line 19
    sget-object v0, Lcom/cisco/umbrella/ui/states/LoggingState;->$VALUES:[Lcom/cisco/umbrella/ui/states/LoggingState;

    invoke-virtual {v0}, [Lcom/cisco/umbrella/ui/states/LoggingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/umbrella/ui/states/LoggingState;

    return-object v0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 31
    iget v0, p0, Lcom/cisco/umbrella/ui/states/LoggingState;->resId:I

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

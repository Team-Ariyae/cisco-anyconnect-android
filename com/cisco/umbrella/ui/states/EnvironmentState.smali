.class public final enum Lcom/cisco/umbrella/ui/states/EnvironmentState;
.super Ljava/lang/Enum;
.source "EnvironmentState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/umbrella/ui/states/EnvironmentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/umbrella/ui/states/EnvironmentState;

.field public static final enum MANAGED:Lcom/cisco/umbrella/ui/states/EnvironmentState;

.field public static final enum UNMANAGED:Lcom/cisco/umbrella/ui/states/EnvironmentState;


# instance fields
.field private final resId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/cisco/umbrella/ui/states/EnvironmentState;

    sget v1, Lcom/cisco/umbrella/R$string;->umbrella_managed:I

    const-string v2, "MANAGED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cisco/umbrella/ui/states/EnvironmentState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/umbrella/ui/states/EnvironmentState;->MANAGED:Lcom/cisco/umbrella/ui/states/EnvironmentState;

    .line 8
    new-instance v1, Lcom/cisco/umbrella/ui/states/EnvironmentState;

    sget v2, Lcom/cisco/umbrella/R$string;->umbrella_unmanaged:I

    const-string v4, "UNMANAGED"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/cisco/umbrella/ui/states/EnvironmentState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cisco/umbrella/ui/states/EnvironmentState;->UNMANAGED:Lcom/cisco/umbrella/ui/states/EnvironmentState;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/cisco/umbrella/ui/states/EnvironmentState;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    .line 5
    sput-object v2, Lcom/cisco/umbrella/ui/states/EnvironmentState;->$VALUES:[Lcom/cisco/umbrella/ui/states/EnvironmentState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/cisco/umbrella/ui/states/EnvironmentState;->resId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/umbrella/ui/states/EnvironmentState;
    .locals 1

    .line 5
    const-class v0, Lcom/cisco/umbrella/ui/states/EnvironmentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/umbrella/ui/states/EnvironmentState;

    return-object p0
.end method

.method public static values()[Lcom/cisco/umbrella/ui/states/EnvironmentState;
    .locals 1

    .line 5
    sget-object v0, Lcom/cisco/umbrella/ui/states/EnvironmentState;->$VALUES:[Lcom/cisco/umbrella/ui/states/EnvironmentState;

    invoke-virtual {v0}, [Lcom/cisco/umbrella/ui/states/EnvironmentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/umbrella/ui/states/EnvironmentState;

    return-object v0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 17
    iget v0, p0, Lcom/cisco/umbrella/ui/states/EnvironmentState;->resId:I

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

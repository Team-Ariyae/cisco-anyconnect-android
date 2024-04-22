.class public final enum Lcom/cisco/umbrella/ui/states/UIState;
.super Ljava/lang/Enum;
.source "UIState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/umbrella/ui/states/UIState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/umbrella/ui/states/UIState;

.field public static final enum NA:Lcom/cisco/umbrella/ui/states/UIState;


# instance fields
.field private final resId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/cisco/umbrella/ui/states/UIState;

    sget v1, Lcom/cisco/umbrella/R$string;->umbrella_not_available:I

    const-string v2, "NA"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cisco/umbrella/ui/states/UIState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/umbrella/ui/states/UIState;->NA:Lcom/cisco/umbrella/ui/states/UIState;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/cisco/umbrella/ui/states/UIState;

    aput-object v0, v1, v3

    .line 6
    sput-object v1, Lcom/cisco/umbrella/ui/states/UIState;->$VALUES:[Lcom/cisco/umbrella/ui/states/UIState;

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
    iput p3, p0, Lcom/cisco/umbrella/ui/states/UIState;->resId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/umbrella/ui/states/UIState;
    .locals 1

    .line 6
    const-class v0, Lcom/cisco/umbrella/ui/states/UIState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/umbrella/ui/states/UIState;

    return-object p0
.end method

.method public static values()[Lcom/cisco/umbrella/ui/states/UIState;
    .locals 1

    .line 6
    sget-object v0, Lcom/cisco/umbrella/ui/states/UIState;->$VALUES:[Lcom/cisco/umbrella/ui/states/UIState;

    invoke-virtual {v0}, [Lcom/cisco/umbrella/ui/states/UIState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/umbrella/ui/states/UIState;

    return-object v0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 18
    :try_start_0
    iget v0, p0, Lcom/cisco/umbrella/ui/states/UIState;->resId:I

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Not Available"

    return-object v0
.end method

.class public final enum Lcom/cisco/android/nchs/aidl/NCHSState;
.super Ljava/lang/Enum;
.source "NCHSState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/android/nchs/aidl/NCHSState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/android/nchs/aidl/NCHSState;

.field public static final enum ACTIVE:Lcom/cisco/android/nchs/aidl/NCHSState;

.field public static final enum ATTENTION:Lcom/cisco/android/nchs/aidl/NCHSState;

.field public static final enum ERROR:Lcom/cisco/android/nchs/aidl/NCHSState;

.field public static final enum IDLE:Lcom/cisco/android/nchs/aidl/NCHSState;

.field public static final enum PAUSED:Lcom/cisco/android/nchs/aidl/NCHSState;

.field public static final enum TRANSITION:Lcom/cisco/android/nchs/aidl/NCHSState;


# instance fields
.field private mPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 19
    new-instance v0, Lcom/cisco/android/nchs/aidl/NCHSState;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/cisco/android/nchs/aidl/NCHSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/android/nchs/aidl/NCHSState;->ACTIVE:Lcom/cisco/android/nchs/aidl/NCHSState;

    .line 20
    new-instance v1, Lcom/cisco/android/nchs/aidl/NCHSState;

    const-string v4, "IDLE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5}, Lcom/cisco/android/nchs/aidl/NCHSState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cisco/android/nchs/aidl/NCHSState;->IDLE:Lcom/cisco/android/nchs/aidl/NCHSState;

    .line 21
    new-instance v4, Lcom/cisco/android/nchs/aidl/NCHSState;

    const-string v6, "ATTENTION"

    const/4 v7, 0x2

    const/4 v8, 0x5

    invoke-direct {v4, v6, v7, v8}, Lcom/cisco/android/nchs/aidl/NCHSState;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/cisco/android/nchs/aidl/NCHSState;->ATTENTION:Lcom/cisco/android/nchs/aidl/NCHSState;

    .line 22
    new-instance v6, Lcom/cisco/android/nchs/aidl/NCHSState;

    const-string v9, "ERROR"

    const/4 v10, 0x6

    invoke-direct {v6, v9, v3, v10}, Lcom/cisco/android/nchs/aidl/NCHSState;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/cisco/android/nchs/aidl/NCHSState;->ERROR:Lcom/cisco/android/nchs/aidl/NCHSState;

    .line 23
    new-instance v9, Lcom/cisco/android/nchs/aidl/NCHSState;

    const-string v11, "TRANSITION"

    const/4 v12, 0x4

    invoke-direct {v9, v11, v12, v12}, Lcom/cisco/android/nchs/aidl/NCHSState;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/cisco/android/nchs/aidl/NCHSState;->TRANSITION:Lcom/cisco/android/nchs/aidl/NCHSState;

    .line 24
    new-instance v11, Lcom/cisco/android/nchs/aidl/NCHSState;

    const-string v13, "PAUSED"

    invoke-direct {v11, v13, v8, v7}, Lcom/cisco/android/nchs/aidl/NCHSState;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/cisco/android/nchs/aidl/NCHSState;->PAUSED:Lcom/cisco/android/nchs/aidl/NCHSState;

    new-array v10, v10, [Lcom/cisco/android/nchs/aidl/NCHSState;

    aput-object v0, v10, v2

    aput-object v1, v10, v5

    aput-object v4, v10, v7

    aput-object v6, v10, v3

    aput-object v9, v10, v12

    aput-object v11, v10, v8

    .line 16
    sput-object v10, Lcom/cisco/android/nchs/aidl/NCHSState;->$VALUES:[Lcom/cisco/android/nchs/aidl/NCHSState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/cisco/android/nchs/aidl/NCHSState;->mPriority:I

    return-void
.end method

.method public static getMostImportantState([Lcom/cisco/android/nchs/aidl/NCHSState;)Lcom/cisco/android/nchs/aidl/NCHSState;
    .locals 6

    .line 46
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSState;->IDLE:Lcom/cisco/android/nchs/aidl/NCHSState;

    if-nez p0, :cond_0

    return-object v0

    .line 52
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 54
    invoke-virtual {v3}, Lcom/cisco/android/nchs/aidl/NCHSState;->getPriority()I

    move-result v4

    invoke-virtual {v0}, Lcom/cisco/android/nchs/aidl/NCHSState;->getPriority()I

    move-result v5

    if-le v4, v5, :cond_1

    move-object v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSState;
    .locals 1

    .line 16
    const-class v0, Lcom/cisco/android/nchs/aidl/NCHSState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/android/nchs/aidl/NCHSState;

    return-object p0
.end method

.method public static values()[Lcom/cisco/android/nchs/aidl/NCHSState;
    .locals 1

    .line 16
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSState;->$VALUES:[Lcom/cisco/android/nchs/aidl/NCHSState;

    invoke-virtual {v0}, [Lcom/cisco/android/nchs/aidl/NCHSState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/android/nchs/aidl/NCHSState;

    return-object v0
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/cisco/android/nchs/aidl/NCHSState;->mPriority:I

    return v0
.end method

.class public final enum Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;
.super Ljava/lang/Enum;
.source "NCHSArgumentTypeCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

.field public static final enum BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

.field public static final enum BYTE:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

.field public static final enum BYTE_ARRAY:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

.field public static final enum INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

.field public static final enum INT_ARRAY:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

.field public static final enum STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;


# instance fields
.field private mCode:B


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 27
    new-instance v0, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const-string v1, "BYTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BYTE:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    .line 32
    new-instance v1, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const-string v3, "STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    .line 38
    new-instance v3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const-string v5, "INT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    .line 43
    new-instance v5, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const-string v7, "BYTE_ARRAY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BYTE_ARRAY:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    .line 49
    new-instance v7, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const-string v9, "INT_ARRAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT_ARRAY:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    .line 54
    new-instance v9, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const-string v11, "BOOLEAN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 22
    sput-object v11, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->$VALUES:[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    and-int/lit16 p1, p3, 0xff

    int-to-byte p1, p1

    .line 60
    iput-byte p1, p0, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->mCode:B

    return-void
.end method

.method public static getOpCodeForCode(I)Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;
    .locals 5

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 78
    invoke-static {}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->values()[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 80
    invoke-virtual {v3}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->getCode()B

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;
    .locals 1

    .line 22
    const-class v0, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    return-object p0
.end method

.method public static values()[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;
    .locals 1

    .line 22
    sget-object v0, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->$VALUES:[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v0}, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    return-object v0
.end method


# virtual methods
.method public getCode()B
    .locals 1

    .line 65
    iget-byte v0, p0, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->mCode:B

    return v0
.end method

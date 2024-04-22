.class public final enum Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;
.super Ljava/lang/Enum;
.source "AAVKReturnCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

.field public static final enum RESULT_INVALID_ARGUMENTS:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

.field public static final enum RESULT_INVALID_PROPERTY:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

.field public static final enum RESULT_NOT_IMPLEMENTED:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

.field public static final enum RESULT_NOT_INITIALIZED:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

.field public static final enum RESULT_OPERATION_COMPLETED:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

.field public static final enum RESULT_OPERATION_ERROR:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

.field public static final enum RESULT_OPERATION_FAILED:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

.field public static final enum RESULT_PERMISSION_DENIED:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

.field public static final enum RESULT_PRECONDITIONS_NOT_MET:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;


# instance fields
.field private mCode:B


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 26
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    const/16 v1, 0xff

    const-string v2, "RESULT_OPERATION_COMPLETED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    .line 29
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    const/16 v2, 0xfe

    const-string v4, "RESULT_OPERATION_FAILED"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    .line 32
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    const/16 v4, 0xfd

    const-string v6, "RESULT_OPERATION_ERROR"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    .line 35
    new-instance v4, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    const/16 v6, 0xfc

    const-string v8, "RESULT_PERMISSION_DENIED"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;->RESULT_PERMISSION_DENIED:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    .line 38
    new-instance v6, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    const/16 v8, 0xfb

    const-string v10, "RESULT_INVALID_PROPERTY"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;->RESULT_INVALID_PROPERTY:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    .line 42
    new-instance v8, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    const/16 v10, 0xfa

    const-string v12, "RESULT_PRECONDITIONS_NOT_MET"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;->RESULT_PRECONDITIONS_NOT_MET:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    .line 45
    new-instance v10, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    const/16 v12, 0xf9

    const-string v14, "RESULT_INVALID_ARGUMENTS"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;->RESULT_INVALID_ARGUMENTS:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    .line 48
    new-instance v12, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    const/16 v14, 0xf8

    const-string v15, "RESULT_NOT_IMPLEMENTED"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;->RESULT_NOT_IMPLEMENTED:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    .line 51
    new-instance v14, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    const/16 v15, 0xf7

    const-string v13, "RESULT_NOT_INITIALIZED"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;->RESULT_NOT_INITIALIZED:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    const/16 v13, 0x9

    new-array v13, v13, [Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    aput-object v0, v13, v3

    aput-object v1, v13, v5

    aput-object v2, v13, v7

    aput-object v4, v13, v9

    const/4 v0, 0x4

    aput-object v6, v13, v0

    const/4 v0, 0x5

    aput-object v8, v13, v0

    const/4 v0, 0x6

    aput-object v10, v13, v0

    const/4 v0, 0x7

    aput-object v12, v13, v0

    aput-object v14, v13, v11

    .line 23
    sput-object v13, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    and-int/lit16 p1, p3, 0xff

    int-to-byte p1, p1

    .line 58
    iput-byte p1, p0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;->mCode:B

    return-void
.end method

.method public static getOpCodeForCode(I)Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;
    .locals 5

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 76
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;->values()[Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 78
    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;->getCode()B

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

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;
    .locals 1

    .line 23
    const-class v0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;
    .locals 1

    .line 23
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    return-object v0
.end method


# virtual methods
.method public getCode()B
    .locals 1

    .line 63
    iget-byte v0, p0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;->mCode:B

    return v0
.end method

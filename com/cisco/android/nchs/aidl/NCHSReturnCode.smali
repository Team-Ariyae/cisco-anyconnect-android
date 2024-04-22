.class public final enum Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
.super Ljava/lang/Enum;
.source "NCHSReturnCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/android/nchs/aidl/NCHSReturnCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

.field public static final enum RESULT_CERTIFICATE_ALREADY_EXISTS:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

.field public static final enum RESULT_CERT_IMPORT_FAILED_DEVICE_NOT_SECURE:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

.field public static final enum RESULT_CERT_KEY_NOT_FOUND:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

.field public static final enum RESULT_OPERATION_ACCESS_APP_DATA:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

.field public static final enum RESULT_OPERATION_BLOCKED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

.field public static final enum RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

.field public static final enum RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

.field public static final enum RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

.field public static final enum RESULT_OPERATION_NOT_SUPPORTED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

.field public static final enum RESULT_OPERATION_TIMED_OUT:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

.field public static final enum RESULT_OPERATION_USER_CANCELLED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

.field public static final enum RESULT_PERMISSION_DENIED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

.field public static final enum RESULT_PRECONDITIONS_NOT_MET:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

.field public static final enum RESULT_WAIT_FOR_COMPONENT_START:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;


# instance fields
.field private mCode:B


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 24
    new-instance v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    const/16 v1, 0xff

    const-string v2, "RESULT_OPERATION_COMPLETED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 27
    new-instance v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    const/16 v2, 0xfe

    const-string v4, "RESULT_OPERATION_FAILED"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 30
    new-instance v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    const/16 v4, 0xfd

    const-string v6, "RESULT_OPERATION_ERROR"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 33
    new-instance v4, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    const/16 v6, 0xfc

    const-string v8, "RESULT_PERMISSION_DENIED"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_PERMISSION_DENIED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 37
    new-instance v6, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    const/16 v8, 0xfb

    const-string v10, "RESULT_PRECONDITIONS_NOT_MET"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_PRECONDITIONS_NOT_MET:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 40
    new-instance v8, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    const/16 v10, 0xfa

    const-string v12, "RESULT_WAIT_FOR_COMPONENT_START"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_WAIT_FOR_COMPONENT_START:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 43
    new-instance v10, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    const/16 v12, 0xf9

    const-string v14, "RESULT_OPERATION_TIMED_OUT"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_TIMED_OUT:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 46
    new-instance v12, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    const/16 v14, 0xf8

    const-string v15, "RESULT_OPERATION_NOT_SUPPORTED"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_NOT_SUPPORTED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 49
    new-instance v14, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    const/16 v15, 0xf7

    const-string v13, "RESULT_OPERATION_BLOCKED"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_BLOCKED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 52
    new-instance v13, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    const/16 v15, 0xf6

    const-string v11, "RESULT_OPERATION_USER_CANCELLED"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_USER_CANCELLED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 55
    new-instance v11, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    const/16 v15, 0xf5

    const-string v9, "RESULT_OPERATION_ACCESS_APP_DATA"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ACCESS_APP_DATA:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 58
    new-instance v9, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    const/16 v15, 0xf4

    const-string v7, "RESULT_CERTIFICATE_ALREADY_EXISTS"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_CERTIFICATE_ALREADY_EXISTS:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 61
    new-instance v7, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    const/16 v15, 0xf3

    const-string v5, "RESULT_CERT_IMPORT_FAILED_DEVICE_NOT_SECURE"

    const/16 v3, 0xc

    invoke-direct {v7, v5, v3, v15}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_CERT_IMPORT_FAILED_DEVICE_NOT_SECURE:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 64
    new-instance v5, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    const/16 v15, 0xf2

    const-string v3, "RESULT_CERT_KEY_NOT_FOUND"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v3, v7, v15}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_CERT_KEY_NOT_FOUND:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    const/16 v3, 0xe

    new-array v3, v3, [Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    const/4 v15, 0x0

    aput-object v0, v3, v15

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object v6, v3, v0

    const/4 v0, 0x5

    aput-object v8, v3, v0

    const/4 v0, 0x6

    aput-object v10, v3, v0

    const/4 v0, 0x7

    aput-object v12, v3, v0

    const/16 v0, 0x8

    aput-object v14, v3, v0

    const/16 v0, 0x9

    aput-object v13, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    const/16 v0, 0xb

    aput-object v9, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    aput-object v5, v3, v7

    .line 21
    sput-object v3, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->$VALUES:[Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    and-int/lit16 p1, p3, 0xff

    int-to-byte p1, p1

    .line 70
    iput-byte p1, p0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->mCode:B

    return-void
.end method

.method public static getOpCodeForCode(I)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 5

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 88
    invoke-static {}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->values()[Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 90
    invoke-virtual {v3}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->getCode()B

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

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 1

    .line 21
    const-class v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p0
.end method

.method public static values()[Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 1

    .line 21
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->$VALUES:[Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v0}, [Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object v0
.end method


# virtual methods
.method public getCode()B
    .locals 1

    .line 75
    iget-byte v0, p0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->mCode:B

    return v0
.end method

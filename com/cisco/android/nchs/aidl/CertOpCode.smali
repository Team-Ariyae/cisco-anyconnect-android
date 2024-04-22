.class public final enum Lcom/cisco/android/nchs/aidl/CertOpCode;
.super Ljava/lang/Enum;
.source "CertOpCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/android/nchs/aidl/CertOpCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/android/nchs/aidl/CertOpCode;

.field public static final enum RESULT_CERTIFICATE_IMPORT_CANCELLED_BY_USER:Lcom/cisco/android/nchs/aidl/CertOpCode;

.field public static final enum RESULT_CERTIFICATE_IMPORT_ERROR_KEYSTORE_ERROR:Lcom/cisco/android/nchs/aidl/CertOpCode;

.field public static final enum RESULT_CERTIFICATE_IMPORT_ERROR_KEYSTORE_UNINITIALIZED:Lcom/cisco/android/nchs/aidl/CertOpCode;

.field public static final enum RESULT_CERTIFICATE_IMPORT_INITIATED_WAITING_ON_USER:Lcom/cisco/android/nchs/aidl/CertOpCode;

.field public static final enum RESULT_CERTIFICATE_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/CertOpCode;

.field public static final enum RESULT_CERTIFICATE_OPERATION_NOT_SUPPORTED:Lcom/cisco/android/nchs/aidl/CertOpCode;

.field public static final enum RESULT_CERTIFICATE_OPERATION_SUCCESS:Lcom/cisco/android/nchs/aidl/CertOpCode;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 18
    new-instance v0, Lcom/cisco/android/nchs/aidl/CertOpCode;

    const-string v1, "RESULT_CERTIFICATE_OPERATION_SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/android/nchs/aidl/CertOpCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_OPERATION_SUCCESS:Lcom/cisco/android/nchs/aidl/CertOpCode;

    .line 20
    new-instance v1, Lcom/cisco/android/nchs/aidl/CertOpCode;

    const-string v3, "RESULT_CERTIFICATE_OPERATION_NOT_SUPPORTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/android/nchs/aidl/CertOpCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_OPERATION_NOT_SUPPORTED:Lcom/cisco/android/nchs/aidl/CertOpCode;

    .line 22
    new-instance v3, Lcom/cisco/android/nchs/aidl/CertOpCode;

    const-string v5, "RESULT_CERTIFICATE_OPERATION_FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/android/nchs/aidl/CertOpCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/CertOpCode;

    .line 25
    new-instance v5, Lcom/cisco/android/nchs/aidl/CertOpCode;

    const-string v7, "RESULT_CERTIFICATE_IMPORT_ERROR_KEYSTORE_UNINITIALIZED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/cisco/android/nchs/aidl/CertOpCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_IMPORT_ERROR_KEYSTORE_UNINITIALIZED:Lcom/cisco/android/nchs/aidl/CertOpCode;

    .line 28
    new-instance v7, Lcom/cisco/android/nchs/aidl/CertOpCode;

    const-string v9, "RESULT_CERTIFICATE_IMPORT_ERROR_KEYSTORE_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/cisco/android/nchs/aidl/CertOpCode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_IMPORT_ERROR_KEYSTORE_ERROR:Lcom/cisco/android/nchs/aidl/CertOpCode;

    .line 31
    new-instance v9, Lcom/cisco/android/nchs/aidl/CertOpCode;

    const-string v11, "RESULT_CERTIFICATE_IMPORT_INITIATED_WAITING_ON_USER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/cisco/android/nchs/aidl/CertOpCode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_IMPORT_INITIATED_WAITING_ON_USER:Lcom/cisco/android/nchs/aidl/CertOpCode;

    .line 34
    new-instance v11, Lcom/cisco/android/nchs/aidl/CertOpCode;

    const-string v13, "RESULT_CERTIFICATE_IMPORT_CANCELLED_BY_USER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/cisco/android/nchs/aidl/CertOpCode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_IMPORT_CANCELLED_BY_USER:Lcom/cisco/android/nchs/aidl/CertOpCode;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/cisco/android/nchs/aidl/CertOpCode;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 16
    sput-object v13, Lcom/cisco/android/nchs/aidl/CertOpCode;->$VALUES:[Lcom/cisco/android/nchs/aidl/CertOpCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/CertOpCode;
    .locals 1

    .line 16
    const-class v0, Lcom/cisco/android/nchs/aidl/CertOpCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/android/nchs/aidl/CertOpCode;

    return-object p0
.end method

.method public static values()[Lcom/cisco/android/nchs/aidl/CertOpCode;
    .locals 1

    .line 16
    sget-object v0, Lcom/cisco/android/nchs/aidl/CertOpCode;->$VALUES:[Lcom/cisco/android/nchs/aidl/CertOpCode;

    invoke-virtual {v0}, [Lcom/cisco/android/nchs/aidl/CertOpCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/android/nchs/aidl/CertOpCode;

    return-object v0
.end method

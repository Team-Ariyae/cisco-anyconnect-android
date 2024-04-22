.class synthetic Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$8;
.super Ljava/lang/Object;
.source "ImportCertificateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$cisco$android$nchs$aidl$NCHSReturnCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 405
    invoke-static {}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->values()[Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$8;->$SwitchMap$com$cisco$android$nchs$aidl$NCHSReturnCode:[I

    :try_start_0
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_TIMED_OUT:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$8;->$SwitchMap$com$cisco$android$nchs$aidl$NCHSReturnCode:[I

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_BLOCKED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$8;->$SwitchMap$com$cisco$android$nchs$aidl$NCHSReturnCode:[I

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_USER_CANCELLED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

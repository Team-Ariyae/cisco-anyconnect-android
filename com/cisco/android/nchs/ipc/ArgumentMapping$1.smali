.class synthetic Lcom/cisco/android/nchs/ipc/ArgumentMapping$1;
.super Ljava/lang/Object;
.source "ArgumentMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/ipc/ArgumentMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$cisco$android$nchs$codes$NCHSArgumentTypeCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 147
    invoke-static {}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->values()[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cisco/android/nchs/ipc/ArgumentMapping$1;->$SwitchMap$com$cisco$android$nchs$codes$NCHSArgumentTypeCode:[I

    :try_start_0
    sget-object v1, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BYTE:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/cisco/android/nchs/ipc/ArgumentMapping$1;->$SwitchMap$com$cisco$android$nchs$codes$NCHSArgumentTypeCode:[I

    sget-object v1, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BYTE_ARRAY:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/cisco/android/nchs/ipc/ArgumentMapping$1;->$SwitchMap$com$cisco$android$nchs$codes$NCHSArgumentTypeCode:[I

    sget-object v1, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/cisco/android/nchs/ipc/ArgumentMapping$1;->$SwitchMap$com$cisco$android$nchs$codes$NCHSArgumentTypeCode:[I

    sget-object v1, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/cisco/android/nchs/ipc/ArgumentMapping$1;->$SwitchMap$com$cisco$android$nchs$codes$NCHSArgumentTypeCode:[I

    sget-object v1, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->INT_ARRAY:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/cisco/android/nchs/ipc/ArgumentMapping$1;->$SwitchMap$com$cisco$android$nchs$codes$NCHSArgumentTypeCode:[I

    sget-object v1, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->BOOLEAN:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

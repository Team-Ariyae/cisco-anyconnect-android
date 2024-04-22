.class synthetic Lcom/cisco/anyconnect/vpn/android/service/VpnService$17;
.super Ljava/lang/Object;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$cisco$anyconnect$vpn$android$service$DependencyManager$DependencyResult:[I

.field static final synthetic $SwitchMap$com$cisco$anyconnect$vpn$android$service$VpnService$VpnPromptType:[I

.field static final synthetic $SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$NativeComponentInstaller$ReturnCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 4468
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->values()[Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$17;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$NativeComponentInstaller$ReturnCode:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/VpnService$17;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$NativeComponentInstaller$ReturnCode:[I

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->DEVICE_NOT_SUPPORTED:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnService$17;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$NativeComponentInstaller$ReturnCode:[I

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->DEVICE_INFO_NOT_AVAILABLE:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/service/VpnService$17;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$NativeComponentInstaller$ReturnCode:[I

    sget-object v5, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR_TIMED_OUT:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/service/VpnService$17;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$NativeComponentInstaller$ReturnCode:[I

    sget-object v6, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR_ACCESS_DATA:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    invoke-virtual {v6}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/cisco/anyconnect/vpn/android/service/VpnService$17;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$NativeComponentInstaller$ReturnCode:[I

    sget-object v7, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ASYNC_COMPLETION:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    invoke-virtual {v7}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/cisco/anyconnect/vpn/android/service/VpnService$17;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$NativeComponentInstaller$ReturnCode:[I

    sget-object v8, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    invoke-virtual {v8}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 4271
    :catch_6
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->values()[Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/cisco/anyconnect/vpn/android/service/VpnService$17;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$DependencyManager$DependencyResult:[I

    :try_start_7
    sget-object v8, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->SATISFACTORY:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    invoke-virtual {v8}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v7, Lcom/cisco/anyconnect/vpn/android/service/VpnService$17;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$DependencyManager$DependencyResult:[I

    sget-object v8, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->FATAL_INCOMPATIBILITY:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    invoke-virtual {v8}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v7, Lcom/cisco/anyconnect/vpn/android/service/VpnService$17;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$DependencyManager$DependencyResult:[I

    sget-object v8, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->DEVICE_NOT_SUPPORTED:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    invoke-virtual {v8}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v7, Lcom/cisco/anyconnect/vpn/android/service/VpnService$17;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$DependencyManager$DependencyResult:[I

    sget-object v8, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->NATIVE_INSTALL_NEEDED:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    invoke-virtual {v8}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->ordinal()I

    move-result v8

    aput v3, v7, v8
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnService$17;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$DependencyManager$DependencyResult:[I

    sget-object v7, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->DEFERRED:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    invoke-virtual {v7}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->ordinal()I

    move-result v7

    aput v4, v3, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnService$17;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$DependencyManager$DependencyResult:[I

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->TIMED_OUT:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->ordinal()I

    move-result v4

    aput v5, v3, v4
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnService$17;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$DependencyManager$DependencyResult:[I

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->UNSATISFACTORY:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->ordinal()I

    move-result v4

    aput v6, v3, v4
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 1373
    :catch_d
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;->values()[Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnService$17;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$VpnService$VpnPromptType:[I

    :try_start_e
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;->Banner:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnService$17;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$VpnService$VpnPromptType:[I

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;->CertBanner:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$17;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$VpnService$VpnPromptType:[I

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;->UserPrompt:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    return-void
.end method

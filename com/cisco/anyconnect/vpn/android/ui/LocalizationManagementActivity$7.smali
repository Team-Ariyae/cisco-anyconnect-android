.class synthetic Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$7;
.super Ljava/lang/Object;
.source "LocalizationManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$cisco$anyconnect$vpn$android$service$VpnServiceResult:[I

.field static final synthetic $SwitchMap$com$cisco$anyconnect$vpn$android$ui$LocalizationManagementActivity$Operation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 221
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->values()[Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$7;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$VpnServiceResult:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->OPERATION_IN_PROGRESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :catch_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->values()[Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$7;->$SwitchMap$com$cisco$anyconnect$vpn$android$ui$LocalizationManagementActivity$Operation:[I

    :try_start_1
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->RestoreDefaultL10n:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$7;->$SwitchMap$com$cisco$anyconnect$vpn$android$ui$LocalizationManagementActivity$Operation:[I

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->ImportServerL10n:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.class public Lcom/cisco/anyconnect/nvm/utils/NVMConstants;
.super Ljava/lang/Object;
.source "NVMConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;,
        Lcom/cisco/anyconnect/nvm/utils/NVMConstants$INTERFACE_TYPE;,
        Lcom/cisco/anyconnect/nvm/utils/NVMConstants$VpnTunnelType;,
        Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;,
        Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;,
        Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;,
        Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;,
        Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;
    }
.end annotation


# static fields
.field public static final AC_EULA_ACCEPTED_BROADCAST:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.EULA_ACTION"

.field public static final AUP_NOTIFICATION_ID:I = 0x3e9

.field public static final AVG_SPLIT_DNS_DOMAIN_SIZE:I = 0x28

.field public static final BRAND_SAMSUNG:Ljava/lang/String; = "samsung"

.field public static final COLLECTION_STATUS_KEY:Ljava/lang/String; = "collection_status"

.field public static final CVCCONFIG_MAX_DNS:I = 0x3

.field public static final CVCCONFIG_MAX_SPLIT_DNS:I = 0x19

.field public static final CVCCONFIG_MAX_SPLIT_INCLUDE:I = 0x9c4

.field public static final CloudProfileFileName:Ljava/lang/String; = "NVM_CloudServiceProfile.xml"

.field public static final DNS_BUF_SIZE_V4:I = 0x3

.field public static final DNS_BUF_SIZE_V6:I = 0x3

.field public static final ENV_ANDROID_ID:Ljava/lang/String; = "ANDROID_ID"

.field public static final ENV_NPA_PROFILE_NAME:Ljava/lang/String; = "NPA_Active_Profile_Name"

.field public static final ENV_NVM_FILES_DIR:Ljava/lang/String; = "NVM_FILES_DIR"

.field public static final ENV_NVM_FILES_DIR_NAME:Ljava/lang/String; = "NVM"

.field public static final ENV_OS_ARCHITECTURE:Ljava/lang/String; = "OS_ARCH"

.field public static final ENV_OS_NAME:Ljava/lang/String; = "OS_NAME"

.field public static final ENV_RELEASE_VERSION:Ljava/lang/String; = "VER_RELEASE"

.field public static final ENV_SYSTEM_MANUFACTURER:Ljava/lang/String; = "SYS_MANU"

.field public static final EULA_ACCEPT_EXTRA:Ljava/lang/String; = "eula_accept"

.field public static final FOREGROUND_SERVICE_NOTIFICATION_ID:I = 0x3e8

.field public static final HEADS_UP_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "heads_up"

.field public static final INTERVAL:I = 0x7d0

.field public static final JNI_ERR:I = -0x1

.field public static final JNI_OK:I = 0x0

.field public static final JOB_FOREGROUND_NOTIFICATION_ID:I = 0x3ea

.field public static final MAXITERATION:I = 0x3

.field public static final MAX_IPFIX_TIMER_VALUE_SEC:I = 0x168

.field public static final MAX_STR_ADDR_SIZE_V4:I = 0xf

.field public static final MAX_STR_ADDR_SIZE_V6:I = 0x27

.field public static final MIN_IPFIX_TIMER_VALUE_SEC:I = 0x3c

.field public static final NCHS_BIND_ACTION:Ljava/lang/String; = "com.cisco.android.nchs.aidl.INetworkComponentHostService"

.field public static final NETWORK_STATE_PROVIDER_AUTHORITY:Ljava/lang/String; = "content://com.cisco.android.nchs.networkstateprovider"

.field public static final NETWORK_STATE_PROVIDER_CLIENT_V4_ADDR:Ljava/lang/String; = "client_v4_address"

.field public static final NETWORK_STATE_PROVIDER_CLIENT_V6_ADDR:Ljava/lang/String; = "client_v6_address"

.field public static final NETWORK_STATE_PROVIDER_KEY_NVM_PROFILE:Ljava/lang/String; = "nvm_profile"

.field public static final NETWORK_STATE_PROVIDER_KEY_TND_STATE:Ljava/lang/String; = "tnd_state"

.field public static final NETWORK_STATE_PROVIDER_KEY_VPN_STATE:Ljava/lang/String; = "vpn_state"

.field public static final NON_CONTAINER_ID:I = 0x0

.field public static final NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "default"

.field public static final NPA_ALL_REGISTERED_PROFILES:Ljava/lang/String; = "ALL_REGISTERED_PROFILES_FOR_CLIENT"

.field public static final NPA_PROFILE_AVAILABLE:Ljava/lang/String; = "com.cisco.anyconnect.nvm.NPA_PROFILE_AVAILABLE"

.field public static final NVM_AUP_BUNDLE_KEY:Ljava/lang/String; = "AUP"

.field public static final NVM_JOB_BUNDLE_KEY_INTERVAL:Ljava/lang/String; = "Interval"

.field public static final NVM_JOB_COLLECTION_ON_PERIODIC_INTERVAL:I = 0x493e0

.field public static final NVM_JOB_EXPORT_LATENCY:I = 0x1

.field public static final NVM_JOB_FLEX_INTERVAL:I = 0x493e0

.field public static final NVM_JOB_ID:I = 0x3e9

.field public static final NVM_JOB_NO_PROFILE_LATENCY:I = 0xdbba0

.field public static final NVM_JOB_NWCHANGE_RECOVERY_LATENCY:I = 0xea60

.field public static final NVM_JOB_PERIODIC_INTERVAL:I = 0xdbba0

.field public static final NVM_JOB_RESCHEDULE_LATENCY:I = 0xea60

.field public static final NVM_PERIODIC_JOB_ID:I = 0x3ea

.field public static final NVM_PREFERENCE_PROVIDER_URI:Landroid/net/Uri;

.field public static final NVM_PROFILE_CLOUD_ELEMENT:Ljava/lang/String; = "Cloud"

.field public static final NVM_PROFILE_ELEMENT_EXPORT_ON_MOBILE_DATA:Ljava/lang/String; = "ExportOnMobileData"

.field public static final NVM_PROFILE_PREFERENCE_KEY_EXPORT_ON_METERED_NETWORK:Ljava/lang/String; = "profilepref_ exportonmobiledata"

.field public static final NVM_PROFILE_SCAN_JOB_ID:I = 0x3eb

.field public static final NVM_SETTINGS_FRAGMENT_KEY:Ljava/lang/String; = "nvmsettings"

.field public static final NVM_USER_PREFERENCES_FILE_NAME:Ljava/lang/String; = "nvm_preferences"

.field public static final NVM_USER_PREFERENCES_KEY_AUP_DISPLAYED:Ljava/lang/String; = "aup_displayed"

.field public static final NVM_USER_PREFERENCES_KEY_AUP_HASH:Ljava/lang/String; = "aup_hash"

.field public static final NVM_USER_PREFERENCES_KEY_EULA_ACCEPTED:Ljava/lang/String; = "eula_status"

.field public static final NVM_USER_PREFERENCE_KEY_EXPORT_ON_METERED_NETWORK:Ljava/lang/String; = "userpref_exportonmobiledata"

.field public static final OnPremProfileFileName:Ljava/lang/String; = "NVM_ServiceProfile.xml"

.field public static final PER_USER_RANGE:I = 0x186a0

.field public static final PREFERENCE_DB_COL_KEY:Ljava/lang/String; = "KEY"

.field public static final PREFERENCE_DB_COL_VALUE:Ljava/lang/String; = "VALUE"

.field public static final PROFILE_ACTIVATE_REQUIRED:I = 0x3

.field public static final PROFILE_INVALID:I = 0x0

.field public static final PROFILE_NOT_CHANGED:I = 0x1

.field public static final PROFILE_NOT_CONFIGURED:I = -0x1

.field public static final PROFILE_RELOAD_REQUIRED:I = 0x2

.field public static final PROFILE_SCAN_FG_DESCRIPTION:Ljava/lang/String; = "Helper service to start NVM in foreground"

.field public static final SERVICE_INIT_CANCEL_JOB:Ljava/lang/String; = "serviceInitiatedCancel"

.field public static final SHOW_NVM_AUP_INTENT:Ljava/lang/String; = "com.cisco.anyconnect.nvm.SHOW_NVM_AUP"

.field public static final SPLIT_DNS_BUF_SIZE:I = 0x19

.field public static final SPLIT_INCLUDE_NETWORK_BUF_SIZE_V4:I = 0x9c4

.field public static final SPLIT_INCLUDE_NETWORK_BUF_SIZE_V6:I = 0x9c4

.field public static final UNDEFINED:Ljava/lang/String; = "Undefined"

.field public static final UNKNOWN:Ljava/lang/String; = ""

.field public static final VPN_PRIMARY_ACTIVITY_INTENT:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.PRIMARY_ACTIVITY_SHOW_INTENT"

.field public static final VPN_SERVICE_START_BROADCAST:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.VPN_SERVICE_START_INTENT"

.field public static final VPN_USER_PREFERENCES_FILENAME:Ljava/lang/String; = "UserPreferences"

.field public static final VPN_USER_PREFERENCES_KEY_EULA:Ljava/lang/String; = "eula"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.cisco.anyconnect.nvm.providers.PreferencesProvider/"

    .line 91
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants;->NVM_PREFERENCE_PROVIDER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

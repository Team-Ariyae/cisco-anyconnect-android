.class public Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;
.super Ljava/lang/Object;
.source "UnmanagedRegistrationManager.java"

# interfaces
.implements Lcom/cisco/umbrella/registration/IRegistrationManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "UnmanagedRegistrationManager"


# instance fields
.field private final context:Landroid/content/Context;

.field private final registrationConfigManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cisco/umbrella/registration/RegistrationDataConfigManager<",
            "Lcom/cisco/umbrella/registration/RegistrationConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cisco/umbrella/registration/RegistrationDataConfigManager<",
            "Lcom/cisco/umbrella/registration/RegistrationData;",
            ">;"
        }
    .end annotation
.end field

.field private final registrationHandler:Lcom/cisco/umbrella/registration/IRegistrationHandler;

.field private unmanagedRegistrationData:Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;

.field private unmanagedUserId:Ljava/lang/String;

.field private final unmanagedUserIdReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/cisco/umbrella/util/ISharedPreferencesController;Lcom/cisco/umbrella/registration/IRegistrationHandler;Landroid/content/Context;)V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->unmanagedUserId:Ljava/lang/String;

    .line 55
    new-instance v1, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager$1;

    invoke-direct {v1, p0}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager$1;-><init>(Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;)V

    iput-object v1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->unmanagedUserIdReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p2

    check-cast v2, Lcom/cisco/umbrella/registration/IRegistrationHandler;

    iput-object p2, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->registrationHandler:Lcom/cisco/umbrella/registration/IRegistrationHandler;

    .line 43
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p2, p3

    check-cast p2, Landroid/content/Context;

    iput-object p3, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->context:Landroid/content/Context;

    .line 45
    new-instance p2, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    const-string v2, "umbrella_registration_config"

    invoke-direct {p2, p1, v2}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;-><init>(Lcom/cisco/umbrella/util/ISharedPreferencesController;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->registrationConfigManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    .line 46
    new-instance v2, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    const-string v3, "umbrella_registration_data"

    invoke-direct {v2, p1, v3}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;-><init>(Lcom/cisco/umbrella/util/ISharedPreferencesController;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    .line 48
    new-instance p1, Landroid/content/IntentFilter;

    const-string v3, "com.cisco.umbrella.android.USER_IDENTITY_UNMANAGED"

    invoke-direct {p1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "com.cisco.anyconnect.vpn.android.avf.permission.SEND_UMBRELLA_BROADCAST_PERMISSION"

    invoke-virtual {p3, v1, p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 51
    const-class p1, Lcom/cisco/umbrella/registration/RegistrationConfig;

    invoke-virtual {p2, p1}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->load(Ljava/lang/Class;)V

    .line 52
    const-class p1, Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {v2, p1}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->load(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->unmanagedUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->unmanagedUserId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->invokeRegister()V

    return-void
.end method

.method static synthetic access$300(Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->handleInvalidConfig(Ljava/lang/String;)V

    return-void
.end method

.method private createRegistrationConfig()Lcom/cisco/umbrella/registration/RegistrationConfig;
    .locals 3

    .line 125
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->TAG:Ljava/lang/String;

    const-string v2, "createRegistrationConfig invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;

    invoke-direct {v0}, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;-><init>()V

    const-string v1, "apiKey"

    .line 127
    invoke-static {v1}, Lcom/cisco/umbrella/util/ConfigHelper;->getRegistrationConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->setApiKey(Ljava/lang/String;)Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;

    move-result-object v0

    .line 128
    invoke-direct {p0}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->getAndroidID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->setDeviceKey(Ljava/lang/String;)Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->unmanagedRegistrationData:Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;

    .line 129
    invoke-virtual {v1}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->getOd()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->setOrganizationId(Ljava/lang/String;)Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->unmanagedRegistrationData:Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;

    .line 130
    invoke-virtual {v1}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->getRegdToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->setRegistrationToken(Ljava/lang/String;)Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->unmanagedUserId:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->setLabel(Ljava/lang/String;)Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;

    move-result-object v0

    const-string/jumbo v1, "unknown"

    .line 132
    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->setSerialNumber(Ljava/lang/String;)Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->build()Lcom/cisco/umbrella/registration/RegistrationConfig;

    move-result-object v0

    return-object v0
.end method

.method private getAndroidID()Ljava/lang/String;
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExceptionMessageReason(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "UserCancelledRegistration"

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "invalidIdentity"

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    const-string p1, "RegistrationFailed"

    return-object p1
.end method

.method private getUserId()Ljava/lang/String;
    .locals 3

    .line 148
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->TAG:Ljava/lang/String;

    const-string v2, "getUserId Invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->unmanagedRegistrationData:Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->getUr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->unmanagedRegistrationData:Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->getUs()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNonNullOrNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->unmanagedRegistrationData:Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;->getUs()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->invokeUserIdPopup()V

    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->getAndroidID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleInvalidConfig(Ljava/lang/String;)V
    .locals 4

    .line 118
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Registration failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->registrationConfigManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->remove()V

    .line 120
    iget-object v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->remove()V

    .line 121
    iget-object v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->getExceptionMessageReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.cisco.umbrella.android.UNMANAGED_REGISTRATION_FAILURE"

    invoke-static {v1, v0, p1}, Lcom/cisco/umbrella/util/Helper;->sendBroadcast(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private invokeRegister()V
    .locals 3

    .line 101
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->createRegistrationConfig()Lcom/cisco/umbrella/registration/RegistrationConfig;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->registrationConfigManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {v1}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/registration/RegistrationConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->TAG:Ljava/lang/String;

    const-string v2, "Registration Config is same. No need to re-register"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.cisco.umbrella.android.UNMANAGED_REGISTRATION_SUCCESSFUL"

    .line 107
    iget-object v1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/cisco/umbrella/util/Helper;->sendBroadcast(Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->registrationConfigManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {v1, v0}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->save(Ljava/lang/Object;)V

    .line 111
    invoke-direct {p0}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->register()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->handleInvalidConfig(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private invokeUserIdPopup()V
    .locals 3

    .line 161
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->TAG:Ljava/lang/String;

    const-string v2, "UserId pop-up invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.cisco.umbrella.android.USER_IDENTITY_GET"

    .line 162
    iget-object v1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/cisco/umbrella/util/Helper;->sendBroadcast(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static isRegistered(Landroid/content/Context;)Z
    .locals 4

    .line 170
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->TAG:Ljava/lang/String;

    const-string v2, "isRegistered invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {p0}, Lcom/cisco/umbrella/util/Helper;->getStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 172
    new-instance v0, Lcom/cisco/umbrella/util/SharedPreferencesController;

    invoke-direct {v0, p0}, Lcom/cisco/umbrella/util/SharedPreferencesController;-><init>(Landroid/content/Context;)V

    const-string p0, "umbrella_registration_data"

    .line 173
    invoke-virtual {v0, p0}, Lcom/cisco/umbrella/util/SharedPreferencesController;->exists(Ljava/lang/String;)Z

    move-result p0

    .line 174
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IsRegistered :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private register()V
    .locals 3

    .line 137
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->TAG:Ljava/lang/String;

    const-string v2, "register Invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->registrationHandler:Lcom/cisco/umbrella/registration/IRegistrationHandler;

    iget-object v1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->registrationConfigManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {v1}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/umbrella/registration/RegistrationConfig;

    invoke-interface {v0, v1}, Lcom/cisco/umbrella/registration/IRegistrationHandler;->register(Lcom/cisco/umbrella/registration/RegistrationConfig;)Lcom/cisco/umbrella/registration/RegistrationData;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {v1, v0}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->save(Ljava/lang/Object;)V

    const-string v0, "com.cisco.umbrella.android.UNMANAGED_REGISTRATION_SUCCESSFUL"

    .line 141
    iget-object v1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/cisco/umbrella/util/Helper;->sendBroadcast(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    .line 143
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->handleInvalidConfig(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    .line 179
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->TAG:Ljava/lang/String;

    const-string v2, "cleanup invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->unmanagedUserIdReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public getRegistrationData()Lcom/cisco/umbrella/registration/RegistrationData;
    .locals 3

    .line 74
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->TAG:Ljava/lang/String;

    const-string v2, "getRegistrationData invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/umbrella/registration/RegistrationData;

    return-object v0
.end method

.method public register(Ljava/lang/String;)V
    .locals 4

    .line 79
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "register Invoked,  activationUri is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/cisco/umbrella/registration/URIHandler;

    invoke-direct {v0}, Lcom/cisco/umbrella/registration/URIHandler;-><init>()V

    .line 82
    invoke-virtual {v0, p1}, Lcom/cisco/umbrella/registration/URIHandler;->validateAndExtractURIData(Ljava/lang/String;)Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->unmanagedRegistrationData:Lcom/cisco/umbrella/registration/UnmanagedRegistrationData;

    if-nez p1, :cond_0

    const-string p1, "URI is not valid"

    .line 85
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->handleInvalidConfig(Ljava/lang/String;)V

    return-void

    .line 89
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->getUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->unmanagedUserId:Ljava/lang/String;

    .line 90
    invoke-static {p1}, Lcom/cisco/umbrella/util/ValidationHelper;->isNonNullOrNotEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->invokeRegister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->handleInvalidConfig(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

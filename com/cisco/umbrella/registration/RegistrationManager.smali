.class public Lcom/cisco/umbrella/registration/RegistrationManager;
.super Ljava/lang/Object;
.source "RegistrationManager.java"

# interfaces
.implements Lcom/cisco/umbrella/registration/IRegistrationManager;
.implements Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;
.implements Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "RegistrationManager"


# instance fields
.field private final apiKey:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private deviceKey:Ljava/lang/String;

.field private errorHandler:Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;

.field private isUserIdSelectionPopRequired:Z

.field private orgId:Ljava/lang/String;

.field private publicNetworkMonitor:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

.field private randomIntervalBackOff:Lcom/cisco/umbrella/registration/RandomIntervalBackOff;

.field private regToken:Ljava/lang/String;

.field private registrationConfigManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cisco/umbrella/registration/RegistrationDataConfigManager<",
            "Lcom/cisco/umbrella/registration/RegistrationConfig;",
            ">;"
        }
    .end annotation
.end field

.field private registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cisco/umbrella/registration/RegistrationDataConfigManager<",
            "Lcom/cisco/umbrella/registration/RegistrationData;",
            ">;"
        }
    .end annotation
.end field

.field private registrationHandler:Lcom/cisco/umbrella/registration/IRegistrationHandler;

.field private registrationRunnable:Ljava/lang/Runnable;

.field private registrationScheduler:Lcom/cisco/umbrella/registration/RegistrationScheduler;

.field private restrictionsHandlerInstance:Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;

.field private scheduledRegistrationFuture:Ljava/util/concurrent/ScheduledFuture;

.field private sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

.field private singleThreadedScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private userIdReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;Lcom/cisco/umbrella/registration/RegistrationHandler;Lcom/cisco/umbrella/network/PublicNetworkMonitor;Lcom/cisco/umbrella/util/ISharedPreferencesController;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->singleThreadedScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 61
    new-instance v0, Lcom/cisco/umbrella/registration/RegistrationManager$1;

    invoke-direct {v0, p0}, Lcom/cisco/umbrella/registration/RegistrationManager$1;-><init>(Lcom/cisco/umbrella/registration/RegistrationManager;)V

    iput-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationRunnable:Ljava/lang/Runnable;

    .line 67
    new-instance v0, Lcom/cisco/umbrella/registration/RegistrationScheduler;

    invoke-direct {v0}, Lcom/cisco/umbrella/registration/RegistrationScheduler;-><init>()V

    iget-object v1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/registration/RegistrationScheduler;->setRunnable(Ljava/lang/Runnable;)Lcom/cisco/umbrella/registration/RegistrationScheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationScheduler:Lcom/cisco/umbrella/registration/RegistrationScheduler;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->isUserIdSelectionPopRequired:Z

    .line 70
    new-instance v0, Lcom/cisco/umbrella/registration/RegistrationManager$2;

    invoke-direct {v0, p0}, Lcom/cisco/umbrella/registration/RegistrationManager$2;-><init>(Lcom/cisco/umbrella/registration/RegistrationManager;)V

    iput-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->userIdReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    iput-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->context:Landroid/content/Context;

    .line 101
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p1, p2

    check-cast p1, Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;

    iput-object p2, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->restrictionsHandlerInstance:Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;

    .line 102
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Lcom/cisco/umbrella/registration/IRegistrationHandler;

    iput-object p3, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationHandler:Lcom/cisco/umbrella/registration/IRegistrationHandler;

    .line 103
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p1, p4

    check-cast p1, Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    iput-object p4, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->publicNetworkMonitor:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    const-string p1, "apiKey"

    .line 104
    invoke-static {p1}, Lcom/cisco/umbrella/util/ConfigHelper;->getRegistrationConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->apiKey:Ljava/lang/String;

    .line 105
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p1, p5

    check-cast p1, Lcom/cisco/umbrella/util/ISharedPreferencesController;

    iput-object p5, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    .line 107
    new-instance p1, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    const-string p2, "umbrella_registration_config"

    invoke-direct {p1, p5, p2}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;-><init>(Lcom/cisco/umbrella/util/ISharedPreferencesController;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationConfigManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    .line 108
    new-instance p1, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    const-string p2, "umbrella_registration_data"

    invoke-direct {p1, p5, p2}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;-><init>(Lcom/cisco/umbrella/util/ISharedPreferencesController;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    .line 110
    iget-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationConfigManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    const-class p2, Lcom/cisco/umbrella/registration/RegistrationConfig;

    invoke-virtual {p1, p2}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->load(Ljava/lang/Class;)V

    .line 112
    iget-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationConfigManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    const-class p2, Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {p1, p2}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->load(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/cisco/umbrella/registration/RegistrationManager;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/cisco/umbrella/registration/RegistrationManager;->register()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cisco/umbrella/registration/RegistrationManager;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->isUserIdSelectionPopRequired:Z

    return p0
.end method

.method static synthetic access$202(Lcom/cisco/umbrella/registration/RegistrationManager;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->isUserIdSelectionPopRequired:Z

    return p1
.end method

.method static synthetic access$300(Lcom/cisco/umbrella/registration/RegistrationManager;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->deviceKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/cisco/umbrella/registration/RegistrationManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->deviceKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/cisco/umbrella/registration/RegistrationManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/cisco/umbrella/registration/RegistrationManager;->validateEmailId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/cisco/umbrella/registration/RegistrationManager;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/cisco/umbrella/registration/RegistrationManager;->getUserIdForCROS()V

    return-void
.end method

.method static synthetic access$600(Lcom/cisco/umbrella/registration/RegistrationManager;)Lcom/cisco/umbrella/registration/RegistrationScheduler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationScheduler:Lcom/cisco/umbrella/registration/RegistrationScheduler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/cisco/umbrella/registration/RegistrationManager;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->singleThreadedScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private createErrorHandler()V
    .locals 5

    .line 273
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    const-string v2, "createErrorHandler invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v0, Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;

    invoke-direct {v0}, Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;-><init>()V

    iget-object v1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationScheduler:Lcom/cisco/umbrella/registration/RegistrationScheduler;

    .line 275
    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;->setScheduler(Lcom/cisco/umbrella/registration/RegistrationScheduler;)Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;

    move-result-object v0

    new-instance v1, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;

    iget-object v2, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    invoke-direct {v1, v2}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;-><init>(Lcom/cisco/umbrella/util/ISharedPreferencesController;)V

    const-wide/16 v2, 0x6

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 279
    invoke-virtual {v1, v2, v3, v4}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->setInterval1(JLjava/util/concurrent/TimeUnit;)Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;

    move-result-object v1

    const-wide/16 v2, 0xc

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 280
    invoke-virtual {v1, v2, v3, v4}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->setInterval2(JLjava/util/concurrent/TimeUnit;)Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;

    move-result-object v1

    const-wide/16 v2, 0xe

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 281
    invoke-virtual {v1, v2, v3, v4}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->setMaxBackOff(JLjava/util/concurrent/TimeUnit;)Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;

    move-result-object v1

    .line 282
    invoke-virtual {v1}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->build()Lcom/cisco/umbrella/registration/RandomIntervalBackOff;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->randomIntervalBackOff:Lcom/cisco/umbrella/registration/RandomIntervalBackOff;

    .line 276
    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;->setBackOff4xx(Lcom/google/api/client/util/BackOff;)Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;

    move-result-object v0

    new-instance v1, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;

    invoke-direct {v1}, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;-><init>()V

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 286
    invoke-virtual {v1, v2, v3, v4}, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;->setFib1(JLjava/util/concurrent/TimeUnit;)Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;

    move-result-object v1

    const-wide/16 v2, 0x8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 287
    invoke-virtual {v1, v2, v3, v4}, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;->setFib2(JLjava/util/concurrent/TimeUnit;)Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;

    move-result-object v1

    const-wide/16 v2, 0x37

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 288
    invoke-virtual {v1, v2, v3, v4}, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;->setMaxFib(JLjava/util/concurrent/TimeUnit;)Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;

    move-result-object v1

    .line 289
    invoke-virtual {v1}, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;->build()Lcom/cisco/umbrella/registration/FibonacciBackOff;

    move-result-object v1

    .line 283
    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;->setBackOff429And5xx(Lcom/google/api/client/util/BackOff;)Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->errorHandler:Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;

    .line 291
    iget-object v1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationHandler:Lcom/cisco/umbrella/registration/IRegistrationHandler;

    invoke-interface {v1, v0}, Lcom/cisco/umbrella/registration/IRegistrationHandler;->setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)V

    return-void
.end method

.method private createRegistrationConfig()Lcom/cisco/umbrella/registration/RegistrationConfig;
    .locals 3

    .line 261
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    const-string v2, "createRegistrationConfig invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v0, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;

    invoke-direct {v0}, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;-><init>()V

    iget-object v1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->apiKey:Ljava/lang/String;

    .line 263
    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->setApiKey(Ljava/lang/String;)Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->deviceKey:Ljava/lang/String;

    .line 264
    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->setDeviceKey(Ljava/lang/String;)Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->orgId:Ljava/lang/String;

    .line 265
    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->setOrganizationId(Ljava/lang/String;)Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->regToken:Ljava/lang/String;

    .line 266
    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->setRegistrationToken(Ljava/lang/String;)Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;

    move-result-object v0

    .line 267
    invoke-direct {p0}, Lcom/cisco/umbrella/registration/RegistrationManager;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->setSerialNumber(Ljava/lang/String;)Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->deviceKey:Ljava/lang/String;

    .line 268
    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->setLabel(Ljava/lang/String;)Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RegistrationConfig$Builder;->build()Lcom/cisco/umbrella/registration/RegistrationConfig;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceSerialNumber()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    .line 117
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    const-string v3, "getDeviceSerialNumber invoked"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "umbrella_serial_number"

    .line 118
    invoke-static {v1}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v1}, Lcom/cisco/umbrella/util/ValidationHelper;->isNonNullOrNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/cisco/umbrella/util/ConfigHelper;->isCros()Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Serial number received from admin: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v2, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    .line 126
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 127
    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "gsm.sn1"

    aput-object v6, v5, v7

    .line 129
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 130
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "ril.serialnumber"

    aput-object v6, v5, v7

    .line 131
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 132
    :cond_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "ro.serialno"

    aput-object v6, v5, v7

    .line 133
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 134
    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "sys.serialnumber"

    aput-object v5, v4, v7

    .line 135
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 136
    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 137
    sget-object v5, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 140
    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    move-object v1, v5

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v3, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception occurred while getting device serial number. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Device serial no is :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getUserIdForCROS()V
    .locals 6

    .line 341
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    const-string v2, "getUserIdForCROS invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "umbrella_user_domains"

    .line 342
    invoke-static {v0}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "domains are "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "com.cisco.umbrella.android.USER_DOMAINS_UNAVAILABLE"

    .line 345
    invoke-direct {p0, v0}, Lcom/cisco/umbrella/registration/RegistrationManager;->sendBroadcast(Ljava/lang/String;)V

    return-void

    .line 348
    :cond_0
    iget-object v2, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationConfigManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {v2}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 349
    iget-object v2, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationConfigManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {v2}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/umbrella/registration/RegistrationConfig;

    invoke-virtual {v2}, Lcom/cisco/umbrella/registration/RegistrationConfig;->getDeviceKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->deviceKey:Ljava/lang/String;

    .line 350
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UserId Saved is :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->deviceKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->deviceKey:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/cisco/umbrella/registration/RegistrationManager;->validateEmailId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationScheduler:Lcom/cisco/umbrella/registration/RegistrationScheduler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cisco/umbrella/registration/RegistrationScheduler;->schedule(J)V

    return-void

    .line 356
    :cond_1
    invoke-direct {p0, v0}, Lcom/cisco/umbrella/registration/RegistrationManager;->showUserIdSelectionPopup(Ljava/lang/String;)V

    return-void
.end method

.method private handleAlreadyRegistered(Z)V
    .locals 6

    .line 235
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    const-string v2, "No need to re-register"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/umbrella/registration/RegistrationData;

    if-eqz p1, :cond_0

    const-string v2, "com.cisco.umbrella.android.REGISTRATION_SUCCESSFUL"

    goto :goto_0

    :cond_0
    const-string v2, "com.cisco.umbrella.android.NO_REGISTRATION_CHANGE"

    :goto_0
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/cisco/umbrella/registration/RegistrationManager;->sendRegistrationBroadcast(Lcom/cisco/umbrella/registration/RegistrationData;Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    .line 239
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Scheduling again..."

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/RegistrationData;->getRegisteredTime()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    const-wide/32 v4, 0xa4cb805

    invoke-static {v2, v3, v4, v5}, Lcom/cisco/umbrella/util/Helper;->getRandomNumberBetween(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 241
    iget-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationScheduler:Lcom/cisco/umbrella/registration/RegistrationScheduler;

    invoke-virtual {p1, v0, v1}, Lcom/cisco/umbrella/registration/RegistrationScheduler;->schedule(J)V

    :cond_1
    return-void
.end method

.method private handleFailedRegistration(Z)V
    .locals 3

    .line 246
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    const-string v2, "handleFailedRegistration invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->publicNetworkMonitor:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-virtual {v0, p0}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->subscribe(Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;)V

    .line 248
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/registration/RegistrationManager;->sendRegistrationBroadcast(Z)V

    return-void
.end method

.method private handleInvalidConfig()V
    .locals 3

    .line 252
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    const-string v2, "handleInvalidConfig invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->publicNetworkMonitor:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-virtual {v0, p0}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->subscribe(Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;)V

    .line 254
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationConfigManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->remove()V

    .line 255
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->remove()V

    const-string v0, "com.cisco.umbrella.android.REGISTRATION_FAILED"

    .line 256
    invoke-direct {p0, v0}, Lcom/cisco/umbrella/registration/RegistrationManager;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method private invokeRegister()V
    .locals 4

    .line 400
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    const-string v2, "invokeRegister invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "umbrella_org_id"

    .line 401
    invoke-static {v0}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->orgId:Ljava/lang/String;

    const-string v0, "umbrella_reg_token"

    .line 402
    invoke-static {v0}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->regToken:Ljava/lang/String;

    .line 403
    invoke-static {}, Lcom/cisco/umbrella/util/ConfigHelper;->isCros()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/cisco/umbrella/registration/RegistrationManager;->getUserIdForCROS()V

    return-void

    :cond_0
    const-string v0, "umbrella_user_identity"

    .line 408
    invoke-static {v0}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->deviceKey:Ljava/lang/String;

    .line 409
    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->deviceKey:Ljava/lang/String;

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->deviceKey:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 414
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Device Key is unavailable. Cannot proceed with registration"

    invoke-static {v0, v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationScheduler:Lcom/cisco/umbrella/registration/RegistrationScheduler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cisco/umbrella/registration/RegistrationScheduler;->schedule(J)V

    return-void
.end method

.method private isRegistered()Z
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    .line 158
    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RegistrationData;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {v2}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {v2}, Lcom/cisco/umbrella/registration/RegistrationData;->getRegisteredTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xa4cb800

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 160
    :goto_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isRegistered "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private manageRegistration(Lcom/cisco/umbrella/registration/RegistrationData;Z)V
    .locals 6

    .line 318
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    const-string v2, "manageRegistration invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "com.cisco.umbrella.android.REGISTRATION_SUCCESSFUL"

    if-nez v0, :cond_0

    .line 322
    invoke-direct {p0, p1, v3, v2}, Lcom/cisco/umbrella/registration/RegistrationManager;->sendRegistrationBroadcast(Lcom/cisco/umbrella/registration/RegistrationData;Ljava/lang/String;Z)V

    goto :goto_1

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RegistrationData;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/RegistrationData;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "com.cisco.umbrella.android.NO_REGISTRATION_CHANGE"

    :goto_0
    const/4 p2, 0x0

    .line 325
    invoke-direct {p0, p1, v3, p2}, Lcom/cisco/umbrella/registration/RegistrationManager;->sendRegistrationBroadcast(Lcom/cisco/umbrella/registration/RegistrationData;Ljava/lang/String;Z)V

    goto :goto_1

    .line 328
    :cond_2
    invoke-direct {p0, p1, v3, v2}, Lcom/cisco/umbrella/registration/RegistrationManager;->sendRegistrationBroadcast(Lcom/cisco/umbrella/registration/RegistrationData;Ljava/lang/String;Z)V

    .line 331
    :goto_1
    iget-object p2, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {p2, p1}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->save(Ljava/lang/Object;)V

    .line 332
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Registration is successful and device id is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/RegistrationData;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/RegistrationData;->getRegisteredTime()J

    move-result-wide p1

    const-wide/32 v2, 0xa4cb800

    const-wide/32 v4, 0xa4cb805

    invoke-static {v2, v3, v4, v5}, Lcom/cisco/umbrella/util/Helper;->getRandomNumberBetween(JJ)J

    move-result-wide v2

    add-long/2addr p1, v2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr p1, v2

    .line 335
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Registration successful, unsubscribed from network monitor. Schedule Registration at ::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationScheduler:Lcom/cisco/umbrella/registration/RegistrationScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/cisco/umbrella/registration/RegistrationScheduler;->schedule(J)V

    .line 337
    iget-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->publicNetworkMonitor:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-virtual {p1, p0}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->unSubscribe(Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;)V

    return-void
.end method

.method private register()V
    .locals 9

    const-string v0, "Restarted due to device reboot or app force stop"

    .line 174
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    const-string v3, "Register invoked"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    const-class v3, Ljava/lang/Boolean;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v1, v4, v3}, Lcom/cisco/umbrella/util/ISharedPreferencesController;->fetch(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 179
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->errorHandler:Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;

    if-nez v3, :cond_1

    .line 180
    invoke-direct {p0}, Lcom/cisco/umbrella/registration/RegistrationManager;->createErrorHandler()V

    :cond_1
    const-string v3, "com.cisco.umbrella.android.UMBRELLA_AGENT_AVAILABLE"

    .line 182
    invoke-direct {p0, v3}, Lcom/cisco/umbrella/registration/RegistrationManager;->sendBroadcast(Ljava/lang/String;)V

    .line 184
    iget-object v3, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->randomIntervalBackOff:Lcom/cisco/umbrella/registration/RandomIntervalBackOff;

    invoke-virtual {v3}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->getBackOffMillis()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_3

    .line 185
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "BackOff due to 4XX timer expired."

    invoke-static {v3, v2, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, v1}, Lcom/cisco/umbrella/registration/RegistrationManager;->sendRegistrationBroadcast(Z)V
    :try_end_0
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 221
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v1, v3, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    invoke-interface {v0, v4}, Lcom/cisco/umbrella/util/ISharedPreferencesController;->remove(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 190
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/cisco/umbrella/registration/RegistrationManager;->createRegistrationConfig()Lcom/cisco/umbrella/registration/RegistrationConfig;

    move-result-object v3

    .line 191
    invoke-direct {p0, v3}, Lcom/cisco/umbrella/registration/RegistrationManager;->shouldRegister(Lcom/cisco/umbrella/registration/RegistrationConfig;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 192
    invoke-direct {p0, v1}, Lcom/cisco/umbrella/registration/RegistrationManager;->handleAlreadyRegistered(Z)V
    :try_end_1
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 221
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v1, v3, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    invoke-interface {v0, v4}, Lcom/cisco/umbrella/util/ISharedPreferencesController;->remove(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 196
    :cond_5
    :try_start_2
    iget-object v5, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationConfigManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {v5, v3}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->save(Ljava/lang/Object;)V

    .line 197
    iget-object v5, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationHandler:Lcom/cisco/umbrella/registration/IRegistrationHandler;

    invoke-interface {v5, v3}, Lcom/cisco/umbrella/registration/IRegistrationHandler;->register(Lcom/cisco/umbrella/registration/RegistrationConfig;)Lcom/cisco/umbrella/registration/RegistrationData;

    move-result-object v3

    if-nez v3, :cond_7

    .line 201
    invoke-direct {p0, v1}, Lcom/cisco/umbrella/registration/RegistrationManager;->handleFailedRegistration(Z)V
    :try_end_2
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/InvalidParameterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_6

    .line 221
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v1, v3, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    invoke-interface {v0, v4}, Lcom/cisco/umbrella/util/ISharedPreferencesController;->remove(Ljava/lang/String;)V

    :cond_6
    return-void

    .line 204
    :cond_7
    :try_start_3
    invoke-direct {p0}, Lcom/cisco/umbrella/registration/RegistrationManager;->resetBackOff()V

    .line 205
    invoke-direct {p0, v3, v1}, Lcom/cisco/umbrella/registration/RegistrationManager;->manageRegistration(Lcom/cisco/umbrella/registration/RegistrationData;Z)V
    :try_end_3
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/InvalidParameterException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_8

    .line 221
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v1, v3, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_5

    :catch_0
    move-exception v2

    .line 217
    :try_start_4
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v5, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    const-string v6, "Exception occurred in Registration. Couldn\'t complete the registration "

    invoke-static {v3, v5, v6, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    invoke-direct {p0, v1}, Lcom/cisco/umbrella/registration/RegistrationManager;->handleFailedRegistration(Z)V

    if-eqz v1, :cond_8

    goto :goto_3

    :catch_1
    move-exception v2

    .line 214
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v5, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/security/InvalidParameterException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    invoke-direct {p0}, Lcom/cisco/umbrella/registration/RegistrationManager;->handleInvalidConfig()V

    if-eqz v1, :cond_8

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v2

    .line 211
    :goto_1
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v5, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    const-string v6, "Unable to complete registration due to an error. "

    invoke-static {v3, v5, v6, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    invoke-direct {p0, v1}, Lcom/cisco/umbrella/registration/RegistrationManager;->handleFailedRegistration(Z)V

    if-eqz v1, :cond_8

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_2

    :catch_6
    move-exception v2

    .line 208
    :goto_2
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v5, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    const-string v6, "HTTP Response exception occurred. "

    invoke-static {v3, v5, v6, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    invoke-direct {p0, v1}, Lcom/cisco/umbrella/registration/RegistrationManager;->sendRegistrationBroadcast(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_8

    .line 221
    :goto_3
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v1, v2, v5, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_4
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    invoke-interface {v0, v4}, Lcom/cisco/umbrella/util/ISharedPreferencesController;->remove(Ljava/lang/String;)V

    :cond_8
    return-void

    :goto_5
    if-eqz v1, :cond_9

    .line 221
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v5, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3, v5, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    invoke-interface {v0, v4}, Lcom/cisco/umbrella/util/ISharedPreferencesController;->remove(Ljava/lang/String;)V

    .line 224
    :cond_9
    throw v2
.end method

.method private resetBackOff()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->randomIntervalBackOff:Lcom/cisco/umbrella/registration/RandomIntervalBackOff;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->reset()V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->randomIntervalBackOff:Lcom/cisco/umbrella/registration/RandomIntervalBackOff;

    .line 230
    iput-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->errorHandler:Lcom/cisco/umbrella/registration/UACHttpBackOffUnsuccessfulResponseHandler;

    .line 231
    iget-object v1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationHandler:Lcom/cisco/umbrella/registration/IRegistrationHandler;

    invoke-interface {v1, v0}, Lcom/cisco/umbrella/registration/IRegistrationHandler;->setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)V

    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;)V
    .locals 2

    .line 432
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 433
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    iget-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->context:Landroid/content/Context;

    const-string v1, "com.cisco.anyconnect.vpn.android.avf.permission.SEND_UMBRELLA_BROADCAST_PERMISSION"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private sendRegistrationBroadcast(Lcom/cisco/umbrella/registration/RegistrationData;Ljava/lang/String;Z)V
    .locals 4

    .line 421
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendRegistrationBroadcast invoked and action is :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "RegistrationData"

    .line 424
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "IsNewRegistration"

    .line 425
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 426
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    iget-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->context:Landroid/content/Context;

    const-string p2, "com.cisco.anyconnect.vpn.android.avf.permission.SEND_UMBRELLA_BROADCAST_PERMISSION"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private sendRegistrationBroadcast(Z)V
    .locals 5

    .line 295
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendRegistrationBroadcast broadcast invoked and value of bootCompleted is :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->randomIntervalBackOff:Lcom/cisco/umbrella/registration/RandomIntervalBackOff;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->getBackOffMillis()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 297
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/umbrella/registration/RegistrationData;

    if-eqz p1, :cond_0

    const-string p1, "com.cisco.umbrella.android.REGISTRATION_SUCCESSFUL"

    goto :goto_0

    :cond_0
    const-string p1, "com.cisco.umbrella.android.NO_REGISTRATION_CHANGE"

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/cisco/umbrella/registration/RegistrationManager;->sendRegistrationBroadcast(Lcom/cisco/umbrella/registration/RegistrationData;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    const-string p1, "com.cisco.umbrella.android.REGISTRATION_FAILED"

    .line 299
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/registration/RegistrationManager;->sendBroadcast(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private shouldRegister(Lcom/cisco/umbrella/registration/RegistrationConfig;)Z
    .locals 6

    .line 304
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    const-string v2, "shouldRegister is Invoked."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationConfigManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cisco/umbrella/registration/RegistrationConfig;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 307
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Has registration config changed"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->remove()V

    return v0

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/cisco/umbrella/registration/RegistrationManager;->isRegistered()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method private showUserIdSelectionPopup(Ljava/lang/String;)V
    .locals 3

    .line 372
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    const-string v2, "showUserIdSelectionPopup invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->isUserIdSelectionPopRequired:Z

    .line 374
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "domains"

    .line 375
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.cisco.umbrella.android.USER_DOMAINS_AVAILABLE"

    .line 376
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    iget-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->context:Landroid/content/Context;

    const-string v1, "com.cisco.anyconnect.vpn.android.avf.permission.SEND_UMBRELLA_BROADCAST_PERMISSION"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private validateEmailId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 360
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "validateEmailId invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ","

    .line 361
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 362
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v0, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    const-string v1, "User id matches domain."

    invoke-static {p1, p2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public getRegistrationData()Lcom/cisco/umbrella/registration/RegistrationData;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/umbrella/registration/RegistrationData;

    return-object v0
.end method

.method public onNetworkUpdate(Z)V
    .locals 2

    .line 166
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v0, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    const-string v1, "onNetworkUpdate invoked"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->publicNetworkMonitor:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-virtual {p1}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->isOnline()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationScheduler:Lcom/cisco/umbrella/registration/RegistrationScheduler;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/cisco/umbrella/registration/RegistrationScheduler;->schedule(J)V

    :cond_0
    return-void
.end method

.method public restrictionsChanged(Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;Ljava/lang/String;)V
    .locals 4

    .line 382
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "restrictionsChanged invoked Data state  and property is ::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "umbrella_user_identity"

    .line 383
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;->EMPTY:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;->REMOVED:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;

    if-ne v0, p1, :cond_3

    .line 386
    :cond_0
    iget-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationConfigManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->remove()V

    .line 387
    iget-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->registrationDataManager:Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;

    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->remove()V

    const-string p1, "umbrella_org_id"

    .line 388
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "com.cisco.umbrella.android.UMBRELLA_AGENT_UNAVAILABLE"

    .line 389
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/registration/RegistrationManager;->sendBroadcast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "umbrella_user_domains"

    .line 390
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "com.cisco.umbrella.android.USER_DOMAINS_UNAVAILABLE"

    .line 391
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/registration/RegistrationManager;->sendBroadcast(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    .line 396
    :cond_3
    invoke-direct {p0}, Lcom/cisco/umbrella/registration/RegistrationManager;->invokeRegister()V

    return-void
.end method

.method public start()V
    .locals 6

    .line 438
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    const-string v2, "Starting Registration Manager..."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->restrictionsHandlerInstance:Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;

    sget-object v2, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;->REGISTRATION:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;

    invoke-interface {v0, p0, v2}, Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;->subscribe(Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;)V

    .line 441
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.cisco.umbrella.android.UMBRELLA_FRAGMENT_READY"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "com.cisoc.umbrella.android.USER_IDENTITY_SELECTED"

    .line 442
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 444
    iget-object v2, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->userIdReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.cisco.anyconnect.vpn.android.avf.permission.SEND_UMBRELLA_BROADCAST_PERMISSION"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 445
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Started Registration Manager"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 449
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationManager;->TAG:Ljava/lang/String;

    const-string v2, "Stopping the Registration Manager"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->restrictionsHandlerInstance:Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;

    sget-object v1, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;->REGISTRATION:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;

    invoke-interface {v0, v1}, Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;->unsubscribe(Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;)V

    .line 451
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->publicNetworkMonitor:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-virtual {v0, p0}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->unSubscribe(Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;)V

    .line 452
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->userIdReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 453
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->scheduledRegistrationFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->scheduledRegistrationFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->scheduledRegistrationFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 455
    iput-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->scheduledRegistrationFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 456
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager;->singleThreadedScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method

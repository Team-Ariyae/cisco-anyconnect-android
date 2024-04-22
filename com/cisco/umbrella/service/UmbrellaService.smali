.class public final Lcom/cisco/umbrella/service/UmbrellaService;
.super Landroid/app/Service;
.source "UmbrellaService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UmbrellaService"


# instance fields
.field private isNewUnmanagedRegistration:Z

.field private isServiceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private networkInterceptorCB:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

.field private networkInterceptorCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private publicNetworkMonitor:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

.field private registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

.field private registrationManager:Lcom/cisco/umbrella/registration/RegistrationManager;

.field private registrationReceiver:Landroid/content/BroadcastReceiver;

.field private restrictionsHandlerInstance:Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;

.field private sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

.field private syncHandler:Lcom/cisco/umbrella/sync/ISyncHandler;

.field private tndHandler:Lcom/cisco/umbrella/tnd/ITNDHandler;

.field private unmanagedRegistrationManager:Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->networkInterceptorCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->isServiceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->isNewUnmanagedRegistration:Z

    .line 78
    new-instance v0, Lcom/cisco/umbrella/service/UmbrellaService$1;

    invoke-direct {v0, p0}, Lcom/cisco/umbrella/service/UmbrellaService$1;-><init>(Lcom/cisco/umbrella/service/UmbrellaService;)V

    iput-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->registrationReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/cisco/umbrella/service/UmbrellaService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cisco/umbrella/service/UmbrellaService;Landroid/content/Intent;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/service/UmbrellaService;->handleSuccessfulRegistration(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/cisco/umbrella/service/UmbrellaService;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/cisco/umbrella/service/UmbrellaService;->handleFailedRegistration()V

    return-void
.end method

.method static synthetic access$300(Lcom/cisco/umbrella/service/UmbrellaService;Landroid/content/Intent;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/service/UmbrellaService;->getRegistrationData(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/cisco/umbrella/service/UmbrellaService;)Lcom/cisco/umbrella/registration/RegistrationData;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    return-object p0
.end method

.method static synthetic access$500(Lcom/cisco/umbrella/service/UmbrellaService;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/cisco/umbrella/service/UmbrellaService;->cleanUpNICB()V

    return-void
.end method

.method static synthetic access$600(Lcom/cisco/umbrella/service/UmbrellaService;Landroid/content/Intent;)I
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/service/UmbrellaService;->beginService(Landroid/content/Intent;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/cisco/umbrella/service/UmbrellaService;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/cisco/umbrella/service/UmbrellaService;->handleSuccessfulUnmanagedRegistration()V

    return-void
.end method

.method static synthetic access$800(Lcom/cisco/umbrella/service/UmbrellaService;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/cisco/umbrella/service/UmbrellaService;->handleFailedUnmanagedRegistration()V

    return-void
.end method

.method private beginService(Landroid/content/Intent;)I
    .locals 7

    const/4 v0, 0x3

    if-eqz p1, :cond_6

    .line 217
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cisco/umbrella/util/ValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 220
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/service/UmbrellaService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onStartCommand invoked intent is :: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "com.cisco.anyconnect.vpn.android.UMBRELLA_ENROLL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "com.cisco.anyconnect.vpn.android.VPN_SERVICE_START_INTENT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 244
    :pswitch_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "UMBRELLA_ENROLL intent received."

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/cisco/umbrella/service/UmbrellaService;->isServiceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 247
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 248
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "activationURI"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 249
    iput-boolean v5, p0, Lcom/cisco/umbrella/service/UmbrellaService;->isNewUnmanagedRegistration:Z

    .line 250
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/service/UmbrellaService;->handleUnmanagedRegistration(Ljava/lang/String;)V

    goto :goto_1

    .line 227
    :pswitch_1
    iget-object p1, p0, Lcom/cisco/umbrella/service/UmbrellaService;->isServiceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 233
    invoke-static {}, Lcom/cisco/umbrella/util/ConfigHelper;->isUnManagedEnv()Z

    move-result p1

    if-nez p1, :cond_5

    .line 234
    invoke-direct {p0}, Lcom/cisco/umbrella/service/UmbrellaService;->markBootCompleted()V

    .line 235
    iget-object p1, p0, Lcom/cisco/umbrella/service/UmbrellaService;->restrictionsHandlerInstance:Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;

    invoke-interface {p1}, Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;->initialize()V

    .line 236
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Umbrella workflow initiated."

    invoke-static {p1, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 238
    :cond_5
    iput-boolean v4, p0, Lcom/cisco/umbrella/service/UmbrellaService;->isNewUnmanagedRegistration:Z

    const/4 p1, 0x0

    .line 239
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/service/UmbrellaService;->handleUnmanagedRegistration(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x5243ceab -> :sswitch_3
        -0x4cbba006 -> :sswitch_2
        0x2f94f923 -> :sswitch_1
        0x31af1c32 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private checkRegistrationDetail(ZLcom/cisco/umbrella/registration/IRegistrationManager;)V
    .locals 11

    .line 176
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/service/UmbrellaService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkRegistrationDetail invoked, isNewRegistration is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->networkInterceptorCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Lcom/cisco/umbrella/sync/SyncHandler;

    invoke-virtual {p0}, Lcom/cisco/umbrella/service/UmbrellaService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/cisco/umbrella/service/UmbrellaService;->publicNetworkMonitor:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    iget-object v4, p0, Lcom/cisco/umbrella/service/UmbrellaService;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    invoke-direct {v0, v1, v3, p2, v4}, Lcom/cisco/umbrella/sync/SyncHandler;-><init>(Landroid/content/Context;Lcom/cisco/umbrella/network/IPublicNetworkMonitor;Lcom/cisco/umbrella/registration/IRegistrationManager;Lcom/cisco/umbrella/util/ISharedPreferencesController;)V

    iput-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->syncHandler:Lcom/cisco/umbrella/sync/ISyncHandler;

    .line 179
    new-instance v0, Lcom/cisco/umbrella/tnd/TNDHandler;

    invoke-virtual {p0}, Lcom/cisco/umbrella/service/UmbrellaService;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/cisco/umbrella/service/UmbrellaService;->syncHandler:Lcom/cisco/umbrella/sync/ISyncHandler;

    iget-object v8, p0, Lcom/cisco/umbrella/service/UmbrellaService;->publicNetworkMonitor:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    iget-object v10, p0, Lcom/cisco/umbrella/service/UmbrellaService;->restrictionsHandlerInstance:Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;

    move-object v5, v0

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/cisco/umbrella/tnd/TNDHandler;-><init>(Landroid/content/Context;Lcom/cisco/umbrella/sync/ISyncHandler;Lcom/cisco/umbrella/network/IPublicNetworkMonitor;Lcom/cisco/umbrella/registration/IRegistrationManager;Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;)V

    iput-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->tndHandler:Lcom/cisco/umbrella/tnd/ITNDHandler;

    .line 181
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p2, v0, :cond_0

    .line 182
    new-instance p2, Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    invoke-virtual {p0}, Lcom/cisco/umbrella/service/UmbrellaService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/umbrella/service/UmbrellaService;->publicNetworkMonitor:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    iget-object v3, p0, Lcom/cisco/umbrella/service/UmbrellaService;->syncHandler:Lcom/cisco/umbrella/sync/ISyncHandler;

    iget-object v4, p0, Lcom/cisco/umbrella/service/UmbrellaService;->tndHandler:Lcom/cisco/umbrella/tnd/ITNDHandler;

    invoke-direct {p2, v0, v1, v3, v4}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;-><init>(Landroid/content/Context;Lcom/cisco/umbrella/network/IPublicNetworkMonitor;Lcom/cisco/umbrella/sync/ISyncHandler;Lcom/cisco/umbrella/tnd/ITNDHandler;)V

    iput-object p2, p0, Lcom/cisco/umbrella/service/UmbrellaService;->networkInterceptorCB:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    .line 186
    :cond_0
    iget-object p2, p0, Lcom/cisco/umbrella/service/UmbrellaService;->syncHandler:Lcom/cisco/umbrella/sync/ISyncHandler;

    invoke-interface {p2, p1}, Lcom/cisco/umbrella/sync/ISyncHandler;->sync(Z)V

    .line 187
    iget-object p1, p0, Lcom/cisco/umbrella/service/UmbrellaService;->networkInterceptorCB:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    iget-object p2, p0, Lcom/cisco/umbrella/service/UmbrellaService;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {p1, p2}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->initialize(Lcom/cisco/umbrella/registration/RegistrationData;)V

    .line 188
    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object p1

    iget-object p2, p0, Lcom/cisco/umbrella/service/UmbrellaService;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {p2}, Lcom/cisco/umbrella/registration/RegistrationData;->getRegisteredTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cisco/umbrella/service/UmbrellaService;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {p2}, Lcom/cisco/umbrella/registration/RegistrationData;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, p2}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUI(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private cleanUpNICB()V
    .locals 3

    .line 301
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/service/UmbrellaService;->TAG:Ljava/lang/String;

    const-string v2, "cleanUpNICB invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->syncHandler:Lcom/cisco/umbrella/sync/ISyncHandler;

    if-eqz v0, :cond_0

    .line 304
    invoke-interface {v0}, Lcom/cisco/umbrella/sync/ISyncHandler;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 305
    iput-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->syncHandler:Lcom/cisco/umbrella/sync/ISyncHandler;

    .line 307
    iget-object v1, p0, Lcom/cisco/umbrella/service/UmbrellaService;->tndHandler:Lcom/cisco/umbrella/tnd/ITNDHandler;

    if-eqz v1, :cond_1

    .line 308
    invoke-interface {v1}, Lcom/cisco/umbrella/tnd/ITNDHandler;->destroy()V

    .line 309
    :cond_1
    iput-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->tndHandler:Lcom/cisco/umbrella/tnd/ITNDHandler;

    .line 311
    iget-object v1, p0, Lcom/cisco/umbrella/service/UmbrellaService;->networkInterceptorCB:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    if-eqz v1, :cond_2

    .line 312
    invoke-virtual {v1}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->destroy()V

    .line 314
    :cond_2
    iput-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->networkInterceptorCB:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    .line 315
    iget-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->networkInterceptorCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private configureReceivers()V
    .locals 4

    .line 355
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/service/UmbrellaService;->TAG:Ljava/lang/String;

    const-string v2, "configureReceivers invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.cisco.umbrella.android.REGISTRATION_SUCCESSFUL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.cisco.umbrella.android.REGISTRATION_FAILED"

    .line 357
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.cisco.umbrella.android.UMBRELLA_AGENT_UNAVAILABLE"

    .line 358
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.cisco.umbrella.android.UMBRELLA_AGENT_AVAILABLE"

    .line 359
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.cisco.umbrella.android.NO_REGISTRATION_CHANGE"

    .line 360
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.cisco.umbrella.android.USER_DOMAINS_UNAVAILABLE"

    .line 361
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.cisco.umbrella.android.UNMANAGED_REGISTRATION_SUCCESSFUL"

    .line 362
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.cisco.umbrella.android.UNMANAGED_REGISTRATION_FAILURE"

    .line 363
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 365
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e7

    .line 366
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/cisco/umbrella/service/UmbrellaService;->registrationReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.cisco.anyconnect.vpn.android.avf.permission.SEND_UMBRELLA_BROADCAST_PERMISSION"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/cisco/umbrella/service/UmbrellaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private createNotificationForService()Landroid/app/Notification;
    .locals 3

    .line 138
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/service/UmbrellaService;->TAG:Ljava/lang/String;

    const-string v2, "Creating notification for the service"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "default"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Lcom/cisco/umbrella/R$drawable;->notify_idle:I

    .line 140
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 141
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget v1, Lcom/cisco/umbrella/R$string;->umbrella_anyconnect_is_running:I

    .line 142
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, ""

    .line 143
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private getIsNewRegistration(Landroid/content/Intent;)Z
    .locals 5

    .line 192
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/service/UmbrellaService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IsNewRegistration intent is::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "IsNewRegistration"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getRegistrationData(Landroid/content/Intent;)V
    .locals 3

    .line 200
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "RegistrationData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cisco/umbrella/registration/RegistrationData;

    iput-object p1, p0, Lcom/cisco/umbrella/service/UmbrellaService;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    .line 202
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/service/UmbrellaService;->TAG:Ljava/lang/String;

    const-string v2, "registrationData received::"

    invoke-static {p1, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleFailedRegistration()V
    .locals 3

    .line 281
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/service/UmbrellaService;->TAG:Ljava/lang/String;

    const-string v2, "Reg failed."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-direct {p0}, Lcom/cisco/umbrella/service/UmbrellaService;->cleanUpNICB()V

    .line 283
    sget-object v0, Lcom/cisco/umbrella/ui/states/EncryptionState;->OFF:Lcom/cisco/umbrella/ui/states/EncryptionState;

    sget-object v1, Lcom/cisco/umbrella/ui/states/ProtectionState;->NOT_REGISTERED:Lcom/cisco/umbrella/ui/states/ProtectionState;

    invoke-static {v0, v1}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUI(Lcom/cisco/umbrella/ui/states/EncryptionState;Lcom/cisco/umbrella/ui/states/ProtectionState;)V

    return-void
.end method

.method private handleFailedUnmanagedRegistration()V
    .locals 3

    .line 276
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/service/UmbrellaService;->TAG:Ljava/lang/String;

    const-string v2, "Registration failed for Unmanaged device"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, Lcom/cisco/umbrella/service/UmbrellaService;->handleFailedRegistration()V

    return-void
.end method

.method private handleSuccessfulRegistration(Landroid/content/Intent;)V
    .locals 4

    .line 287
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/service/UmbrellaService;->TAG:Ljava/lang/String;

    const-string v2, "Registration success"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/service/UmbrellaService;->getRegistrationData(Landroid/content/Intent;)V

    .line 289
    iget-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    if-nez v0, :cond_0

    .line 290
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RegistrationData received is null"

    invoke-static {p1, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 293
    :cond_0
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/service/UmbrellaService;->getIsNewRegistration(Landroid/content/Intent;)Z

    move-result p1

    .line 295
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "registrationData is not null"

    invoke-static {v0, v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->registrationManager:Lcom/cisco/umbrella/registration/RegistrationManager;

    invoke-direct {p0, p1, v0}, Lcom/cisco/umbrella/service/UmbrellaService;->checkRegistrationDetail(ZLcom/cisco/umbrella/registration/IRegistrationManager;)V

    return-void
.end method

.method private handleSuccessfulUnmanagedRegistration()V
    .locals 3

    .line 270
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/service/UmbrellaService;->TAG:Ljava/lang/String;

    const-string v2, "Registration successful for Unmanaged device"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->unmanagedRegistrationManager:Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->getRegistrationData()Lcom/cisco/umbrella/registration/RegistrationData;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    .line 272
    iget-boolean v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->isNewUnmanagedRegistration:Z

    iget-object v1, p0, Lcom/cisco/umbrella/service/UmbrellaService;->unmanagedRegistrationManager:Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;

    invoke-direct {p0, v0, v1}, Lcom/cisco/umbrella/service/UmbrellaService;->checkRegistrationDetail(ZLcom/cisco/umbrella/registration/IRegistrationManager;)V

    return-void
.end method

.method private handleUnmanagedRegistration(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 260
    invoke-static {v0}, Lcom/cisco/umbrella/ui/UIUpdater;->updateAgentAvailability(Z)V

    .line 261
    sget-object v0, Lcom/cisco/umbrella/ui/states/EncryptionState;->UNKNOWN:Lcom/cisco/umbrella/ui/states/EncryptionState;

    sget-object v1, Lcom/cisco/umbrella/ui/states/ProtectionState;->RESERVED:Lcom/cisco/umbrella/ui/states/ProtectionState;

    invoke-static {v0, v1}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUI(Lcom/cisco/umbrella/ui/states/EncryptionState;Lcom/cisco/umbrella/ui/states/ProtectionState;)V

    .line 262
    invoke-static {p1}, Lcom/cisco/umbrella/util/ValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->unmanagedRegistrationManager:Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->getRegistrationData()Lcom/cisco/umbrella/registration/RegistrationData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/cisco/umbrella/service/UmbrellaService;->handleSuccessfulUnmanagedRegistration()V

    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->unmanagedRegistrationManager:Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;

    invoke-virtual {v0, p1}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->register(Ljava/lang/String;)V

    return-void
.end method

.method private markBootCompleted()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lcom/cisco/umbrella/util/ISharedPreferencesController;->save(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private startForeground()V
    .locals 3

    .line 132
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/service/UmbrellaService;->TAG:Ljava/lang/String;

    const-string v2, "startForeground invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x32

    .line 133
    invoke-direct {p0}, Lcom/cisco/umbrella/service/UmbrellaService;->createNotificationForService()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cisco/umbrella/service/UmbrellaService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 8

    .line 148
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/service/UmbrellaService;->TAG:Ljava/lang/String;

    const-string v2, "Initiating umbrella workflow pre-requisites"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/cisco/umbrella/service/UmbrellaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->Initialize(Landroid/content/Context;)V

    .line 150
    invoke-direct {p0}, Lcom/cisco/umbrella/service/UmbrellaService;->startForeground()V

    .line 152
    invoke-direct {p0}, Lcom/cisco/umbrella/service/UmbrellaService;->configureReceivers()V

    .line 154
    invoke-virtual {p0}, Lcom/cisco/umbrella/service/UmbrellaService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/umbrella/util/ConfigHelper;->loadConfig(Landroid/content/Context;)V

    .line 156
    new-instance v0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    const/16 v1, 0x3e8

    invoke-direct {v0, p0, v1}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->publicNetworkMonitor:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    .line 157
    invoke-virtual {v0}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->start()V

    .line 159
    new-instance v0, Lcom/cisco/umbrella/util/SharedPreferencesController;

    invoke-static {p0}, Lcom/cisco/umbrella/util/Helper;->getStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cisco/umbrella/util/SharedPreferencesController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    .line 161
    invoke-static {}, Lcom/cisco/umbrella/util/ConfigHelper;->isUnManagedEnv()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;

    invoke-virtual {p0}, Lcom/cisco/umbrella/service/UmbrellaService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->restrictionsHandlerInstance:Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;

    .line 163
    new-instance v0, Lcom/cisco/umbrella/registration/RegistrationManager;

    iget-object v4, p0, Lcom/cisco/umbrella/service/UmbrellaService;->restrictionsHandlerInstance:Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;

    invoke-static {}, Lcom/cisco/umbrella/registration/RegistrationHandler;->getInstance()Lcom/cisco/umbrella/registration/RegistrationHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/cisco/umbrella/service/UmbrellaService;->publicNetworkMonitor:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    iget-object v7, p0, Lcom/cisco/umbrella/service/UmbrellaService;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/cisco/umbrella/registration/RegistrationManager;-><init>(Landroid/content/Context;Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;Lcom/cisco/umbrella/registration/RegistrationHandler;Lcom/cisco/umbrella/network/PublicNetworkMonitor;Lcom/cisco/umbrella/util/ISharedPreferencesController;)V

    iput-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->registrationManager:Lcom/cisco/umbrella/registration/RegistrationManager;

    .line 164
    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/RegistrationManager;->start()V

    goto :goto_0

    .line 166
    :cond_0
    new-instance v0, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;

    iget-object v1, p0, Lcom/cisco/umbrella/service/UmbrellaService;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    invoke-static {}, Lcom/cisco/umbrella/registration/RegistrationHandler;->getInstance()Lcom/cisco/umbrella/registration/RegistrationHandler;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cisco/umbrella/service/UmbrellaService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;-><init>(Lcom/cisco/umbrella/util/ISharedPreferencesController;Lcom/cisco/umbrella/registration/IRegistrationHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->unmanagedRegistrationManager:Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;

    .line 169
    :goto_0
    new-instance v0, Lcom/cisco/umbrella/UmbrellaStatsQuery;

    invoke-direct {v0, p0}, Lcom/cisco/umbrella/UmbrellaStatsQuery;-><init>(Landroid/content/Context;)V

    .line 170
    iget-object v1, p0, Lcom/cisco/umbrella/service/UmbrellaService;->publicNetworkMonitor:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-static {v1, v0}, Lcom/cisco/umbrella/ui/UIUpdater;->start(Lcom/cisco/umbrella/network/IPublicNetworkMonitor;Lcom/cisco/umbrella/UmbrellaStatsQuery;)V

    .line 171
    sget-object v0, Lcom/cisco/umbrella/ui/states/EncryptionState;->UNKNOWN:Lcom/cisco/umbrella/ui/states/EncryptionState;

    sget-object v1, Lcom/cisco/umbrella/ui/states/ProtectionState;->RESERVED:Lcom/cisco/umbrella/ui/states/ProtectionState;

    const-string v2, "Not Available"

    invoke-static {v0, v1, v2, v2}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUI(Lcom/cisco/umbrella/ui/states/EncryptionState;Lcom/cisco/umbrella/ui/states/ProtectionState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 325
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/service/UmbrellaService;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 328
    invoke-direct {p0}, Lcom/cisco/umbrella/service/UmbrellaService;->cleanUpNICB()V

    .line 330
    iget-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->registrationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cisco/umbrella/service/UmbrellaService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 332
    iget-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->publicNetworkMonitor:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->publicNetworkMonitor:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    .line 337
    iget-object v1, p0, Lcom/cisco/umbrella/service/UmbrellaService;->restrictionsHandlerInstance:Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;

    if-eqz v1, :cond_1

    .line 338
    invoke-interface {v1}, Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;->destroy()V

    .line 340
    :cond_1
    iput-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->restrictionsHandlerInstance:Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;

    .line 341
    iget-object v1, p0, Lcom/cisco/umbrella/service/UmbrellaService;->isServiceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 343
    iget-object v1, p0, Lcom/cisco/umbrella/service/UmbrellaService;->registrationManager:Lcom/cisco/umbrella/registration/RegistrationManager;

    if-eqz v1, :cond_2

    .line 344
    invoke-virtual {v1}, Lcom/cisco/umbrella/registration/RegistrationManager;->stop()V

    .line 345
    :cond_2
    iput-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->registrationManager:Lcom/cisco/umbrella/registration/RegistrationManager;

    .line 347
    iget-object v1, p0, Lcom/cisco/umbrella/service/UmbrellaService;->unmanagedRegistrationManager:Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;

    if-eqz v1, :cond_3

    .line 348
    invoke-virtual {v1}, Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;->cleanup()V

    .line 349
    :cond_3
    iput-object v0, p0, Lcom/cisco/umbrella/service/UmbrellaService;->unmanagedRegistrationManager:Lcom/cisco/umbrella/registration/UnmanagedRegistrationManager;

    .line 351
    invoke-static {}, Lcom/cisco/umbrella/ui/UIUpdater;->stop()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/service/UmbrellaService;->beginService(Landroid/content/Intent;)I

    move-result p1

    return p1
.end method

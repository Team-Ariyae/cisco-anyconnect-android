.class public Lcom/cisco/umbrella/sync/SyncHandler;
.super Ljava/lang/Object;
.source "SyncHandler.java"

# interfaces
.implements Lcom/cisco/umbrella/sync/ISyncHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/umbrella/sync/SyncHandler$SyncCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncHandler"


# instance fields
.field private context:Landroid/content/Context;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private fibonacciBackOff:Lcom/cisco/umbrella/registration/FibonacciBackOff;

.field private lastSyncTime:Ljava/lang/Long;

.field private publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

.field private publicNetworkMonitorCallback:Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;

.field private registrationManager:Lcom/cisco/umbrella/registration/IRegistrationManager;

.field private sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

.field private singleThreadedScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final subscribers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/cisco/umbrella/sync/SyncHandler$SyncCallback;",
            ">;"
        }
    .end annotation
.end field

.field private syncReceiver:Landroid/content/BroadcastReceiver;

.field private syncResponse:Lcom/cisco/umbrella/sync/SyncResponseData;

.field private syncScheduledFuture:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cisco/umbrella/network/IPublicNetworkMonitor;Lcom/cisco/umbrella/registration/IRegistrationManager;Lcom/cisco/umbrella/util/ISharedPreferencesController;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/cisco/umbrella/sync/SyncHandler$1;

    invoke-direct {v0, p0}, Lcom/cisco/umbrella/sync/SyncHandler$1;-><init>(Lcom/cisco/umbrella/sync/SyncHandler;)V

    iput-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->publicNetworkMonitorCallback:Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;

    .line 87
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->singleThreadedScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->subscribers:Ljava/util/Set;

    .line 89
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 439
    new-instance v0, Lcom/cisco/umbrella/sync/SyncHandler$3;

    invoke-direct {v0, p0}, Lcom/cisco/umbrella/sync/SyncHandler$3;-><init>(Lcom/cisco/umbrella/sync/SyncHandler;)V

    iput-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->syncReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p3

    check-cast v0, Lcom/cisco/umbrella/registration/IRegistrationManager;

    iput-object p3, p0, Lcom/cisco/umbrella/sync/SyncHandler;->registrationManager:Lcom/cisco/umbrella/registration/IRegistrationManager;

    .line 97
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p3, p2

    check-cast p3, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    iput-object p2, p0, Lcom/cisco/umbrella/sync/SyncHandler;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    .line 98
    iput-object p1, p0, Lcom/cisco/umbrella/sync/SyncHandler;->context:Landroid/content/Context;

    .line 99
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p1, p4

    check-cast p1, Lcom/cisco/umbrella/util/ISharedPreferencesController;

    iput-object p4, p0, Lcom/cisco/umbrella/sync/SyncHandler;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    .line 100
    invoke-direct {p0}, Lcom/cisco/umbrella/sync/SyncHandler;->configureReceivers()V

    .line 101
    invoke-direct {p0}, Lcom/cisco/umbrella/sync/SyncHandler;->extractSyncPrefs()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cisco/umbrella/sync/SyncHandler;)Lcom/cisco/umbrella/registration/IRegistrationManager;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->registrationManager:Lcom/cisco/umbrella/registration/IRegistrationManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/cisco/umbrella/sync/SyncHandler;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/cisco/umbrella/sync/SyncHandler;->syncSuccess()V

    return-void
.end method

.method static synthetic access$200(Lcom/cisco/umbrella/sync/SyncHandler;Lcom/cisco/umbrella/registration/RegistrationData;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/sync/SyncHandler;->createSyncRequest(Lcom/cisco/umbrella/registration/RegistrationData;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/cisco/umbrella/sync/SyncHandler;Lorg/json/JSONObject;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/sync/SyncHandler;->syncWithUmbrella(Lorg/json/JSONObject;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/cisco/umbrella/sync/SyncHandler;Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/sync/SyncHandler;->parseResponse(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/cisco/umbrella/sync/SyncHandler;Ljava/lang/String;)Lcom/cisco/umbrella/sync/SyncResponseData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/sync/SyncHandler;->extractSyncResponse(Ljava/lang/String;)Lcom/cisco/umbrella/sync/SyncResponseData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/cisco/umbrella/sync/SyncHandler;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/sync/SyncHandler;->notifySubscribers(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/cisco/umbrella/sync/SyncHandler;Lcom/cisco/umbrella/registration/FibonacciBackOff;)Lcom/cisco/umbrella/registration/FibonacciBackOff;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/cisco/umbrella/sync/SyncHandler;->fibonacciBackOff:Lcom/cisco/umbrella/registration/FibonacciBackOff;

    return-object p1
.end method

.method static synthetic access$800(Lcom/cisco/umbrella/sync/SyncHandler;)Lcom/cisco/umbrella/sync/SyncResponseData;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->syncResponse:Lcom/cisco/umbrella/sync/SyncResponseData;

    return-object p0
.end method

.method static synthetic access$802(Lcom/cisco/umbrella/sync/SyncHandler;Lcom/cisco/umbrella/sync/SyncResponseData;)Lcom/cisco/umbrella/sync/SyncResponseData;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/cisco/umbrella/sync/SyncHandler;->syncResponse:Lcom/cisco/umbrella/sync/SyncResponseData;

    return-object p1
.end method

.method static synthetic access$900(Lcom/cisco/umbrella/sync/SyncHandler;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/sync/SyncHandler;->saveSyncData(Ljava/lang/String;)V

    return-void
.end method

.method private configureReceivers()V
    .locals 5

    .line 454
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    const-string v2, "configureReceivers invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.cisco.umbrella.android.SCHEDULE_SYNC_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lcom/cisco/umbrella/sync/SyncHandler;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cisco/umbrella/sync/SyncHandler;->syncReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.cisco.anyconnect.vpn.android.avf.permission.SEND_UMBRELLA_BROADCAST_PERMISSION"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private createSyncRequest(Lcom/cisco/umbrella/registration/RegistrationData;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 382
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    const-string v2, "createSyncRequest invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "platform"

    .line 384
    invoke-static {v2}, Lcom/cisco/umbrella/util/ConfigHelper;->getRegistrationConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "originTypeName"

    .line 385
    invoke-static {v2}, Lcom/cisco/umbrella/util/ConfigHelper;->getRegistrationConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "upTime"

    .line 386
    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/RegistrationData;->getRegisteredTime()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "hostName"

    .line 387
    invoke-virtual {p1}, Lcom/cisco/umbrella/registration/RegistrationData;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "osVersion"

    .line 388
    invoke-static {p1}, Lcom/cisco/umbrella/util/ConfigHelper;->getRegistrationConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 391
    iget-object v2, p0, Lcom/cisco/umbrella/sync/SyncHandler;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/cisco/umbrella/sync/SyncRequestData$Upgrade;->getCurrentAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "currentVersion"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "status"

    .line 394
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "upgrade"

    .line 395
    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Sync Request body::"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private extractFailClosedOption(Lorg/json/JSONObject;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "failClosedOption"

    .line 341
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    .line 344
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    const-string v2, "Received unexpected value of fail closed option. Taking Fail open as default"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 348
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    if-ne p1, v0, :cond_1

    const-string v0, "Fail Close"

    goto :goto_0

    :cond_1
    const-string v0, "Fail Open"

    :goto_0
    const-string v3, "Value of failClosedOption is::"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private extractNetworkState(Lorg/json/JSONObject;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "networkDisable"

    .line 335
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 336
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Value of networkDisable is::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private extractSyncInterval(Lorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "syncInterval"

    .line 329
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 330
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SyncInterval is::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method private extractSyncPrefs()V
    .locals 5

    const-string v0, "previous sync response :: "

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/cisco/umbrella/sync/SyncHandler;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    const-string v2, "syncResponse"

    const-class v3, Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/cisco/umbrella/util/ISharedPreferencesController;->fetch(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 217
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v3, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, v1}, Lcom/cisco/umbrella/sync/SyncHandler;->extractSyncResponse(Ljava/lang/String;)Lcom/cisco/umbrella/sync/SyncResponseData;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->syncResponse:Lcom/cisco/umbrella/sync/SyncResponseData;

    .line 219
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    const-string v1, "synctime"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Lcom/cisco/umbrella/util/ISharedPreferencesController;->fetch(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->lastSyncTime:Ljava/lang/Long;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 221
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to read sync response. Umbrella sync failed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private extractSyncResponse(Ljava/lang/String;)Lcom/cisco/umbrella/sync/SyncResponseData;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 300
    new-instance p1, Lcom/cisco/umbrella/sync/SyncResponseData;

    invoke-direct {p0, v0}, Lcom/cisco/umbrella/sync/SyncHandler;->extractWhitelistedDomains(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/cisco/umbrella/sync/SyncHandler;->extractSyncInterval(Lorg/json/JSONObject;)J

    move-result-wide v3

    .line 301
    invoke-direct {p0, v0}, Lcom/cisco/umbrella/sync/SyncHandler;->extractNetworkState(Lorg/json/JSONObject;)Z

    move-result v5

    invoke-direct {p0, v0}, Lcom/cisco/umbrella/sync/SyncHandler;->extractignoreVA(Lorg/json/JSONObject;)Z

    move-result v6

    invoke-direct {p0, v0}, Lcom/cisco/umbrella/sync/SyncHandler;->extractFailClosedOption(Lorg/json/JSONObject;)I

    move-result v7

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/cisco/umbrella/sync/SyncResponseData;-><init>(Ljava/util/List;JZZI)V

    return-object p1

    .line 296
    :cond_1
    :goto_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    const-string v2, "Do not have sync response to process whitelisted domains."

    invoke-static {p1, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private extractWhitelistedDomains(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 311
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    const-string v2, "extractWhitelistedDomains invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "whitelist"

    .line 312
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 313
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 315
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "No domains whitelisted"

    invoke-static {p1, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 318
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 320
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    :cond_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v0, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got the whitelisted domains as :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private extractignoreVA(Lorg/json/JSONObject;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "ignoreVA"

    .line 305
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 306
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Value for ignoreVA is::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private notifySubscribers(Z)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->syncResponse:Lcom/cisco/umbrella/sync/SyncResponseData;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/cisco/umbrella/sync/SyncHandler;->syncSuccess()V

    return-void

    :cond_1
    xor-int/2addr p1, v1

    .line 211
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/sync/SyncHandler;->syncFailure(Z)V

    return-void
.end method

.method private parseResponse(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;
    .locals 9

    const-string v0, "Sync Successful :  "

    const-string v1, "Sync Failed :  "

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 356
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    const-string v3, "Do not have sync http response to process it."

    invoke-static {p1, v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 359
    :cond_0
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v4, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    const-string v5, "Parsing sync response"

    invoke-static {v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :try_start_1
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v7, 0xc8

    const-string v8, " - "

    if-ne v6, v7, :cond_2

    .line 365
    :try_start_2
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v6, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v6, v4, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 367
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 369
    :cond_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v0, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    const-string v1, "Returning the http response."

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object p1

    .line 372
    :cond_2
    :try_start_4
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v4, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 374
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 362
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-static {p1, v0}, Lkotlinx/coroutines/CoroutineId$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception p1

    .line 375
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Parse sync response failed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :goto_2
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    const-string v3, "Unable to parse http response and get whitelisted domains."

    invoke-static {p1, v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private removeSyncData()V
    .locals 2

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->syncResponse:Lcom/cisco/umbrella/sync/SyncResponseData;

    .line 227
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    const-string v1, "syncResponse"

    invoke-interface {v0, v1}, Lcom/cisco/umbrella/util/ISharedPreferencesController;->remove(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    const-string v1, "synctime"

    invoke-interface {v0, v1}, Lcom/cisco/umbrella/util/ISharedPreferencesController;->remove(Ljava/lang/String;)V

    return-void
.end method

.method private saveSyncData(Ljava/lang/String;)V
    .locals 4

    .line 232
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Persisting data after Sync success"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    const-string v1, "syncResponse"

    invoke-interface {v0, v1, p1}, Lcom/cisco/umbrella/util/ISharedPreferencesController;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/umbrella/sync/SyncHandler;->lastSyncTime:Ljava/lang/Long;

    .line 235
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    const-string v1, "synctime"

    invoke-interface {v0, v1, p1}, Lcom/cisco/umbrella/util/ISharedPreferencesController;->save(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private scheduleSync()V
    .locals 13

    .line 240
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->syncResponse:Lcom/cisco/umbrella/sync/SyncResponseData;

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/cisco/umbrella/sync/SyncHandler;->syncResponse:Lcom/cisco/umbrella/sync/SyncResponseData;

    invoke-virtual {v1}, Lcom/cisco/umbrella/sync/SyncResponseData;->getSyncInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_0
    move-wide v11, v0

    goto :goto_1

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->fibonacciBackOff:Lcom/cisco/umbrella/registration/FibonacciBackOff;

    if-nez v0, :cond_1

    .line 244
    new-instance v0, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;

    invoke-direct {v0}, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;-><init>()V

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 245
    invoke-virtual {v0, v1, v2, v3}, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;->setFib1(JLjava/util/concurrent/TimeUnit;)Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;

    move-result-object v0

    const-wide/16 v1, 0x8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 246
    invoke-virtual {v0, v1, v2, v3}, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;->setFib2(JLjava/util/concurrent/TimeUnit;)Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;

    move-result-object v0

    const-wide/16 v1, 0x37

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 247
    invoke-virtual {v0, v1, v2, v3}, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;->setMaxFib(JLjava/util/concurrent/TimeUnit;)Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;->build()Lcom/cisco/umbrella/registration/FibonacciBackOff;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->fibonacciBackOff:Lcom/cisco/umbrella/registration/FibonacciBackOff;

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->fibonacciBackOff:Lcom/cisco/umbrella/registration/FibonacciBackOff;

    invoke-virtual {v0}, Lcom/cisco/umbrella/registration/FibonacciBackOff;->nextBackOffMillis()J

    move-result-wide v0

    .line 251
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v3, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ScheduleSync invoked at ::"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " mins"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 254
    const-class v5, Lcom/cisco/umbrella/service/RestrictionsObserverJobService;

    const/16 v6, 0xbbb

    iget-object v7, p0, Lcom/cisco/umbrella/sync/SyncHandler;->context:Landroid/content/Context;

    const-string v8, "com.cisco.umbrella.android.SCHEDULE_SYNC_ACTION"

    move-wide v9, v11

    invoke-static/range {v5 .. v12}, Lcom/cisco/umbrella/util/ServiceHelper;->scheduleJob(Ljava/lang/Class;ILandroid/content/Context;Ljava/lang/String;JJ)V

    :cond_2
    return-void
.end method

.method private declared-synchronized sync(ZJ)V
    .locals 6

    const-string v0, "Sync invoked. Scheduling sync after "

    monitor-enter p0

    .line 106
    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " Mins"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/cisco/umbrella/sync/SyncHandler;->disableSync()V

    .line 108
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->singleThreadedScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/cisco/umbrella/sync/SyncHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/cisco/umbrella/sync/SyncHandler$2;-><init>(Lcom/cisco/umbrella/sync/SyncHandler;Z)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p2, p3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/umbrella/sync/SyncHandler;->syncScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private syncFailure(Z)V
    .locals 3

    .line 190
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    const-string v2, "Informing Subscribers about Sync failure"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Lcom/cisco/umbrella/sync/SyncHandler;->scheduleSync()V

    if-eqz p1, :cond_1

    .line 193
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Sync failure isNewRegistration"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/cisco/umbrella/sync/SyncHandler;->removeSyncData()V

    .line 195
    iget-object p1, p0, Lcom/cisco/umbrella/sync/SyncHandler;->subscribers:Ljava/util/Set;

    monitor-enter p1

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->subscribers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 197
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/umbrella/sync/SyncHandler$SyncCallback;

    invoke-interface {v1}, Lcom/cisco/umbrella/sync/SyncHandler$SyncCallback;->syncFailed()V

    goto :goto_0

    .line 200
    :cond_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 202
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/cisco/umbrella/sync/SyncHandler;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->publicNetworkMonitorCallback:Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;

    invoke-interface {p1, v0}, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;->subscribe(Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;)V

    return-void
.end method

.method private syncSuccess()V
    .locals 5

    .line 176
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    const-string v2, "Informing Subscribers about Sync success"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Lcom/cisco/umbrella/sync/SyncHandler;->scheduleSync()V

    .line 178
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->subscribers:Ljava/util/Set;

    monitor-enter v0

    .line 179
    :try_start_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "run method of syncSuccess invoked"

    invoke-static {v2, v3, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/cisco/umbrella/sync/SyncHandler;->subscribers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 181
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/umbrella/sync/SyncHandler$SyncCallback;

    iget-object v3, p0, Lcom/cisco/umbrella/sync/SyncHandler;->syncResponse:Lcom/cisco/umbrella/sync/SyncResponseData;

    invoke-interface {v2, v3}, Lcom/cisco/umbrella/sync/SyncHandler$SyncCallback;->syncSuccess(Lcom/cisco/umbrella/sync/SyncResponseData;)V

    goto :goto_0

    .line 184
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    iget-object v1, p0, Lcom/cisco/umbrella/sync/SyncHandler;->publicNetworkMonitorCallback:Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;->unSubscribe(Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;)V

    return-void

    :catchall_0
    move-exception v1

    .line 184
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private syncWithUmbrella(Lorg/json/JSONObject;)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/api/client/http/HttpResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    const-string v2, "Syncing with Umbrella cloud"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://sync.hydra.opendns.com/v3/organizations/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/umbrella/sync/SyncHandler;->registrationManager:Lcom/cisco/umbrella/registration/IRegistrationManager;

    invoke-interface {v3}, Lcom/cisco/umbrella/registration/IRegistrationManager;->getRegistrationData()Lcom/cisco/umbrella/registration/RegistrationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cisco/umbrella/registration/RegistrationData;->getOrganizationId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/roamingdevices/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cisco/umbrella/sync/SyncHandler;->registrationManager:Lcom/cisco/umbrella/registration/IRegistrationManager;

    .line 275
    invoke-interface {v3}, Lcom/cisco/umbrella/registration/IRegistrationManager;->getRegistrationData()Lcom/cisco/umbrella/registration/RegistrationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cisco/umbrella/registration/RegistrationData;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/sync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 276
    new-instance v2, Lcom/google/api/client/util/ExponentialBackOff$Builder;

    invoke-direct {v2}, Lcom/google/api/client/util/ExponentialBackOff$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/google/api/client/util/ExponentialBackOff$Builder;->build()Lcom/google/api/client/util/ExponentialBackOff;

    move-result-object v2

    .line 277
    new-instance v3, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v3}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    const-string v4, "application/json"

    .line 278
    invoke-virtual {v3, v4}, Lcom/google/api/client/http/HttpHeaders;->setContentType(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 280
    new-instance v5, Lcom/google/api/client/http/javanet/NetHttpTransport;

    invoke-direct {v5}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    invoke-virtual {v5}, Lcom/google/api/client/http/javanet/NetHttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v5

    .line 281
    new-instance v6, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v6, v0}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/net/URL;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/google/api/client/http/ByteArrayContent;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;

    move-result-object p1

    invoke-virtual {v5, v6, p1}, Lcom/google/api/client/http/HttpRequestFactory;->buildPostRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object p1

    const/16 v0, 0x2710

    .line 283
    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setConnectTimeout(I)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v3}, Lcom/google/api/client/http/HttpRequest;->setHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    const/4 v3, 0x1

    .line 285
    invoke-virtual {v0, v3}, Lcom/google/api/client/http/HttpRequest;->setLoggingEnabled(Z)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    new-instance v4, Lcom/google/api/client/http/HttpBackOffIOExceptionHandler;

    invoke-direct {v4, v2}, Lcom/google/api/client/http/HttpBackOffIOExceptionHandler;-><init>(Lcom/google/api/client/util/BackOff;)V

    .line 286
    invoke-virtual {v0, v4}, Lcom/google/api/client/http/HttpRequest;->setIOExceptionHandler(Lcom/google/api/client/http/HttpIOExceptionHandler;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    new-instance v4, Lcom/google/api/client/http/HttpBackOffUnsuccessfulResponseHandler;

    invoke-direct {v4, v2}, Lcom/google/api/client/http/HttpBackOffUnsuccessfulResponseHandler;-><init>(Lcom/google/api/client/util/BackOff;)V

    .line 287
    invoke-virtual {v0, v4}, Lcom/google/api/client/http/HttpRequest;->setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 288
    invoke-virtual {v0, v3}, Lcom/google/api/client/http/HttpRequest;->setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;

    .line 290
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Starting exponential backoff on sync"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->executeAsync()Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 429
    invoke-virtual {p0}, Lcom/cisco/umbrella/sync/SyncHandler;->disableSync()V

    .line 430
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    if-eqz v0, :cond_0

    .line 431
    iget-object v1, p0, Lcom/cisco/umbrella/sync/SyncHandler;->publicNetworkMonitorCallback:Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;->unSubscribe(Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;)V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 433
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->singleThreadedScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_2

    .line 435
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/cisco/umbrella/sync/SyncHandler;->syncReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public disableSync()V
    .locals 3

    .line 259
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    const-string v2, "Invoked disableSync"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/16 v0, 0xbbb

    .line 261
    iget-object v2, p0, Lcom/cisco/umbrella/sync/SyncHandler;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/cisco/umbrella/util/ServiceHelper;->cancelJob(ILandroid/content/Context;)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->syncScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->syncScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->syncScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 266
    :cond_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "SyncServiceScheduledFuture is null"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->syncScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public get()Lcom/cisco/umbrella/sync/SyncResponseData;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->syncResponse:Lcom/cisco/umbrella/sync/SyncResponseData;

    return-object v0
.end method

.method public subscribe(Lcom/cisco/umbrella/sync/SyncHandler$SyncCallback;)V
    .locals 3

    .line 408
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    const-string v2, "subscribe for Sync - "

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->subscribers:Ljava/util/Set;

    monitor-enter v0

    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/cisco/umbrella/sync/SyncHandler;->subscribers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 414
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized sync(Z)V
    .locals 8

    const-string v0, "Sync invoked. Is New Registration? : "

    monitor-enter p0

    .line 158
    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/sync/SyncHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/cisco/umbrella/sync/SyncHandler;->removeSyncData()V

    :cond_0
    const-wide/16 v0, 0x0

    if-nez p1, :cond_3

    .line 163
    iget-object v3, p0, Lcom/cisco/umbrella/sync/SyncHandler;->syncResponse:Lcom/cisco/umbrella/sync/SyncResponseData;

    if-eqz v3, :cond_3

    .line 164
    iget-object v3, p0, Lcom/cisco/umbrella/sync/SyncHandler;->lastSyncTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/cisco/umbrella/sync/SyncHandler;->syncResponse:Lcom/cisco/umbrella/sync/SyncResponseData;

    invoke-virtual {v6}, Lcom/cisco/umbrella/sync/SyncResponseData;->getSyncInterval()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    add-long/2addr v3, v5

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v5, v3, v0

    if-gez v5, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x5

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long v5, v3, v0

    if-lez v5, :cond_2

    .line 168
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "Scheduled time has not reached yet.Will use the previous sync Data"

    invoke-static {v0, v1, v2, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/cisco/umbrella/sync/SyncHandler;->syncSuccess()V

    :cond_2
    move-wide v0, v3

    .line 172
    :cond_3
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/cisco/umbrella/sync/SyncHandler;->sync(ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unsubscribe(Lcom/cisco/umbrella/sync/SyncHandler$SyncCallback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler;->subscribers:Ljava/util/Set;

    monitor-enter v0

    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/cisco/umbrella/sync/SyncHandler;->subscribers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/cisco/umbrella/sync/SyncHandler;->subscribers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 425
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

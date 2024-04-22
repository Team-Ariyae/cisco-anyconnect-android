.class public Lcom/cisco/umbrella/tnd/TNDHandler;
.super Ljava/lang/Object;
.source "TNDHandler.java"

# interfaces
.implements Lcom/cisco/umbrella/tnd/ITNDHandler;
.implements Lcom/cisco/umbrella/sync/SyncHandler$SyncCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/umbrella/tnd/TNDHandler$PostDeviceIdentityToVA;,
        Lcom/cisco/umbrella/tnd/TNDHandler$TndCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TNDHandler"


# instance fields
.field private final context:Landroid/content/Context;

.field private final executorCompletionService:Ljava/util/concurrent/CompletionService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletionService<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private isIgnoreVA:Z

.field private postToVAExecutorService:Ljava/util/concurrent/ExecutorService;

.field private publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

.field private final publicNetworkMonitorCallback:Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;

.field private registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

.field private final registrationManager:Lcom/cisco/umbrella/registration/IRegistrationManager;

.field private restrictionsHandler:Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;

.field private final restrictionsHandlerCallback:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;

.field private final subscribers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/cisco/umbrella/tnd/TNDHandler$TndCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final syncHandler:Lcom/cisco/umbrella/sync/ISyncHandler;

.field private vaList:[Ljava/lang/String;

.field private vaPostFutures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cisco/umbrella/sync/ISyncHandler;Lcom/cisco/umbrella/network/IPublicNetworkMonitor;Lcom/cisco/umbrella/registration/IRegistrationManager;Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->subscribers:Ljava/util/Set;

    .line 85
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 136
    new-instance v0, Lcom/cisco/umbrella/tnd/TNDHandler$1;

    invoke-direct {v0, p0}, Lcom/cisco/umbrella/tnd/TNDHandler$1;-><init>(Lcom/cisco/umbrella/tnd/TNDHandler;)V

    iput-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->publicNetworkMonitorCallback:Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;

    .line 304
    new-instance v0, Lcom/cisco/umbrella/tnd/TNDHandler$3;

    invoke-direct {v0, p0}, Lcom/cisco/umbrella/tnd/TNDHandler$3;-><init>(Lcom/cisco/umbrella/tnd/TNDHandler;)V

    iput-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->restrictionsHandlerCallback:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;

    .line 103
    iput-object p1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->context:Landroid/content/Context;

    .line 104
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    iput-object p2, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->syncHandler:Lcom/cisco/umbrella/sync/ISyncHandler;

    .line 107
    invoke-interface {p2, p0}, Lcom/cisco/umbrella/sync/ISyncHandler;->subscribe(Lcom/cisco/umbrella/sync/SyncHandler$SyncCallback;)V

    .line 109
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p1, p3

    check-cast p1, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    iput-object p3, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    .line 110
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p1, p4

    check-cast p1, Lcom/cisco/umbrella/registration/IRegistrationManager;

    iput-object p4, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->registrationManager:Lcom/cisco/umbrella/registration/IRegistrationManager;

    .line 111
    invoke-static {}, Lcom/cisco/umbrella/util/ConfigHelper;->isUnManagedEnv()Z

    move-result p1

    if-nez p1, :cond_0

    .line 112
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p1, p5

    check-cast p1, Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;

    iput-object p5, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->restrictionsHandler:Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;

    .line 115
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_1

    .line 116
    invoke-static {}, Ljava/util/concurrent/Executors;->newWorkStealingPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->postToVAExecutorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .line 118
    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->postToVAExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 121
    :goto_0
    new-instance p1, Ljava/util/concurrent/ExecutorCompletionService;

    iget-object p2, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->postToVAExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->executorCompletionService:Ljava/util/concurrent/CompletionService;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/cisco/umbrella/tnd/TNDHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cisco/umbrella/tnd/TNDHandler;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/cisco/umbrella/tnd/TNDHandler;->initializeTND()V

    return-void
.end method

.method static synthetic access$1000(Lcom/cisco/umbrella/tnd/TNDHandler;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/cisco/umbrella/tnd/TNDHandler;->populateVas()V

    return-void
.end method

.method static synthetic access$1100(Lcom/cisco/umbrella/tnd/TNDHandler;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/cisco/umbrella/tnd/TNDHandler;->getDeviceIDEntry()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/cisco/umbrella/tnd/TNDHandler;)Lcom/cisco/umbrella/registration/RegistrationData;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/cisco/umbrella/tnd/TNDHandler;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/cisco/umbrella/tnd/TNDHandler;)Lcom/cisco/umbrella/network/IPublicNetworkMonitor;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    return-object p0
.end method

.method static synthetic access$400(Lcom/cisco/umbrella/tnd/TNDHandler;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->isIgnoreVA:Z

    return p0
.end method

.method static synthetic access$500(Lcom/cisco/umbrella/tnd/TNDHandler;)[Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->vaList:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/cisco/umbrella/tnd/TNDHandler;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->vaList:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/cisco/umbrella/tnd/TNDHandler;Ljava/lang/String;)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/tnd/TNDHandler;->isDeviceBehindVA(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/cisco/umbrella/tnd/TNDHandler;)Z
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/cisco/umbrella/tnd/TNDHandler;->postToVA()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/cisco/umbrella/tnd/TNDHandler;ZZ)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/cisco/umbrella/tnd/TNDHandler;->backoff(ZZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/cisco/umbrella/tnd/TNDHandler;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/cisco/umbrella/tnd/TNDHandler;->continueProtection()V

    return-void
.end method

.method private backoff(ZZ)V
    .locals 5

    .line 181
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/tnd/TNDHandler;->TAG:Ljava/lang/String;

    const-string v2, "Informing Subscribers about tnd success and backoff"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->subscribers:Ljava/util/Set;

    monitor-enter v0

    .line 183
    :try_start_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "run method of tnd success invoked"

    invoke-static {v2, v3, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->subscribers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 185
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/umbrella/tnd/TNDHandler$TndCallback;

    invoke-interface {v2, p1, p2}, Lcom/cisco/umbrella/tnd/TNDHandler$TndCallback;->backoff(ZZ)V

    goto :goto_0

    .line 188
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private continueProtection()V
    .locals 3

    .line 229
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/tnd/TNDHandler;->TAG:Ljava/lang/String;

    const-string v2, "No VA detected in network;continueProtection"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->subscribers:Ljava/util/Set;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->subscribers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 232
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/umbrella/tnd/TNDHandler$TndCallback;

    invoke-interface {v2}, Lcom/cisco/umbrella/tnd/TNDHandler$TndCallback;->continueProtection()V

    goto :goto_0

    .line 235
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private getDeviceIDEntry()Ljava/lang/String;
    .locals 2

    .line 323
    invoke-static {}, Lcom/cisco/umbrella/util/ConfigHelper;->isCros()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "umbrella_gsuite_flag"

    invoke-static {v0}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&DN="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {v1}, Lcom/cisco/umbrella/registration/RegistrationData;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cisco/umbrella/util/Helper;->getMD5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 325
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&device="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {v1}, Lcom/cisco/umbrella/registration/RegistrationData;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializeTND()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cisco/umbrella/tnd/TNDHandler$2;

    invoke-direct {v1, p0}, Lcom/cisco/umbrella/tnd/TNDHandler$2;-><init>(Lcom/cisco/umbrella/tnd/TNDHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isDeviceBehindVA(Ljava/lang/String;)Z
    .locals 3

    .line 175
    invoke-static {}, Lcom/cisco/umbrella/crypto/DNSCryptHelper;->getInstance()Lcom/cisco/umbrella/crypto/DNSCryptHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "orgid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {v2}, Lcom/cisco/umbrella/registration/RegistrationData;->getOrganizationId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/cisco/umbrella/crypto/DNSCryptHelper;->checkIfVAConfigured(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private populateVas()V
    .locals 6

    const-string v0, "umbrella_va_fqdns"

    .line 126
    invoke-static {v0}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v3, Lcom/cisco/umbrella/tnd/TNDHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Vas in restrictions is :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ","

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->vaList:[Ljava/lang/String;

    goto :goto_1

    .line 128
    :cond_1
    :goto_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/tnd/TNDHandler;->TAG:Ljava/lang/String;

    const-string v3, "Empty VA list."

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->vaList:[Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private postToVA()Z
    .locals 10

    const-string v0, "postToVA Exception"

    const-string v1, "postToVA,In finally, Pending futures "

    .line 192
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v3, Lcom/cisco/umbrella/tnd/TNDHandler;->TAG:Ljava/lang/String;

    const-string v4, "postToVA invoked"

    invoke-static {v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->vaPostFutures:Ljava/util/List;

    if-nez v2, :cond_0

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->vaList:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->vaPostFutures:Ljava/util/List;

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->vaList:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 199
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 200
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 203
    :cond_1
    iget-object v7, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->vaPostFutures:Ljava/util/List;

    iget-object v8, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->executorCompletionService:Ljava/util/concurrent/CompletionService;

    new-instance v9, Lcom/cisco/umbrella/tnd/TNDHandler$PostDeviceIdentityToVA;

    invoke-direct {v9, p0, v6}, Lcom/cisco/umbrella/tnd/TNDHandler$PostDeviceIdentityToVA;-><init>(Lcom/cisco/umbrella/tnd/TNDHandler;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const/4 v3, 0x1

    .line 207
    :try_start_0
    iget-object v5, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->vaPostFutures:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 208
    iget-object v5, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->executorCompletionService:Ljava/util/concurrent/CompletionService;

    invoke-interface {v5}, Ljava/util/concurrent/CompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v5

    if-nez v2, :cond_4

    .line 209
    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v2, 0x1

    .line 210
    :goto_4
    iget-object v6, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->vaPostFutures:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 219
    :cond_5
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v4, Lcom/cisco/umbrella/tnd/TNDHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->vaPostFutures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->vaPostFutures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 221
    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v4

    .line 217
    :try_start_1
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v6, Lcom/cisco/umbrella/tnd/TNDHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->vaPostFutures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->vaPostFutures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 221
    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_6

    :catch_1
    move-exception v4

    .line 214
    :try_start_2
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v6, Lcom/cisco/umbrella/tnd/TNDHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->vaPostFutures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->vaPostFutures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 221
    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_7

    :cond_6
    return v2

    .line 219
    :goto_8
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v4, Lcom/cisco/umbrella/tnd/TNDHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->vaPostFutures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->vaPostFutures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 221
    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_9

    .line 223
    :cond_7
    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    if-eqz v0, :cond_0

    .line 266
    iget-object v1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->publicNetworkMonitorCallback:Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;->unSubscribe(Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->syncHandler:Lcom/cisco/umbrella/sync/ISyncHandler;

    if-eqz v0, :cond_1

    .line 268
    invoke-interface {v0, p0}, Lcom/cisco/umbrella/sync/ISyncHandler;->unsubscribe(Lcom/cisco/umbrella/sync/SyncHandler$SyncCallback;)V

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    .line 270
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->postToVAExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    .line 272
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->restrictionsHandler:Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;

    if-eqz v0, :cond_4

    .line 274
    sget-object v1, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;->FQDNS:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;

    invoke-interface {v0, v1}, Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;->unsubscribe(Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;)V

    :cond_4
    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 276
    iput-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    .line 277
    iput-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->postToVAExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public subscribe(Lcom/cisco/umbrella/tnd/TNDHandler$TndCallback;)V
    .locals 3

    .line 240
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/tnd/TNDHandler;->TAG:Ljava/lang/String;

    const-string v2, "subscribe for TND - "

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->subscribers:Ljava/util/Set;

    monitor-enter v0

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->subscribers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public syncFailed()V
    .locals 3

    .line 297
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/tnd/TNDHandler;->TAG:Ljava/lang/String;

    const-string v2, "Sync Failed. Waiting for network change."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    iget-object v1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->publicNetworkMonitorCallback:Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;->unSubscribe(Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;)V

    .line 299
    iget-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->restrictionsHandler:Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;

    if-eqz v0, :cond_0

    .line 300
    sget-object v1, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;->FQDNS:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;

    invoke-interface {v0, v1}, Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;->unsubscribe(Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 301
    invoke-direct {p0, v0, v1}, Lcom/cisco/umbrella/tnd/TNDHandler;->backoff(ZZ)V

    return-void
.end method

.method public syncSuccess(Lcom/cisco/umbrella/sync/SyncResponseData;)V
    .locals 3

    .line 283
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/tnd/TNDHandler;->TAG:Ljava/lang/String;

    const-string v2, "SyncSuccess invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Lcom/cisco/umbrella/sync/SyncResponseData;->getIgnoreVA()Z

    move-result p1

    iput-boolean p1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->isIgnoreVA:Z

    .line 285
    invoke-direct {p0}, Lcom/cisco/umbrella/tnd/TNDHandler;->populateVas()V

    .line 287
    iget-object p1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->registrationManager:Lcom/cisco/umbrella/registration/IRegistrationManager;

    invoke-interface {p1}, Lcom/cisco/umbrella/registration/IRegistrationManager;->getRegistrationData()Lcom/cisco/umbrella/registration/RegistrationData;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    .line 288
    invoke-direct {p0}, Lcom/cisco/umbrella/tnd/TNDHandler;->initializeTND()V

    .line 289
    iget-object p1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    iget-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->publicNetworkMonitorCallback:Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;

    invoke-interface {p1, v0}, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;->subscribe(Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;)V

    .line 290
    iget-object p1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->restrictionsHandler:Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;

    if-eqz p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->restrictionsHandlerCallback:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;

    sget-object v1, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;->FQDNS:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;

    invoke-interface {p1, v0, v1}, Lcom/cisco/umbrella/restrictions/IRestrictionsHandler;->subscribe(Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;Lcom/cisco/umbrella/restrictions/RestrictionsHandler$SubscriberType;)V

    :cond_0
    return-void
.end method

.method public unsubscribe(Lcom/cisco/umbrella/tnd/TNDHandler$TndCallback;)V
    .locals 3

    .line 252
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/tnd/TNDHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unsubscriber for TND - "

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->subscribers:Ljava/util/Set;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/cisco/umbrella/tnd/TNDHandler;->subscribers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 259
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

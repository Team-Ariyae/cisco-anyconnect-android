.class public Lcom/cisco/umbrella/network/NetworkInterceptorCB;
.super Ljava/lang/Object;
.source "NetworkInterceptorCB.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;
.implements Lcom/cisco/umbrella/network/SelectSocketChannel$ISelectSocketChannelCB;
.implements Lcom/cisco/umbrella/tnd/TNDHandler$TndCallback;
.implements Ljava/util/Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkInterceptorCB"

.field private static final UNENCRYPTED_PORT:I = 0x35


# instance fields
.field private checkUmbrellaResolverScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

.field private configureNetworkInterceptorScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

.field private context:Landroid/content/Context;

.field private countVpnRequest:I

.field private dnsCryptFetchCertRetryScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

.field private dnsCryptHelper:Lcom/cisco/umbrella/crypto/DNSCryptHelper;

.field private dnsCryptInitSuccessful:Z

.field private dnsCryptRefreshCertScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

.field private ednsData:Lcom/cisco/umbrella/EDNSData;

.field private isBehindVA:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isPacketReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isUmbrellaResolverReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private networkFlowMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;",
            ">;"
        }
    .end annotation
.end field

.field private networkFlowMapCleaner:Ljava/lang/Runnable;

.field private networkFlowMapCleanerScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

.field private networkInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

.field private publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

.field private publicNetworkMonitorCallback:Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;

.field private registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

.field private selectSocketChannel:Lcom/cisco/umbrella/network/SelectSocketChannel;

.field private singleThreadedScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private syncHandler:Lcom/cisco/umbrella/sync/ISyncHandler;

.field private tndHandler:Lcom/cisco/umbrella/tnd/ITNDHandler;

.field private umbrellaResolverCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cisco/umbrella/network/IPublicNetworkMonitor;Lcom/cisco/umbrella/sync/ISyncHandler;Lcom/cisco/umbrella/tnd/ITNDHandler;)V
    .locals 3

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkFlowMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->ednsData:Lcom/cisco/umbrella/EDNSData;

    .line 69
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->singleThreadedScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isBehindVA:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isPacketReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isUmbrellaResolverReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    iput v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->countVpnRequest:I

    .line 146
    new-instance v0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$1;

    invoke-direct {v0, p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB$1;-><init>(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)V

    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->publicNetworkMonitorCallback:Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;

    .line 564
    new-instance v0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$6;

    invoke-direct {v0, p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB$6;-><init>(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)V

    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkFlowMapCleaner:Ljava/lang/Runnable;

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->context:Landroid/content/Context;

    .line 133
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p1, p2

    check-cast p1, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    iput-object p2, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    .line 134
    iget-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->publicNetworkMonitorCallback:Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;

    invoke-interface {p2, p1}, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;->subscribe(Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;)V

    .line 135
    iput-object p3, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->syncHandler:Lcom/cisco/umbrella/sync/ISyncHandler;

    .line 136
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p1, p4

    check-cast p1, Lcom/cisco/umbrella/tnd/ITNDHandler;

    iput-object p4, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->tndHandler:Lcom/cisco/umbrella/tnd/ITNDHandler;

    .line 137
    invoke-interface {p4, p0}, Lcom/cisco/umbrella/tnd/ITNDHandler;->subscribe(Lcom/cisco/umbrella/tnd/TNDHandler$TndCallback;)V

    .line 139
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    .line 140
    invoke-static {}, Ljava/util/concurrent/Executors;->newWorkStealingPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->mExecutor:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->mExecutor:Ljava/util/concurrent/ExecutorService;

    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isUmbrellaResolverReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)Ljava/util/Map;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkFlowMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->scheduleClosedFlowCleaner()V

    return-void
.end method

.method static synthetic access$1200(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->checkIfUmbrellaResolverReachable()V

    return-void
.end method

.method static synthetic access$1300(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)Z
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isEncryptedPort()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->initializeNI()V

    return-void
.end method

.method static synthetic access$1500(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)Lcom/cisco/umbrella/network/SelectSocketChannel;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->selectSocketChannel:Lcom/cisco/umbrella/network/SelectSocketChannel;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->initSocketChannel()V

    return-void
.end method

.method static synthetic access$202(Lcom/cisco/umbrella/network/NetworkInterceptorCB;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->umbrellaResolverCounter:I

    return p1
.end method

.method static synthetic access$300(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)Lcom/cisco/umbrella/registration/RegistrationData;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    return-object p0
.end method

.method static synthetic access$402(Lcom/cisco/umbrella/network/NetworkInterceptorCB;Lcom/cisco/umbrella/EDNSData;)Lcom/cisco/umbrella/EDNSData;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->ednsData:Lcom/cisco/umbrella/EDNSData;

    return-object p1
.end method

.method static synthetic access$500(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)Lcom/cisco/umbrella/crypto/DNSCryptHelper;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptHelper:Lcom/cisco/umbrella/crypto/DNSCryptHelper;

    return-object p0
.end method

.method static synthetic access$600(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->createNetworkInterceptorConfig()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/cisco/umbrella/network/NetworkInterceptorCB;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->configureNetworkInterceptor(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/cisco/umbrella/network/NetworkInterceptorCB;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->handleInterceptorStateChange(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V

    return-void
.end method

.method static synthetic access$900(Lcom/cisco/umbrella/network/NetworkInterceptorCB;Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->handleUDPFlowData(Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private cancelDnsCryptCertFetch()V
    .locals 3

    .line 181
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    const-string v2, "cancelDnsCryptCertFetch invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptFetchCertRetryScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptFetchCertRetryScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method private cancelUmbrellaResolverScheduler()V
    .locals 3

    .line 620
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    const-string v2, "cancelUmbrellaResolverScheduler invoked."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->checkUmbrellaResolverScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->checkUmbrellaResolverScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method private checkIfUmbrellaResolverReachable()V
    .locals 7

    .line 639
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    const-string v3, "checkIfUmbrellaResolverReachable invoked"

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isEncryptedPort()Z

    move-result v0

    const-wide/16 v3, 0xf

    const/4 v1, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isPacketReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iput v5, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->umbrellaResolverCounter:I

    .line 643
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v3, v4, v0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->scheduleUmbrellaResolverScheduler(JLjava/util/concurrent/TimeUnit;)V

    return-void

    .line 646
    :cond_0
    iget v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->umbrellaResolverCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->umbrellaResolverCounter:I

    const/4 v6, 0x3

    if-lt v0, v6, :cond_4

    .line 650
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptHelper:Lcom/cisco/umbrella/crypto/DNSCryptHelper;

    invoke-virtual {v0}, Lcom/cisco/umbrella/crypto/DNSCryptHelper;->checkIfUmbrellaResolverReachable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 651
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isPacketReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 652
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isUmbrellaResolverReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->initialize()V

    return-void

    .line 657
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v3, v4, v0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->scheduleUmbrellaResolverScheduler(JLjava/util/concurrent/TimeUnit;)V

    return-void

    .line 661
    :cond_2
    iput v5, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->umbrellaResolverCounter:I

    .line 662
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    iget-object v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->syncHandler:Lcom/cisco/umbrella/sync/ISyncHandler;

    invoke-interface {v1}, Lcom/cisco/umbrella/sync/ISyncHandler;->get()Lcom/cisco/umbrella/sync/SyncResponseData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/umbrella/sync/SyncResponseData;->getFailClosedOption()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Umbrella Resolver is not reachable. Device State changed to Fail closed."

    goto :goto_0

    :cond_3
    const-string v1, "Umbrella Resolver is not reachable. Device State changed to Fail open."

    :goto_0
    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isUmbrellaResolverReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 666
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->initialize()V

    const-wide/16 v0, 0x1e

    .line 667
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v1, v2}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->scheduleUmbrellaResolverScheduler(JLjava/util/concurrent/TimeUnit;)V

    return-void

    :cond_4
    const-wide/16 v0, 0x5

    .line 670
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v1, v2}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->scheduleUmbrellaResolverScheduler(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private cleanup()V
    .locals 3

    .line 239
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    const-string v2, "cleanup invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 240
    iput v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->countVpnRequest:I

    .line 242
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->getState()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    move-result-object v0

    sget-object v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->DISABLED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    if-eq v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->disable()V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->configureNetworkInterceptorScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->configureNetworkInterceptorScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->configureNetworkInterceptorScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkFlowMapCleanerScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkFlowMapCleanerScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkFlowMapCleanerScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->selectSocketChannel:Lcom/cisco/umbrella/network/SelectSocketChannel;

    if-eqz v0, :cond_3

    .line 252
    invoke-virtual {v0}, Lcom/cisco/umbrella/network/SelectSocketChannel;->close()V

    .line 254
    :cond_3
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->cancelUmbrellaResolverScheduler()V

    .line 256
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->cancelDnsCryptCertFetch()V

    return-void
.end method

.method private declared-synchronized configureNetworkInterceptor(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;Z)V
    .locals 3

    monitor-enter p0

    .line 470
    :try_start_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    const-string v2, "Configure network interceptor called"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 472
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Network interceptor configuration is missing."

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 473
    iget-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    if-eqz p1, :cond_0

    .line 474
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Disabling network interception"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->disable()V

    .line 476
    sget-object p1, Lcom/cisco/umbrella/ui/states/EncryptionState;->OFF:Lcom/cisco/umbrella/ui/states/EncryptionState;

    sget-object p2, Lcom/cisco/umbrella/ui/states/ProtectionState;->OPEN:Lcom/cisco/umbrella/ui/states/ProtectionState;

    const-string v0, "Not Available"

    const-string v1, "Not Available"

    invoke-static {p1, p2, v0, v1}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUI(Lcom/cisco/umbrella/ui/states/EncryptionState;Lcom/cisco/umbrella/ui/states/ProtectionState;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :cond_0
    monitor-exit p0

    return-void

    .line 482
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-virtual {p2, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->configure(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 483
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Call to configure is successful."

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_2
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Call to configure failed."

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private createDummyVPNConfig(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;)V
    .locals 5

    .line 386
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    const-string v2, "Creating dummy network interceptor config for backoff."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    invoke-interface {v2}, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;->getConnectedNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cisco/umbrella/network/NetworkUtils;->getIpv4DNSServers(Landroid/content/Context;Landroid/net/Network;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 392
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 398
    :cond_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Adding system resolvers."

    invoke-static {v2, v3, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 400
    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->addDnsServer(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    goto :goto_0

    .line 393
    :cond_1
    :goto_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "No valid DNS servers found. Adding public Umbrella resolver."

    invoke-static {v0, v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->getUmbrellaResolverIps()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 395
    invoke-virtual {p1, v3}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->addDnsServer(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private createNetworkConfiguration(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;)V
    .locals 5

    const-string v0, "subnet.ips"

    .line 365
    invoke-static {v0}, Lcom/cisco/umbrella/util/ConfigHelper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/cisco/umbrella/util/Helper;->splitStringOnDelimiter(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isBehindVA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const-string v2, "route.subnet.ip"

    const/16 v3, 0x20

    if-eqz v1, :cond_0

    .line 368
    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-direct {v1, v0, v3}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->addAddress(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    move-result-object p1

    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;

    .line 369
    invoke-static {v2}, Lcom/cisco/umbrella/util/ConfigHelper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->addIncludeRoute(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    goto :goto_1

    .line 370
    :cond_0
    iget-boolean v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptInitSuccessful:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isUmbrellaResolverReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 380
    :cond_1
    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-direct {v1, v0, v3}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->addAddress(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    goto :goto_1

    .line 372
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->syncHandler:Lcom/cisco/umbrella/sync/ISyncHandler;

    invoke-interface {v1}, Lcom/cisco/umbrella/sync/ISyncHandler;->get()Lcom/cisco/umbrella/sync/SyncResponseData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/umbrella/sync/SyncResponseData;->getFailClosedOption()Z

    move-result v1

    if-nez v1, :cond_3

    .line 373
    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-direct {v1, v0, v3}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->addAddress(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    move-result-object p1

    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;

    .line 374
    invoke-static {v2}, Lcom/cisco/umbrella/util/ConfigHelper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->addIncludeRoute(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    goto :goto_1

    .line 376
    :cond_3
    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-direct {v1, v0, v3}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->addAddress(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    :goto_1
    return-void
.end method

.method private createNetworkInterceptorConfig()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;
    .locals 7

    .line 329
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    const-string v2, "Creating network interceptor config"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;-><init>()V

    .line 332
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->standalone()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    move-result-object v2

    sget v3, Lcom/cisco/umbrella/R$string;->umbrella_vpn_session_name:I

    .line 333
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->setSessionName(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    move-result-object v2

    sget v3, Lcom/cisco/umbrella/R$string;->umbrella_vpn_request_reason:I

    .line 334
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->setVpnRequestDescription(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    move-result-object v2

    .line 335
    sget v3, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v2, v3}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->setAllowFamily(I)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    .line 337
    iget-object v3, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    invoke-interface {v4}, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;->getConnectedNetwork()Landroid/net/Network;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cisco/umbrella/network/NetworkUtils;->getSearchDomains(Landroid/content/Context;Landroid/net/Network;)Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-static {v3}, Lcom/cisco/umbrella/util/ValidationHelper;->isNonNullOrNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 339
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "The search domains are "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v2, v3}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->addDnsSearchDomains(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    .line 343
    :cond_0
    iget-object v3, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isBehindVA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptInitSuccessful:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isUmbrellaResolverReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->syncHandler:Lcom/cisco/umbrella/sync/ISyncHandler;

    invoke-interface {v3}, Lcom/cisco/umbrella/sync/ISyncHandler;->get()Lcom/cisco/umbrella/sync/SyncResponseData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cisco/umbrella/sync/SyncResponseData;->getFailClosedOption()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 347
    :cond_2
    invoke-direct {p0, v2}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->setDnsServersAndRoutes(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;)V

    .line 348
    iget-object v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    invoke-interface {v3}, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;->getConnectedNetwork()Landroid/net/Network;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cisco/umbrella/network/NetworkUtils;->getDomains(Landroid/content/Context;Landroid/net/Network;)Ljava/util/Collection;

    move-result-object v1

    iget-object v3, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->syncHandler:Lcom/cisco/umbrella/sync/ISyncHandler;

    invoke-interface {v3}, Lcom/cisco/umbrella/sync/ISyncHandler;->get()Lcom/cisco/umbrella/sync/SyncResponseData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cisco/umbrella/sync/SyncResponseData;->getWhitelist()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->mergeDomains(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 349
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 353
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->setWhitelistedDomains(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;Ljava/util/List;)V

    .line 355
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->remoteAccess()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess$Builder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess$Builder;->setIncludeDns(Z)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess$Builder;

    goto :goto_2

    :cond_4
    :goto_0
    const-string v0, "Do not have any whitelisted domains. Fail Open."

    .line 350
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 344
    :cond_5
    :goto_1
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "Creating dummy VPN"

    invoke-static {v3, v4, v1, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-direct {p0, v2}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->createDummyVPNConfig(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;)V

    .line 357
    :goto_2
    invoke-direct {p0, v2}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->createNetworkConfiguration(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;)V

    .line 359
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->build()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    move-result-object v0

    return-object v0
.end method

.method private getUmbrellaResolverIps()[Ljava/lang/String;
    .locals 2

    const-string v0, "umbrellaResolver.ips"

    .line 430
    invoke-static {v0}, Lcom/cisco/umbrella/util/ConfigHelper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/cisco/umbrella/util/Helper;->splitStringOnDelimiter(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized handleConfiguredState()V
    .locals 7

    const-string v0, "failed to init proxy channel "

    monitor-enter p0

    .line 489
    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    const-string v3, "handleInterceptorStateChange state is CONFIGURED :: "

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :try_start_1
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Scheduling closed flow cleaner"

    invoke-static {v1, v3, v2, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->scheduleClosedFlowCleaner()V

    .line 495
    iget-object v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isBehindVA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    sget-object v1, Lcom/cisco/umbrella/ui/states/EncryptionState;->OFF:Lcom/cisco/umbrella/ui/states/EncryptionState;

    sget-object v3, Lcom/cisco/umbrella/ui/states/ProtectionState;->BEHIND_VA:Lcom/cisco/umbrella/ui/states/ProtectionState;

    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v4

    iget-object v5, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {v5}, Lcom/cisco/umbrella/registration/RegistrationData;->getRegisteredTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    .line 497
    invoke-virtual {v5}, Lcom/cisco/umbrella/registration/RegistrationData;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 496
    invoke-static {v1, v3, v4, v5}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUI(Lcom/cisco/umbrella/ui/states/EncryptionState;Lcom/cisco/umbrella/ui/states/ProtectionState;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->cancelDnsCryptCertFetch()V

    .line 499
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->cancelUmbrellaResolverScheduler()V

    goto :goto_1

    .line 500
    :cond_0
    iget-boolean v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptInitSuccessful:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isUmbrellaResolverReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 504
    :cond_1
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Updating protection status to protected"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    sget-object v1, Lcom/cisco/umbrella/ui/states/EncryptionState;->ENCRYPTED:Lcom/cisco/umbrella/ui/states/EncryptionState;

    sget-object v3, Lcom/cisco/umbrella/ui/states/ProtectionState;->PROTECTED:Lcom/cisco/umbrella/ui/states/ProtectionState;

    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v4

    iget-object v5, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {v5}, Lcom/cisco/umbrella/registration/RegistrationData;->getRegisteredTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {v5}, Lcom/cisco/umbrella/registration/RegistrationData;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUI(Lcom/cisco/umbrella/ui/states/EncryptionState;Lcom/cisco/umbrella/ui/states/ProtectionState;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->cancelUmbrellaResolverScheduler()V

    .line 507
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xf

    invoke-direct {p0, v3, v4, v1}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->scheduleUmbrellaResolverScheduler(JLjava/util/concurrent/TimeUnit;)V

    goto :goto_1

    .line 501
    :cond_2
    :goto_0
    sget-object v1, Lcom/cisco/umbrella/ui/states/EncryptionState;->OFF:Lcom/cisco/umbrella/ui/states/EncryptionState;

    sget-object v3, Lcom/cisco/umbrella/ui/states/ProtectionState;->FAIL_OPEN_CLOSED:Lcom/cisco/umbrella/ui/states/ProtectionState;

    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v4

    iget-object v5, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    invoke-virtual {v5}, Lcom/cisco/umbrella/registration/RegistrationData;->getRegisteredTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    .line 502
    invoke-virtual {v5}, Lcom/cisco/umbrella/registration/RegistrationData;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 501
    invoke-static {v1, v3, v4, v5}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUI(Lcom/cisco/umbrella/ui/states/EncryptionState;Lcom/cisco/umbrella/ui/states/ProtectionState;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :goto_1
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Updating UI with protection state"

    invoke-static {v1, v3, v2, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 511
    :try_start_2
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v3, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->disable()V

    .line 513
    sget-object v0, Lcom/cisco/umbrella/ui/states/EncryptionState;->OFF:Lcom/cisco/umbrella/ui/states/EncryptionState;

    sget-object v1, Lcom/cisco/umbrella/ui/states/ProtectionState;->OPEN:Lcom/cisco/umbrella/ui/states/ProtectionState;

    const-string v2, "Not Available"

    const-string v3, "Not Available"

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUI(Lcom/cisco/umbrella/ui/states/EncryptionState;Lcom/cisco/umbrella/ui/states/ProtectionState;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 515
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleDisabledState()V
    .locals 6

    .line 518
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    const-string v2, "handleDisableState invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    sget-object v0, Lcom/cisco/umbrella/ui/states/EncryptionState;->OFF:Lcom/cisco/umbrella/ui/states/EncryptionState;

    sget-object v2, Lcom/cisco/umbrella/ui/states/ProtectionState;->OPEN:Lcom/cisco/umbrella/ui/states/ProtectionState;

    invoke-static {v0, v2}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUI(Lcom/cisco/umbrella/ui/states/EncryptionState;Lcom/cisco/umbrella/ui/states/ProtectionState;)V

    .line 520
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkFlowMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 523
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->getLastFailureCode()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 525
    sget-object v2, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;->REVOKED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;

    const/4 v3, 0x0

    if-ne v2, v0, :cond_0

    .line 526
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "VPN has been revoked."

    invoke-static {v0, v2, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iput-object v3, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    .line 528
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->initialize()V

    return-void

    .line 531
    :cond_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;->CONFIGURE_FAILURE:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;

    if-ne v2, v0, :cond_2

    .line 532
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "VPN configuration failed"

    invoke-static {v0, v2, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->countVpnRequest:I

    if-nez v0, :cond_1

    .line 534
    iput-object v3, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    .line 535
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->initialize()V

    .line 536
    iget v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->countVpnRequest:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->countVpnRequest:I

    :cond_1
    return-void

    .line 540
    :cond_2
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Network interceptor failed with code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 542
    :cond_3
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Network interceptor failed with null failure code"

    invoke-static {v0, v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized handleInitializedState()V
    .locals 4

    monitor-enter p0

    .line 459
    :try_start_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    const-string v2, "handleInterceptorStateChange state is INITIALIZED :: "

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->createNetworkInterceptorConfig()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->configureNetworkInterceptor(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;Z)V

    goto :goto_0

    .line 463
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Unable to configure NI on Android OS < Lollipop"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->disable()V

    .line 465
    sget-object v0, Lcom/cisco/umbrella/ui/states/EncryptionState;->OFF:Lcom/cisco/umbrella/ui/states/EncryptionState;

    sget-object v1, Lcom/cisco/umbrella/ui/states/ProtectionState;->OPEN:Lcom/cisco/umbrella/ui/states/ProtectionState;

    const-string v2, "Not Available"

    const-string v3, "Not Available"

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUI(Lcom/cisco/umbrella/ui/states/EncryptionState;Lcom/cisco/umbrella/ui/states/ProtectionState;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleInterceptorStateChange(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V
    .locals 1

    .line 318
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->INITIALIZED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    if-ne p1, v0, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->handleInitializedState()V

    goto :goto_0

    .line 320
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->CONFIGURED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    if-ne p1, v0, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->handleConfiguredState()V

    goto :goto_0

    .line 322
    :cond_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->DISABLED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    if-ne p1, v0, :cond_2

    .line 323
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->handleDisabledState()V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleUDPFlowData(Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 592
    invoke-static {p2}, Lcom/cisco/umbrella/util/Helper;->getTransactionId(Ljava/nio/ByteBuffer;)S

    move-result v0

    .line 593
    iget-object v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkFlowMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 596
    iget-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->ednsData:Lcom/cisco/umbrella/EDNSData;

    invoke-virtual {p1, p2}, Lcom/cisco/umbrella/EDNSData;->appendEDNS(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 597
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 599
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    const-string v2, "Creating byte array from edns packet"

    invoke-static {p2, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isEncryptedPort()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 602
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-array v0, p2, [B

    .line 603
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 604
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DNS Query Length::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  ::DNS Query:: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/cisco/umbrella/util/Helper;->byteToHex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v2, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptHelper:Lcom/cisco/umbrella/crypto/DNSCryptHelper;

    invoke-virtual {p1, v0}, Lcom/cisco/umbrella/crypto/DNSCryptHelper;->encrypt([B)[B

    move-result-object p1

    .line 609
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 610
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Received encrypted packet; Sending it to resolver"

    invoke-static {p2, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 612
    :cond_0
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Skipping packet encryption. Sending to resolver"

    invoke-static {p2, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :goto_0
    iget-object p2, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->selectSocketChannel:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-virtual {p2, p1}, Lcom/cisco/umbrella/network/SelectSocketChannel;->writeBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private initSocketChannel()V
    .locals 5

    .line 188
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    const-string v2, "Init SocketChannel"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :try_start_0
    new-instance v0, Lcom/cisco/umbrella/network/SelectSocketChannel;

    iget-object v2, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    const/16 v3, 0x1000

    invoke-direct {v0, v3, p0, v2}, Lcom/cisco/umbrella/network/SelectSocketChannel;-><init>(ILcom/cisco/umbrella/network/SelectSocketChannel$ISelectSocketChannelCB;Lcom/cisco/umbrella/network/IPublicNetworkMonitor;)V

    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->selectSocketChannel:Lcom/cisco/umbrella/network/SelectSocketChannel;

    .line 193
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->getUmbrellaResolverIps()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptHelper:Lcom/cisco/umbrella/crypto/DNSCryptHelper;

    invoke-virtual {v3}, Lcom/cisco/umbrella/crypto/DNSCryptHelper;->getActivePort()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/cisco/umbrella/network/SelectSocketChannel;->initialize(Ljava/net/InetAddress;I)V

    .line 194
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Completed configuration of socket channel."

    invoke-static {v0, v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 196
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to init proxy channel "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized initialize()V
    .locals 5

    const-string v0, "initialize invoked and the state is "

    monitor-enter p0

    .line 207
    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    if-nez v0, :cond_0

    const-string v0, "DISABLED"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->getState()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->getState()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    move-result-object v0

    sget-object v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->DISABLED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->configureNetworkInterceptorScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->configureNetworkInterceptorScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 220
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Cancelling existing reconfiguration request"

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->configureNetworkInterceptorScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->getState()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    move-result-object v0

    sget-object v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->CONFIGURED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    if-ne v0, v1, :cond_5

    .line 225
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Scheduling reconfiguration request for 3s from now"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->singleThreadedScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB$3;

    invoke-direct {v1, p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB$3;-><init>(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->configureNetworkInterceptorScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_2

    .line 209
    :cond_3
    :goto_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Initializing network interceptor"

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    iget-object v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;-><init>(Landroid/content/Context;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;)V

    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    .line 212
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->initSocketChannel()V

    .line 213
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->initialize()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Successfully inited network interceptor."

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 216
    :cond_4
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Unable to init network interceptor."

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initializeNI()V
    .locals 4

    .line 746
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initializeNI invoked"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptInitSuccessful:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    invoke-interface {v0}, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    iget-boolean v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptInitSuccessful:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->initializeUmbrellaNative()V

    .line 749
    :cond_0
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->initialize()V

    :cond_1
    return-void
.end method

.method private initializeUmbrellaNative()V
    .locals 11

    .line 160
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    const-string v2, "Initializing Umbrella Native"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/cisco/umbrella/crypto/DNSCryptHelper;->getInstance()Lcom/cisco/umbrella/crypto/DNSCryptHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptHelper:Lcom/cisco/umbrella/crypto/DNSCryptHelper;

    .line 163
    invoke-virtual {v0, p0}, Lcom/cisco/umbrella/crypto/DNSCryptHelper;->addObserver(Ljava/util/Observer;)V

    .line 164
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptHelper:Lcom/cisco/umbrella/crypto/DNSCryptHelper;

    invoke-virtual {v0}, Lcom/cisco/umbrella/crypto/DNSCryptHelper;->initDNSCrypt()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptInitSuccessful:Z

    .line 166
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Completed initing DNSCrypt. Status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptInitSuccessful:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-boolean v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptInitSuccessful:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->cancelDnsCryptCertFetch()V

    .line 170
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Scheduling refresh certs to run 30 min from now."

    invoke-static {v0, v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v4, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->singleThreadedScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lcom/cisco/umbrella/network/NetworkInterceptorCB$2;

    invoke-direct {v5, p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB$2;-><init>(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)V

    const-wide/16 v6, 0x1e

    const-wide/16 v8, 0x1e

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptRefreshCertScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private isEncryptedPort()Z
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptHelper:Lcom/cisco/umbrella/crypto/DNSCryptHelper;

    invoke-virtual {v0}, Lcom/cisco/umbrella/crypto/DNSCryptHelper;->getActivePort()I

    move-result v0

    const/16 v1, 0x35

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private mergeDomains(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 443
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    const-string v2, "Merging domains from network interface and sync response"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 446
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Sync response is empty and hence not merging whitelisted domains"

    invoke-static {p1, p2, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 449
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 451
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 453
    :cond_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Merging sync white liisted domains"

    invoke-static {p1, v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private scheduleClosedFlowCleaner()V
    .locals 6

    .line 583
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    const-string v3, "Scheduling network flow map cleaner"

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkFlowMapCleanerScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkFlowMapCleanerScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkFlowMapCleanerScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->singleThreadedScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkFlowMapCleaner:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkFlowMapCleanerScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 588
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Scheduled network flow map cleaner"

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private scheduleUmbrellaResolverScheduler(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 628
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->singleThreadedScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/cisco/umbrella/network/NetworkInterceptorCB$7;-><init>(Lcom/cisco/umbrella/network/NetworkInterceptorCB;JLjava/util/concurrent/TimeUnit;)V

    invoke-interface {v0, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->checkUmbrellaResolverScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private setDnsServersAndRoutes(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;)V
    .locals 7

    .line 408
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    const-string v2, "Configuring DNS servers"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    invoke-interface {v2}, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;->getConnectedNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cisco/umbrella/network/NetworkUtils;->getIpv4DNSServers(Landroid/content/Context;Landroid/net/Network;)Ljava/util/List;

    move-result-object v0

    const/16 v2, 0x20

    if-eqz v0, :cond_1

    .line 412
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 420
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 422
    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->addDnsServer(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    move-result-object v3

    new-instance v4, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;

    invoke-direct {v4, v1, v2}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;-><init>(Ljava/lang/String;I)V

    .line 423
    invoke-virtual {v3, v4}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->addIncludeRoute(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    goto :goto_0

    .line 413
    :cond_1
    :goto_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "IPv4 DNS Server Unavailable"

    invoke-static {v0, v3, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->getUmbrellaResolverIps()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 416
    invoke-virtual {p1, v4}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->addDnsServer(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    move-result-object v5

    new-instance v6, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;

    invoke-direct {v6, v4, v2}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;-><init>(Ljava/lang/String;I)V

    .line 417
    invoke-virtual {v5, v6}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->addIncludeRoute(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private setWhitelistedDomains(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 434
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    const-string v2, "Configuring whitelisting"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 436
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting whitelisted domains: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->excludeDnsQueries(Ljava/util/List;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public backoff(ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 711
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->cleanup()V

    .line 712
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object p2, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    const-string v0, "Backoff. Disabling NI."

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    sget-object p1, Lcom/cisco/umbrella/ui/states/EncryptionState;->OFF:Lcom/cisco/umbrella/ui/states/EncryptionState;

    sget-object p2, Lcom/cisco/umbrella/ui/states/ProtectionState;->OPEN:Lcom/cisco/umbrella/ui/states/ProtectionState;

    const-string v0, "Not Available"

    invoke-static {p1, p2, v0, v0}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUI(Lcom/cisco/umbrella/ui/states/EncryptionState;Lcom/cisco/umbrella/ui/states/ProtectionState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 715
    iget-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isBehindVA:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 716
    iget-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    invoke-interface {p1}, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;->isOnline()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->initialize()V

    .line 717
    :cond_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object p2, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    const-string v0, "Backoff. Network is behind VA."

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public continueProtection()V
    .locals 8

    .line 725
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Continue Protection  - isOnline - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    invoke-interface {v3}, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;->isOnline()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isBehindVA:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 728
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->cancelDnsCryptCertFetch()V

    .line 730
    iget-boolean v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptInitSuccessful:Z

    if-nez v0, :cond_0

    .line 731
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->cancelUmbrellaResolverScheduler()V

    .line 732
    iget-object v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->singleThreadedScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/cisco/umbrella/network/NetworkInterceptorCB$9;

    invoke-direct {v2, p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB$9;-><init>(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptFetchCertRetryScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 741
    :cond_0
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->initializeNI()V

    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 261
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    const-string v2, "destroy invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->cleanup()V

    .line 264
    sget-object v0, Lcom/cisco/umbrella/ui/states/EncryptionState;->OFF:Lcom/cisco/umbrella/ui/states/EncryptionState;

    sget-object v1, Lcom/cisco/umbrella/ui/states/ProtectionState;->OPEN:Lcom/cisco/umbrella/ui/states/ProtectionState;

    const-string v2, "Not Available"

    invoke-static {v0, v1, v2, v2}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUI(Lcom/cisco/umbrella/ui/states/EncryptionState;Lcom/cisco/umbrella/ui/states/ProtectionState;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptRefreshCertScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptRefreshCertScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptRefreshCertScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->singleThreadedScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 269
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->tndHandler:Lcom/cisco/umbrella/tnd/ITNDHandler;

    invoke-interface {v0, p0}, Lcom/cisco/umbrella/tnd/ITNDHandler;->unsubscribe(Lcom/cisco/umbrella/tnd/TNDHandler$TndCallback;)V

    .line 272
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    if-eqz v0, :cond_2

    .line 273
    iget-object v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->publicNetworkMonitorCallback:Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;->unSubscribe(Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;)V

    :cond_2
    const/4 v0, 0x0

    .line 274
    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    .line 276
    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->configureNetworkInterceptorScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 277
    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->networkFlowMapCleanerScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 278
    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptRefreshCertScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 279
    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->selectSocketChannel:Lcom/cisco/umbrella/network/SelectSocketChannel;

    .line 280
    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->singleThreadedScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 282
    iget-object v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptHelper:Lcom/cisco/umbrella/crypto/DNSCryptHelper;

    if-eqz v1, :cond_3

    .line 283
    invoke-virtual {v1, p0}, Lcom/cisco/umbrella/crypto/DNSCryptHelper;->deleteObserver(Ljava/util/Observer;)V

    .line 284
    iget-object v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptHelper:Lcom/cisco/umbrella/crypto/DNSCryptHelper;

    invoke-virtual {v1}, Lcom/cisco/umbrella/crypto/DNSCryptHelper;->cleanUp()V

    .line 287
    :cond_3
    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptHelper:Lcom/cisco/umbrella/crypto/DNSCryptHelper;

    .line 288
    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->syncHandler:Lcom/cisco/umbrella/sync/ISyncHandler;

    .line 289
    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->tndHandler:Lcom/cisco/umbrella/tnd/ITNDHandler;

    return-void
.end method

.method public handleFlowClosed(Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;)V
    .locals 0

    return-void
.end method

.method public handleFlowData(Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 549
    iget-boolean v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->dnsCryptInitSuccessful:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isUmbrellaResolverReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->syncHandler:Lcom/cisco/umbrella/sync/ISyncHandler;

    invoke-interface {v0}, Lcom/cisco/umbrella/sync/ISyncHandler;->get()Lcom/cisco/umbrella/sync/SyncResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/umbrella/sync/SyncResponseData;->getFailClosedOption()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->publicNetworkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    invoke-interface {v0}, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->getProtocol()Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    move-result-object v0

    sget-object v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;->UDP:Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->selectSocketChannel:Lcom/cisco/umbrella/network/SelectSocketChannel;

    invoke-virtual {v0}, Lcom/cisco/umbrella/network/SelectSocketChannel;->getIsReconnecting()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 555
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/cisco/umbrella/network/NetworkInterceptorCB$5;-><init>(Lcom/cisco/umbrella/network/NetworkInterceptorCB;Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;Ljava/nio/ByteBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    return-void
.end method

.method public handleStateChange(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V
    .locals 4

    .line 299
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleStateChange is invoked::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "::"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$4;

    invoke-direct {v0, p0, p2}, Lcom/cisco/umbrella/network/NetworkInterceptorCB$4;-><init>(Lcom/cisco/umbrella/network/NetworkInterceptorCB;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public initialize(Lcom/cisco/umbrella/registration/RegistrationData;)V
    .locals 3

    .line 201
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->TAG:Ljava/lang/String;

    const-string v2, "initialize invoked with registration data "

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iput-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->registrationData:Lcom/cisco/umbrella/registration/RegistrationData;

    .line 203
    new-instance v0, Lcom/cisco/umbrella/EDNSData;

    invoke-direct {v0, p1}, Lcom/cisco/umbrella/EDNSData;-><init>(Lcom/cisco/umbrella/registration/RegistrationData;)V

    iput-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->ednsData:Lcom/cisco/umbrella/EDNSData;

    return-void
.end method

.method public onDataReceived([B)V
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isPacketReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 681
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->isUmbrellaResolverReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 683
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cisco/umbrella/network/NetworkInterceptorCB$8;

    invoke-direct {v1, p0, p1}, Lcom/cisco/umbrella/network/NetworkInterceptorCB$8;-><init>(Lcom/cisco/umbrella/network/NetworkInterceptorCB;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 755
    iget-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/cisco/umbrella/network/NetworkInterceptorCB$10;

    invoke-direct {p2, p0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB$10;-><init>(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

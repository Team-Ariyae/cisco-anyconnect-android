.class public final Lcom/cisco/umbrella/ui/UIUpdater;
.super Ljava/lang/Object;
.source "UIUpdater.java"


# static fields
.field private static androidID:Ljava/lang/String;

.field private static encryptionState:Lcom/cisco/umbrella/ui/states/EncryptionState;

.field private static environment:Lcom/cisco/umbrella/ui/states/EnvironmentState;

.field private static isAgentAvailable:Z

.field private static isInProgress:Z

.field private static lastConnectedTime:Ljava/lang/String;

.field private static networkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

.field private static protectionState:Lcom/cisco/umbrella/ui/states/ProtectionState;

.field private static singleThreadedScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private static singletonInstance:Lcom/cisco/umbrella/ui/UIUpdater;

.field private static statsQuery:Lcom/cisco/umbrella/UmbrellaStatsQuery;

.field private static uiUpdateScheduledFuture:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/cisco/umbrella/ui/UIUpdater;->singleThreadedScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    sget-object v0, Lcom/cisco/umbrella/ui/states/EncryptionState;->UNKNOWN:Lcom/cisco/umbrella/ui/states/EncryptionState;

    sput-object v0, Lcom/cisco/umbrella/ui/UIUpdater;->encryptionState:Lcom/cisco/umbrella/ui/states/EncryptionState;

    .line 28
    sget-object v0, Lcom/cisco/umbrella/ui/states/ProtectionState;->RESERVED:Lcom/cisco/umbrella/ui/states/ProtectionState;

    sput-object v0, Lcom/cisco/umbrella/ui/UIUpdater;->protectionState:Lcom/cisco/umbrella/ui/states/ProtectionState;

    const-string v0, "Not Available"

    .line 29
    sput-object v0, Lcom/cisco/umbrella/ui/UIUpdater;->lastConnectedTime:Ljava/lang/String;

    .line 30
    sput-object v0, Lcom/cisco/umbrella/ui/UIUpdater;->androidID:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Lcom/cisco/umbrella/ui/UIUpdater;->isInProgress:Z

    .line 34
    sput-boolean v0, Lcom/cisco/umbrella/ui/UIUpdater;->isAgentAvailable:Z

    return-void
.end method

.method private constructor <init>(Lcom/cisco/umbrella/network/IPublicNetworkMonitor;Lcom/cisco/umbrella/UmbrellaStatsQuery;)V
    .locals 7

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sput-object p1, Lcom/cisco/umbrella/ui/UIUpdater;->networkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    .line 39
    sput-object p2, Lcom/cisco/umbrella/ui/UIUpdater;->statsQuery:Lcom/cisco/umbrella/UmbrellaStatsQuery;

    .line 41
    invoke-static {}, Lcom/cisco/umbrella/util/ConfigHelper;->isUnManagedEnv()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/cisco/umbrella/ui/states/EnvironmentState;->UNMANAGED:Lcom/cisco/umbrella/ui/states/EnvironmentState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/cisco/umbrella/ui/states/EnvironmentState;->MANAGED:Lcom/cisco/umbrella/ui/states/EnvironmentState;

    :goto_0
    sput-object p1, Lcom/cisco/umbrella/ui/UIUpdater;->environment:Lcom/cisco/umbrella/ui/states/EnvironmentState;

    .line 42
    sget-object p2, Lcom/cisco/umbrella/ui/UIUpdater;->statsQuery:Lcom/cisco/umbrella/UmbrellaStatsQuery;

    invoke-virtual {p1}, Lcom/cisco/umbrella/ui/states/EnvironmentState;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->updateEnvironment(Ljava/lang/String;)Z

    .line 44
    sget-object v0, Lcom/cisco/umbrella/ui/UIUpdater;->singleThreadedScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/cisco/umbrella/ui/UIUpdater$1;

    invoke-direct {v1, p0}, Lcom/cisco/umbrella/ui/UIUpdater$1;-><init>(Lcom/cisco/umbrella/ui/UIUpdater;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    sput-object p1, Lcom/cisco/umbrella/ui/UIUpdater;->uiUpdateScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 22
    invoke-static {}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUIStats()V

    return-void
.end method

.method public static declared-synchronized start(Lcom/cisco/umbrella/network/IPublicNetworkMonitor;Lcom/cisco/umbrella/UmbrellaStatsQuery;)V
    .locals 2

    const-class v0, Lcom/cisco/umbrella/ui/UIUpdater;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/cisco/umbrella/ui/UIUpdater;->singletonInstance:Lcom/cisco/umbrella/ui/UIUpdater;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/cisco/umbrella/ui/UIUpdater;

    invoke-direct {v1, p0, p1}, Lcom/cisco/umbrella/ui/UIUpdater;-><init>(Lcom/cisco/umbrella/network/IPublicNetworkMonitor;Lcom/cisco/umbrella/UmbrellaStatsQuery;)V

    sput-object v1, Lcom/cisco/umbrella/ui/UIUpdater;->singletonInstance:Lcom/cisco/umbrella/ui/UIUpdater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized stop()V
    .locals 3

    const-class v0, Lcom/cisco/umbrella/ui/UIUpdater;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/cisco/umbrella/ui/UIUpdater;->uiUpdateScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/cisco/umbrella/ui/UIUpdater;->uiUpdateScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    sget-object v1, Lcom/cisco/umbrella/ui/UIUpdater;->uiUpdateScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    const/4 v1, 0x0

    .line 75
    sput-object v1, Lcom/cisco/umbrella/ui/UIUpdater;->uiUpdateScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 76
    sput-object v1, Lcom/cisco/umbrella/ui/UIUpdater;->singletonInstance:Lcom/cisco/umbrella/ui/UIUpdater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static updateAgentAvailability(Z)V
    .locals 0

    .line 105
    sput-boolean p0, Lcom/cisco/umbrella/ui/UIUpdater;->isAgentAvailable:Z

    .line 106
    invoke-static {}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUIStats()V

    return-void
.end method

.method public static updateUI(Lcom/cisco/umbrella/ui/states/EncryptionState;Lcom/cisco/umbrella/ui/states/ProtectionState;)V
    .locals 1

    .line 80
    sget-object v0, Lcom/cisco/umbrella/ui/states/ProtectionState;->RESERVED:Lcom/cisco/umbrella/ui/states/ProtectionState;

    if-eq p1, v0, :cond_0

    .line 81
    sput-object p1, Lcom/cisco/umbrella/ui/UIUpdater;->protectionState:Lcom/cisco/umbrella/ui/states/ProtectionState;

    .line 82
    sput-object p0, Lcom/cisco/umbrella/ui/UIUpdater;->encryptionState:Lcom/cisco/umbrella/ui/states/EncryptionState;

    const/4 p0, 0x0

    .line 84
    sput-boolean p0, Lcom/cisco/umbrella/ui/UIUpdater;->isInProgress:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 86
    sput-boolean p0, Lcom/cisco/umbrella/ui/UIUpdater;->isInProgress:Z

    .line 88
    :goto_0
    invoke-static {}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUIStats()V

    return-void
.end method

.method public static updateUI(Lcom/cisco/umbrella/ui/states/EncryptionState;Lcom/cisco/umbrella/ui/states/ProtectionState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Not Available"

    if-nez p2, :cond_0

    move-object p2, v0

    .line 92
    :cond_0
    sput-object p2, Lcom/cisco/umbrella/ui/UIUpdater;->lastConnectedTime:Ljava/lang/String;

    if-nez p3, :cond_1

    move-object p3, v0

    .line 93
    :cond_1
    sput-object p3, Lcom/cisco/umbrella/ui/UIUpdater;->androidID:Ljava/lang/String;

    .line 94
    invoke-static {p0, p1}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUI(Lcom/cisco/umbrella/ui/states/EncryptionState;Lcom/cisco/umbrella/ui/states/ProtectionState;)V

    return-void
.end method

.method public static updateUI(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 98
    sput-boolean p0, Lcom/cisco/umbrella/ui/UIUpdater;->isInProgress:Z

    .line 99
    sput-object p1, Lcom/cisco/umbrella/ui/UIUpdater;->lastConnectedTime:Ljava/lang/String;

    .line 100
    sput-object p2, Lcom/cisco/umbrella/ui/UIUpdater;->androidID:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/cisco/umbrella/ui/UIUpdater;->updateUIStats()V

    return-void
.end method

.method private static updateUIStats()V
    .locals 3

    .line 53
    sget-object v0, Lcom/cisco/umbrella/ui/UIUpdater;->statsQuery:Lcom/cisco/umbrella/UmbrellaStatsQuery;

    sget-boolean v1, Lcom/cisco/umbrella/ui/UIUpdater;->isAgentAvailable:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/cisco/umbrella/ui/states/AgentState;->OK:Lcom/cisco/umbrella/ui/states/AgentState;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/cisco/umbrella/ui/states/AgentState;->NO_ORGINFO:Lcom/cisco/umbrella/ui/states/AgentState;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->updateAgentStatus(Lcom/cisco/umbrella/ui/states/AgentState;)Z

    .line 54
    sget-boolean v0, Lcom/cisco/umbrella/ui/UIUpdater;->isAgentAvailable:Z

    if-nez v0, :cond_1

    return-void

    .line 57
    :cond_1
    sget-object v0, Lcom/cisco/umbrella/ui/UIUpdater;->networkMonitor:Lcom/cisco/umbrella/network/IPublicNetworkMonitor;

    invoke-interface {v0}, Lcom/cisco/umbrella/network/IPublicNetworkMonitor;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    sget-object v0, Lcom/cisco/umbrella/ui/UIUpdater;->statsQuery:Lcom/cisco/umbrella/UmbrellaStatsQuery;

    sget-boolean v1, Lcom/cisco/umbrella/ui/UIUpdater;->isInProgress:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/cisco/umbrella/ui/states/EncryptionState;->UNKNOWN:Lcom/cisco/umbrella/ui/states/EncryptionState;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/cisco/umbrella/ui/UIUpdater;->encryptionState:Lcom/cisco/umbrella/ui/states/EncryptionState;

    :goto_1
    sget-boolean v2, Lcom/cisco/umbrella/ui/UIUpdater;->isInProgress:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/cisco/umbrella/ui/states/ProtectionState;->RESERVED:Lcom/cisco/umbrella/ui/states/ProtectionState;

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/cisco/umbrella/ui/UIUpdater;->protectionState:Lcom/cisco/umbrella/ui/states/ProtectionState;

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->updateUIStats(Lcom/cisco/umbrella/ui/states/EncryptionState;Lcom/cisco/umbrella/ui/states/ProtectionState;)Z

    goto :goto_3

    .line 60
    :cond_4
    sget-object v0, Lcom/cisco/umbrella/ui/UIUpdater;->statsQuery:Lcom/cisco/umbrella/UmbrellaStatsQuery;

    sget-object v1, Lcom/cisco/umbrella/ui/states/EncryptionState;->OFF:Lcom/cisco/umbrella/ui/states/EncryptionState;

    sget-object v2, Lcom/cisco/umbrella/ui/states/ProtectionState;->OPEN:Lcom/cisco/umbrella/ui/states/ProtectionState;

    invoke-virtual {v0, v1, v2}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->updateUIStats(Lcom/cisco/umbrella/ui/states/EncryptionState;Lcom/cisco/umbrella/ui/states/ProtectionState;)Z

    .line 62
    :goto_3
    sget-object v0, Lcom/cisco/umbrella/ui/UIUpdater;->statsQuery:Lcom/cisco/umbrella/UmbrellaStatsQuery;

    sget-object v1, Lcom/cisco/umbrella/ui/UIUpdater;->lastConnectedTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->updateLastConnectedTime(Ljava/lang/String;)Z

    .line 63
    sget-object v0, Lcom/cisco/umbrella/ui/UIUpdater;->statsQuery:Lcom/cisco/umbrella/UmbrellaStatsQuery;

    sget-object v1, Lcom/cisco/umbrella/ui/UIUpdater;->androidID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->updateAndroidID(Ljava/lang/String;)Z

    return-void
.end method

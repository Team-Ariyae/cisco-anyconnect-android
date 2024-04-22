.class public Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;
.super Landroid/app/Service;
.source "VpnAgentService.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mNetworkBinder:Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;

.field private mServiceImpl:Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService$Stub;

.field private mVpnAgent:Lcom/cisco/anyconnect/vpn/agent/VpnAgent;


# direct methods
.method static bridge synthetic -$$Nest$mhandleStartAgent(Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;->handleStartAgent()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleStopAgent(Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;->handleStopAgent()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;->mHandler:Landroid/os/Handler;

    .line 27
    new-instance v0, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService$1;-><init>(Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;->mServiceImpl:Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService$Stub;

    return-void
.end method

.method private handleStartAgent()Z
    .locals 2

    const-string v0, "Starting VpnAgent"

    .line 63
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;->mVpnAgent:Lcom/cisco/anyconnect/vpn/agent/VpnAgent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/agent/VpnAgent;->start(Z)Z

    move-result v0

    return v0
.end method

.method private handleStopAgent()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;->mVpnAgent:Lcom/cisco/anyconnect/vpn/agent/VpnAgent;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/agent/VpnAgent;->stop()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;->mServiceImpl:Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService$Stub;

    return-object p1
.end method

.method public declared-synchronized onCreate()V
    .locals 2

    monitor-enter p0

    .line 44
    :try_start_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 45
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;

    const-string v1, "VpnAgentService"

    invoke-direct {v0, v1, p0}, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;->mNetworkBinder:Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;

    .line 46
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->start()V

    .line 47
    new-instance v0, Lcom/cisco/anyconnect/vpn/agent/VpnAgent;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/agent/VpnAgent;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;->mVpnAgent:Lcom/cisco/anyconnect/vpn/agent/VpnAgent;

    .line 48
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;->handleStartAgent()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/process/ACAndroidEnv;->SetSNAKEnv(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;->mVpnAgent:Lcom/cisco/anyconnect/vpn/agent/VpnAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/agent/VpnAgent;->start(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 56
    :try_start_3
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "Destroying VpnAgentService"

    .line 74
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;->mVpnAgent:Lcom/cisco/anyconnect/vpn/agent/VpnAgent;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/agent/VpnAgent;->stop()V

    .line 76
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;->mVpnAgent:Lcom/cisco/anyconnect/vpn/agent/VpnAgent;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/agent/VpnAgent;->destroy()V

    .line 78
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;->mNetworkBinder:Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->stop()V

    return-void
.end method

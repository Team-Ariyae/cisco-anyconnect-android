.class public Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;
.super Ljava/lang/Object;
.source "NetworkInterceptor.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$INetworkFlowCB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$WriteFlowDataTask;,
        Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;,
        Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;,
        Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;,
        Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;,
        Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;
    }
.end annotation


# instance fields
.field private mAVFService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

.field private final mAVFServiceConn:Landroid/content/ServiceConnection;

.field private mActiveConfig:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

.field private final mAgentServiceConn:Landroid/content/ServiceConnection;

.field private mCallback:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;

.field private mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mIPC:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;

.field private mInitSubstate:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

.field private mLastFailureCode:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;

.field private mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

.field private final mNCHSConnection:Landroid/content/ServiceConnection;

.field private mPendingConfig:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

.field private mVpnAgentService:Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActiveConfig(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mActiveConfig:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExecutor(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIPC(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mIPC:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingConfig(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mPendingConfig:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAVFService(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Lcom/cisco/android/nchs/aidl/IICSSupportService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mAVFService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmActiveConfig(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mActiveConfig:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastFailureCode(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mLastFailureCode:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNCHS(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVpnAgentService(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mVpnAgentService:Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleConfigure(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->handleConfigure(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleDisable(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->handleDisable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleFailure(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->handleFailure(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleInitialize(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->handleInitialize()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleProtect(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Landroid/os/ParcelFileDescriptor;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->handleProtect(Landroid/os/ParcelFileDescriptor;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monAVFConnected(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->onAVFConnected()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monAgentConnected(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->onAgentConnected()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monNCHSConnected(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->onNCHSConnected()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtransitionState(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->transitionState(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$1;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 352
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 358
    sget-object v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->DISABLED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    .line 361
    sget-object v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;->NA:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mInitSubstate:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    .line 365
    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$9;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$9;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mNCHSConnection:Landroid/content/ServiceConnection;

    .line 388
    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mAgentServiceConn:Landroid/content/ServiceConnection;

    .line 411
    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mAVFServiceConn:Landroid/content/ServiceConnection;

    .line 74
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mCallback:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;

    .line 76
    new-instance p2, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;

    invoke-direct {p2, p0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mIPC:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;

    .line 78
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.cisco.android.nchs.VPN_REVOKED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private bindToAVF()V
    .locals 4

    const-string v0, "ddx bindToAVF"

    .line 514
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;->WAIT_BIND_AVF:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->setInitSubstate(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;)V

    .line 517
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mAVFService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    if-eqz v0, :cond_0

    .line 518
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->onAVFConnected()V

    return-void

    .line 522
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mContext:Landroid/content/Context;

    const-class v2, Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 523
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mAVFServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "failed to bind to AVF Service"

    .line 525
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;->INIT_FAILURE:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->handleFailure(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;)V

    :cond_1
    return-void
.end method

.method private bindToAgent()V
    .locals 4

    const-string v0, "ddx bindToAgent"

    .line 497
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;->WAIT_BIND_AGENT:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->setInitSubstate(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;)V

    .line 500
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mVpnAgentService:Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;

    if-eqz v0, :cond_0

    .line 501
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->onAgentConnected()V

    return-void

    .line 505
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mContext:Landroid/content/Context;

    const-class v2, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 506
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mAgentServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "failed to bind to VPN agent"

    .line 508
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;->INIT_FAILURE:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->handleFailure(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;)V

    :cond_1
    return-void
.end method

.method private bindToNCHS()V
    .locals 4

    const-string v0, "ddx bindToNCHS"

    .line 473
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;->WAIT_BIND_NCHS:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->setInitSubstate(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;)V

    .line 476
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-eqz v0, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->onNCHSConnected()V

    return-void

    .line 481
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mContext:Landroid/content/Context;

    const-class v2, Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 482
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mNCHSConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "failed to bind to NCHS"

    .line 484
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;->INIT_FAILURE:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->handleFailure(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;)V

    :cond_1
    return-void
.end method

.method private canUseServices()Z
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    sget-object v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->INITIALIZED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    sget-object v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->CONFIGURED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    sget-object v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->CONFIGURING:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private handleConfigure(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;)Z
    .locals 3

    const-string v0, "ddxc start handle config"

    .line 180
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    sget-object v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->INITIALIZED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    sget-object v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->CONFIGURED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    if-eq v0, v1, :cond_0

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "invalid state for configure: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "Unexpected null config"

    .line 187
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mActiveConfig:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string p1, "ddxc Ignoring configure because config is same as active config"

    .line 192
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 197
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mIPC:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;

    if-nez v0, :cond_3

    const-string/jumbo p1, "unexpected null IPC in handleConfigure"

    .line 198
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    .line 202
    :cond_3
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mIPC:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->connect()V

    .line 206
    :cond_4
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mPendingConfig:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    .line 207
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->CONFIGURING:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->transitionState(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V

    .line 208
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mIPC:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->configure(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;)V

    const-string p1, "ddx fin handle config"

    .line 209
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    const-string/jumbo v0, "unexpected IOException connecting IPC socket"

    .line 212
    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    sget-object p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;->IPC_ERROR:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->handleFailure(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;)V

    return v2
.end method

.method private handleDisable()V
    .locals 3

    .line 258
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->DISABLED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    if-ne v0, v1, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mVpnAgentService:Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mAgentServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :catch_0
    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mVpnAgentService:Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-eqz v0, :cond_2

    .line 272
    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mNCHSConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 275
    :catch_1
    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mAVFService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    if-eqz v0, :cond_3

    .line 280
    :try_start_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mAVFServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 283
    :catch_2
    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mAVFService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mIPC:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;

    if-eqz v0, :cond_4

    .line 287
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;->close()V

    .line 288
    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mIPC:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorIPC;

    .line 291
    :cond_4
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->DISABLED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->transitionState(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V

    .line 293
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private handleFailure(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mLastFailureCode:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;

    .line 491
    sget-object p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;->NA:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mInitSubstate:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    .line 493
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->handleDisable()V

    return-void
.end method

.method private handleInitialize()Z
    .locals 2

    const-string v0, "ddx start initialize"

    .line 240
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    sget-object v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->DISABLED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    if-eq v0, v1, :cond_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid state for initialize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 246
    :cond_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->bindToNCHS()V

    .line 248
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->INITIALIZING:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->transitionState(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V

    const/4 v0, 0x1

    return v0
.end method

.method private handleProtect(Landroid/os/ParcelFileDescriptor;)Z
    .locals 3

    const-string v0, "ddx protect result: "

    .line 297
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->canUseServices()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "cannot protect in state: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    const-string v1, "ddx calling protect to avf"

    .line 303
    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mAVFService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    invoke-interface {v1, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->protect(Landroid/os/ParcelFileDescriptor;)Z

    move-result p1

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "protect failed"

    .line 308
    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method private onAVFConnected()V
    .locals 1

    const-string v0, "ddx AVF connected"

    .line 549
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->INITIALIZED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->transitionState(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V

    .line 551
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;->NA:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mInitSubstate:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    return-void
.end method

.method private onAgentConnected()V
    .locals 1

    const-string v0, "ddx onAgentConnected"

    .line 555
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->bindToAVF()V

    return-void
.end method

.method private onNCHSConnected()V
    .locals 2

    const-string v0, "ddx onNCHSConnected"

    .line 531
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    invoke-interface {v0}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->StartVpnAgent()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failed to start VPN Agent"

    .line 535
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;->INIT_FAILURE:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->handleFailure(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;)V

    return-void

    .line 540
    :cond_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->bindToAgent()V

    .line 541
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;->WAIT_BIND_AGENT:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->setInitSubstate(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "startVpnAgent failed"

    .line 543
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 544
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;->INIT_FAILURE:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->handleFailure(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;)V

    :goto_0
    return-void
.end method

.method private setInitSubstate(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;)V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mInitSubstate:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    if-ne p1, v0, :cond_0

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dupe state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 565
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "transition init substate "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mInitSubstate:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mInitSubstate:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    return-void
.end method

.method private transitionState(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    if-ne p1, v0, :cond_0

    return-void

    .line 459
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ddxc transition NetworkInterceptorState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    .line 461
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    .line 462
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mCallback:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;

    invoke-interface {v1, v0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;->handleStateChange(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V

    return-void
.end method


# virtual methods
.method public configure(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;)Z
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$5;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$5;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 139
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    invoke-interface {p1, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "configure task failed"

    .line 141
    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public disable()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$7;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$7;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 173
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x12c

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "disable task failed"

    .line 175
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getActiveConfig()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$4;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$4;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 123
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "queryState failed"

    .line 125
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method getCallback()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mCallback:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;

    return-object v0
.end method

.method public getLastFailureCode()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mLastFailureCode:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;

    return-object v0
.end method

.method public getState()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$3;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$3;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 107
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "queryState failed"

    .line 109
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleWriteData(Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 625
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$WriteFlowDataTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$WriteFlowDataTask;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;Ljava/nio/ByteBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 626
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x64

    invoke-interface {p1, v0, v1, p2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo p2, "write flow data task failed"

    .line 628
    invoke-static {p0, p2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public initialize()Z
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$2;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$2;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 91
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "init task failed"

    .line 93
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method onConfigureResult(Z)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$8;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$8;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method onIPCException(Ljava/lang/Exception;)V
    .locals 1

    .line 570
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$12;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$12;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method onIPCReadShutdown()V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$13;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$13;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public protect(Landroid/os/ParcelFileDescriptor;)Z
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$6;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$6;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 155
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xfa

    invoke-interface {p1, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "protect task failed"

    .line 157
    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

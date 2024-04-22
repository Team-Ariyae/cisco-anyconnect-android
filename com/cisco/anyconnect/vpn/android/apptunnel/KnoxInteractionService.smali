.class public Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;
.super Landroid/app/Service;
.source "KnoxInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$LooperThread;,
        Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$ILooperThreadCB;
    }
.end annotation


# static fields
.field private static final AC_CONDITION_REVOCATION_CHECK:I = 0x2

.field private static final AC_CONDITION_STRICT_MODE:I = 0x3

.field private static final BIND_SERVICE_TIMEOUT_MS:I = 0x1388

.field private static final BIND_VPN_SERVICE_TIMEOUT_MS:I = 0x7530

.field private static final ENTITY_NAME:Ljava/lang/String; = "KnoxInteractionService"

.field private static final KNOX_ERROR_FIPS:I = -0x1

.field private static final KNOX_ERROR_GENERIC:I = 0x1

.field private static final KNOX_MODE_FIPS:I = 0x1

.field private static final KNOX_MODE_NOFIPS:I = 0x0

.field private static final KNOX_SUCCESS:I = 0x0

.field private static final MAX_AUTO_RETRY_ATTEMPTS:I = 0x5

.field private static final WAIT_DEVICE_ADMIN_ENABLE_TIMEOUT_MS:I = 0x4e20

.field private static final WAIT_KNOX_LICENSE_ACTIVATION_TIMEOUT_MS:I = 0x4e20

.field private static final WAIT_LOOPER_THREAD_TIMEOUT_MS:I = 0x3e8


# instance fields
.field private mActiveKnoxProfileName:Ljava/lang/String;

.field private mAutoRetryAttempts:I

.field private mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

.field private mImportResourceEvent:Lcom/cisco/anyconnect/common/concurrency/ACEvent;

.field private mInfoListener:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

.field private final mKnoxInteractionBinder:Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService$Stub;

.field private mKnoxMetaEnabled:Z

.field private final mKnoxSystemBinder:Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService$Stub;

.field private mLastErrorNotice:Ljava/lang/String;

.field private mLooperThread:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$LooperThread;

.field private mLooperThreadReady:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

.field mNchsConnection:Landroid/content/ServiceConnection;

.field private final mNchsShutdownListener:Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;

.field private mRetryConnect:Ljava/lang/Runnable;

.field private final mRetryScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field mRetryTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mServiceConn:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

.field private mVpnState:Lcom/cisco/anyconnect/vpn/jni/VPNState;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAutoRetryAttempts(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)I
    .locals 0

    iget p0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mAutoRetryAttempts:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImportResourceEvent(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/common/concurrency/ACEvent;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mImportResourceEvent:Lcom/cisco/anyconnect/common/concurrency/ACEvent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInfoListener(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mInfoListener:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKnoxSystemBinder(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService$Stub;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mKnoxSystemBinder:Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService$Stub;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVpnState(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/vpn/jni/VPNState;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mVpnState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLooperThreadReady(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mLooperThreadReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mbindServices(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->bindServices()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$menforcePermissions(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->enforcePermissions(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetActiveKnoxProfile(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getActiveKnoxProfile()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCertGroupId(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getCertGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetConnectProgressState(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getConnectProgressState()Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetKnoxConnectionName(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getKnoxConnectionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetKnoxConnections(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getKnoxConnections()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetKnoxMetaEnabled(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getKnoxMetaEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetKnoxVpnConnection(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getKnoxVpnConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLastError(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getLastError()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetNchs(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getNchs()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetVpnService(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getVpnService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetVpnState(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/vpn/jni/VPNState;
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getVpnState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mimportConnectionResources(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->importConnectionResources(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlistenNchsShutdown(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->listenNchsShutdown(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleAutoRetry(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Lcom/cisco/anyconnect/vpn/jni/VPNState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->scheduleAutoRetry(Lcom/cisco/anyconnect/vpn/jni/VPNState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetActiveKnoxProfile(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->setActiveKnoxProfile(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetConnectProgressState(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->setConnectProgressState(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetKnoxMetaEnabled(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->setKnoxMetaEnabled(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLastError(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->setLastError(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNchs(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->setNchs(Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetVpnState(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Lcom/cisco/anyconnect/vpn/jni/VPNState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->setVpnState(Lcom/cisco/anyconnect/vpn/jni/VPNState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopAutoRetryConnect(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->stopAutoRetryConnect(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 94
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mKnoxMetaEnabled:Z

    .line 121
    iput v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mAutoRetryAttempts:I

    .line 122
    new-instance v1, Lcom/cisco/anyconnect/common/concurrency/ACEvent;

    const-string v2, "import_knox_resources"

    invoke-direct {v1, v2}, Lcom/cisco/anyconnect/common/concurrency/ACEvent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mImportResourceEvent:Lcom/cisco/anyconnect/common/concurrency/ACEvent;

    const/4 v1, 0x1

    .line 152
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mRetryScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 155
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$1;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$1;-><init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mRetryConnect:Ljava/lang/Runnable;

    .line 274
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mMainHandler:Landroid/os/Handler;

    .line 302
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mLooperThreadReady:Z

    .line 306
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;-><init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mInfoListener:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    .line 340
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$3;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$3;-><init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mNchsShutdownListener:Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;

    .line 378
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$4;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$4;-><init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mNchsConnection:Landroid/content/ServiceConnection;

    .line 396
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$5;

    invoke-direct {v1, p0, p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$5;-><init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mServiceConn:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    .line 613
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$7;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$7;-><init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mKnoxInteractionBinder:Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService$Stub;

    .line 840
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$9;-><init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mKnoxSystemBinder:Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService$Stub;

    return-void
.end method

.method private bindNchsService()Z
    .locals 9

    .line 541
    monitor-enter p0

    .line 543
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getNchs()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 546
    monitor-exit p0

    return v1

    .line 549
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 550
    const-class v2, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mNchsConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 557
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "KnoxInteractionService"

    const-string v3, "Failed to bind to NCHS"

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    monitor-exit p0

    return v2

    .line 561
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 562
    :goto_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getNchs()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v0

    if-nez v0, :cond_3

    .line 563
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0x1388

    cmp-long v0, v5, v7

    if-lez v0, :cond_2

    .line 564
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "KnoxInteractionService"

    const-string v3, "timed out waiting to bind to NCHS"

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_2
    const-wide/16 v5, 0x1f4

    .line 569
    :try_start_1
    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 572
    :catch_0
    :try_start_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "KnoxInteractionService"

    const-string v3, "bind NCHS interrupted."

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    monitor-exit p0

    return v2

    .line 577
    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 578
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private bindServices()Z
    .locals 4

    .line 519
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 520
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "KnoxInteractionService"

    const-string v3, "bindServices can\'t be invoked on main thread."

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 524
    :cond_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->bindVpnService()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 530
    :cond_1
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->bindNchsService()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private bindVpnService()Z
    .locals 9

    .line 583
    monitor-enter p0

    .line 585
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getVpnService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 588
    monitor-exit p0

    return v1

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mServiceConn:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Activate()Z

    .line 593
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 594
    :goto_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getVpnService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v0

    if-nez v0, :cond_2

    .line 595
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x7530

    const/4 v0, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 596
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "KnoxInteractionService"

    const-string v3, "timed out waiting to bind to VpnService"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_1
    const-wide/16 v4, 0xfa

    .line 601
    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 604
    :catch_0
    :try_start_2
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "KnoxInteractionService"

    const-string v3, "bind VpnService interrupted."

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    monitor-exit p0

    return v0

    .line 609
    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 610
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private enforcePermissions(I)V
    .locals 2

    .line 732
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3e8

    if-ne v0, p1, :cond_1

    return-void

    .line 742
    :cond_1
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 748
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Caller does not have sufficient permissions"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private declared-synchronized getActiveKnoxProfile()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mActiveKnoxProfileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCertGroupId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "knox_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized getConnectProgressState()Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;
    .locals 1

    monitor-enter p0

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getKnoxConnectionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (knox)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getKnoxConnections()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 706
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 708
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->bindServices()Z

    move-result v1

    if-nez v1, :cond_0

    .line 709
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "KnoxInteractionService"

    const-string v3, "bind services failed"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 713
    :cond_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getVpnService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v1

    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v1

    .line 714
    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetAllNames()Ljava/util/List;

    move-result-object v2

    .line 715
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 717
    invoke-interface {v1, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v3

    .line 718
    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsKnox()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 720
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private declared-synchronized getKnoxMetaEnabled()Z
    .locals 4

    const-string v0, "getKnoxMetaEnabled"

    monitor-enter p0

    .line 270
    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "KnoxInteractionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mKnoxMetaEnabled:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mKnoxMetaEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getKnoxVpnConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 5

    const-string v0, "Connection is not Knox type: "

    const-string v1, "No Knox connection found with name: "

    const/4 v2, 0x0

    .line 754
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getVpnService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v3

    if-nez v3, :cond_0

    const-string p1, "Unexpected null VpnService"

    .line 757
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    .line 761
    :cond_0
    invoke-interface {v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v3

    .line 762
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getKnoxConnectionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v3

    if-nez v3, :cond_1

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    .line 768
    :cond_1
    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsKnox()Z

    move-result p1

    if-nez p1, :cond_2

    .line 769
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_2
    return-object v3

    :catch_0
    move-exception p1

    const-string v0, "Unexpected RemoteException"

    .line 777
    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private declared-synchronized getLastError()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1480
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mLastErrorNotice:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getNchs()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;
    .locals 1

    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getVpnService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
    .locals 1

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mServiceConn:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getVpnState()Lcom/cisco/anyconnect/vpn/jni/VPNState;
    .locals 1

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mVpnState:Lcom/cisco/anyconnect/vpn/jni/VPNState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private importConnectionResources(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ddx importConnectionResources: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 794
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;

    invoke-direct {v0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;-><init>(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->getCcmCertAlias()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KnoxInteractionService"

    const-string v2, "CERTIFICATE_MDM_PROVISIONED_TAG"

    if-eqz p1, :cond_0

    .line 798
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 799
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getNchs()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v3

    invoke-interface {v3}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetNCSS()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v3

    new-instance v4, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;

    sget-object v5, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ANYCONNECT:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    invoke-direct {v4, v5}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSCertStore;)V

    .line 801
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->GetKnoxProfileName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getCertGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 799
    invoke-interface {v3, v4, p1, v5, v2}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->ImportKeychainAlias(Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v3, -0x1

    if-ne v3, p1, :cond_0

    .line 805
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "ImportAliasCertificate"

    invoke-static {p1, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    :cond_0
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->getCertAlias()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 811
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 812
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mImportResourceEvent:Lcom/cisco/anyconnect/common/concurrency/ACEvent;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/common/concurrency/ACEvent;->reset()V

    .line 814
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getNchs()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v3

    invoke-interface {v3}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetNCSS()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v3

    .line 815
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxJsonConnectionProfile$KnoxJsonParser;->GetKnoxProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getCertGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$8;

    invoke-direct {v4, p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$8;-><init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)V

    .line 814
    invoke-interface {v3, p1, v0, v2, v4}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->RequestClientCertFromSystem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/IImportClientCertCB;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    .line 829
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v0

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v0, v2, :cond_1

    .line 830
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v0

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_CERTIFICATE_ALREADY_EXISTS:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v0, v2, :cond_1

    .line 832
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to initiate keychain cert import: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 836
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mImportResourceEvent:Lcom/cisco/anyconnect/common/concurrency/ACEvent;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, v0, v1}, Lcom/cisco/anyconnect/common/concurrency/ACEvent;->waitForEvent(J)Z

    :cond_2
    return-void
.end method

.method private listenNchsShutdown(Z)V
    .locals 3

    .line 357
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getNchs()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mNchsShutdownListener:Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;

    invoke-interface {v0, p1, v1}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->RegisterShutdownListener(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mNchsShutdownListener:Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;

    invoke-interface {v0, p1, v1}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->UnregisterShutdownListener(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 374
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "listenNchsShutdown failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KnoxInteractionService"

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized scheduleAutoRetry(Lcom/cisco/anyconnect/vpn/jni/VPNState;)V
    .locals 8

    const-string v0, "scheduling retry: attempt="

    const-string v1, "isKnox="

    monitor-enter p0

    .line 176
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->bindServices()Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "KnoxInteractionService"

    const-string v1, "can\'t bind to services"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 182
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getVpnService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v2

    .line 183
    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetActive()Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-interface {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v2

    .line 185
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getActiveKnoxProfile()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsKnox()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " autoRetry="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->getAutoRetryOnFailure()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    :cond_1
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const/4 v3, 0x0

    if-ne v1, p1, :cond_2

    .line 191
    iput v3, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mAutoRetryAttempts:I

    .line 194
    :cond_2
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-ne v1, p1, :cond_7

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getActiveKnoxProfile()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 197
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsKnox()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->getAutoRetryOnFailure()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mVpnState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-ne p1, v4, :cond_3

    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Connecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    if-ne p1, v4, :cond_6

    .line 200
    :cond_3
    iget p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mAutoRetryAttempts:I

    const/4 v2, 0x6

    if-ge p1, v2, :cond_4

    new-instance v2, Ljava/lang/Double;

    int-to-double v4, p1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x5

    goto :goto_0

    :cond_4
    const/16 p1, 0x12c

    .line 201
    :goto_0
    iget v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mAutoRetryAttempts:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mAutoRetryAttempts:I

    .line 203
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mRetryTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_5

    .line 204
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mRetryTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 207
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mAutoRetryAttempts:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mRetryScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mRetryConnect:Ljava/lang/Runnable;

    int-to-long v2, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mRetryTask:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    .line 210
    :cond_6
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->getAutoRetryOnFailure()Z

    move-result p1

    if-nez p1, :cond_7

    .line 214
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getVpnService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object p1

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->ShowKnoxReconnectNotification(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 220
    :catch_0
    :try_start_2
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "KnoxInteractionService"

    const-string v1, "scheduleAutoRetry failed"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    :cond_7
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setActiveKnoxProfile(Ljava/lang/String;)V
    .locals 4

    const-string v0, "setActiveKnoxProfile name="

    monitor-enter p0

    .line 253
    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "KnoxInteractionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mActiveKnoxProfileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setAutoRetryAttempt(I)V
    .locals 0

    monitor-enter p0

    .line 259
    :try_start_0
    iput p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mAutoRetryAttempts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setConnectProgressState(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V
    .locals 0

    monitor-enter p0

    .line 231
    :try_start_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setKnoxMetaEnabled(Z)V
    .locals 4

    const-string v0, "setKnoxMetaEnable enable="

    monitor-enter p0

    .line 264
    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "KnoxInteractionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mKnoxMetaEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setLastError(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1484
    :try_start_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mLastErrorNotice:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1485
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setNchs(Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V
    .locals 0

    monitor-enter p0

    .line 136
    :try_start_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setVpnState(Lcom/cisco/anyconnect/vpn/jni/VPNState;)V
    .locals 1

    monitor-enter p0

    .line 146
    :try_start_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mVpnState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 147
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 148
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->stopAutoRetryConnect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized stopAutoRetryConnect(Z)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 240
    :try_start_0
    iput v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mAutoRetryAttempts:I

    .line 242
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mRetryTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mRetryTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 247
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mRetryScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    monitor-enter p0

    .line 1491
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".BIND_SERVICE_NEW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1493
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1494
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mKnoxSystemBinder:Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService$Stub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1497
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mKnoxInteractionBinder:Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService$Stub;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onCreate()V
    .locals 7

    monitor-enter p0

    .line 446
    :try_start_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 448
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;

    invoke-virtual {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->acquireResources(Landroid/content/Context;)V

    .line 450
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$LooperThread;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$6;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$6;-><init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)V

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$LooperThread;-><init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$ILooperThreadCB;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mLooperThread:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$LooperThread;

    .line 461
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$LooperThread;->start()V

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 463
    :catch_0
    :goto_0
    iget-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mLooperThreadReady:Z

    if-nez v2, :cond_1

    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const-wide/16 v2, 0x1f4

    .line 471
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 466
    :cond_0
    :try_start_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "KnoxInteractionService"

    const-string v2, "timed out waiting for looper thread start"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Looper thread failed to start"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 474
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized onDestroy()V
    .locals 3

    monitor-enter p0

    .line 479
    :try_start_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x1

    .line 481
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->stopAutoRetryConnect(Z)V

    .line 483
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;

    invoke-virtual {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->acquireResources(Landroid/content/Context;)V

    .line 485
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "KnoxInteractionService"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mServiceConn:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Deactivate()V

    :cond_0
    const/4 v0, 0x0

    .line 490
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->listenNchsShutdown(Z)V

    .line 492
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mNchsConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->mLooperThread:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$LooperThread;

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$LooperThread;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    monitor-enter p0

    const/4 p2, 0x2

    if-eqz p1, :cond_1

    .line 507
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    monitor-exit p0

    return p2

    .line 509
    :cond_1
    :goto_0
    :try_start_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "KnoxInteractionService"

    const-string v0, "invalid params to onStartCommand"

    invoke-static {p1, p3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

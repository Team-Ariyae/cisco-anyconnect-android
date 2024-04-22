.class final Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;
.super Ljava/lang/Object;
.source "DependencyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$IDependencyManagerCB;,
        Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;
    }
.end annotation


# static fields
.field private static final DEPENDENCY_CHECK_TIMEOUT_MILLISECONDS:I = 0x2710

.field private static final ENTITY_NAME:Ljava/lang/String; = "DependencyManager"

.field private static final TIMEOUT_MSG:I = 0x1


# instance fields
.field private mCallback:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$IDependencyManagerCB;

.field private mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIncompat:Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

.field private mLastResult:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

.field private mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

.field private final mNCHSConnection:Landroid/content/ServiceConnection;

.field private mNativeComponentDataDir:Ljava/lang/String;

.field mNchsHandler:Landroid/os/Handler;

.field mNchsHandlerThread:Landroid/os/HandlerThread;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;)Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$IDependencyManagerCB;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$IDependencyManagerCB;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastResult(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;)Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mLastResult:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastResult(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mLastResult:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNCHS(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckDependencies(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;)Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->checkDependencies()Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstopListeningForServiceStarted(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->stopListeningForServiceStarted()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$IDependencyManagerCB;)V
    .locals 2

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NchsHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mNchsHandlerThread:Landroid/os/HandlerThread;

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mNchsHandler:Landroid/os/Handler;

    .line 114
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mNCHSConnection:Landroid/content/ServiceConnection;

    .line 145
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$2;-><init>(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$3;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$3;-><init>(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 203
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$IDependencyManagerCB;

    .line 204
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 205
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mLastResult:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    .line 207
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mNchsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 208
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mNchsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 209
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mNchsHandler:Landroid/os/Handler;

    return-void

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "unexpected null inputs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private declared-synchronized checkDependencies()Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;
    .locals 4

    monitor-enter p0

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    invoke-interface {v0}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->StartVpnAgent()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failed to start VPN Agent"

    .line 371
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->UNSATISFACTORY:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mLastResult:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    .line 375
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->SATISFACTORY:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 379
    :try_start_1
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "DependencyManager"

    const-string v3, "Unexpected remote expection in checkDependencies"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->UNSATISFACTORY:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mLastResult:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method private startListeningForServiceStarted()V
    .locals 3

    .line 339
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "NCHS_COMPONENT_SERVICE_READY_INTENT"

    .line 340
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->startTimer()V

    return-void
.end method

.method private startTimer()V
    .locals 4

    .line 328
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->stopTimer()V

    .line 329
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopListeningForServiceStarted()V
    .locals 2

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :catch_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->stopTimer()V

    return-void
.end method

.method private stopTimer()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method declared-synchronized CheckDependencies(Z)Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;
    .locals 3

    monitor-enter p0

    .line 237
    :try_start_0
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mDestroyed:Z

    if-nez v0, :cond_5

    .line 242
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->CheckIncompatibility(Landroid/content/Context;)Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mIncompat:Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->isFatal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->FATAL_INCOMPATIBILITY:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 249
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->DEFERRED:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 259
    :try_start_2
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->startListeningForServiceStarted()V

    .line 260
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->DEFERRED:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 264
    :cond_2
    :try_start_3
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-nez p1, :cond_4

    .line 266
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mNCHSConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 269
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "DependencyManager"

    const-string v1, "Could not bind to NCHS, will not be able to update state"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->UNSATISFACTORY:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mLastResult:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    monitor-exit p0

    return-object p1

    .line 274
    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->startTimer()V

    .line 275
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->DEFERRED:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    .line 278
    :cond_4
    :try_start_5
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->checkDependencies()Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p1

    .line 239
    :cond_5
    :try_start_6
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string v0, "CheckDependencies called after this object has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method Destroy()V
    .locals 3

    .line 287
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 292
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mDestroyed:Z

    .line 294
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mNchsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 296
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->stopListeningForServiceStarted()V

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mNCHSConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "DependencyManager"

    const-string v2, "Exception thrown when unbinding mNCHSConnection"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized GetNativeComponentDataDir()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mNativeComponentDataDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 314
    :try_start_0
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 316
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "DependencyManager"

    const-string v2, "Destroy() should be invoked before gc."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->Destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 323
    throw v0
.end method

.method public getIncompatibility()Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mIncompat:Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    return-object v0
.end method

.method public declared-synchronized getLastResult()Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;
    .locals 1

    monitor-enter p0

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mLastResult:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNativeComponentDataDir()V
    .locals 5

    const-string v0, "Failed to get native component data property: "

    monitor-enter p0

    .line 392
    :try_start_0
    new-instance v1, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;

    invoke-direct {v1}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;-><init>()V

    .line 393
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NATIVE_COMPONENT_DATA_ID"

    invoke-interface {v2, v3, v4, v1}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/StringBuilderParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object v2

    .line 396
    sget-object v3, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {v2}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 398
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "DependencyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    monitor-exit p0

    return-void

    .line 402
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mNativeComponentDataDir:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 405
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "DependencyManager"

    const-string v2, "Unexpected null native component data dir"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 410
    :try_start_2
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "DependencyManager"

    const-string v3, "Failed to set native component dir."

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 412
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.class public Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;
.super Ljava/lang/Object;
.source "ServiceConnectionManager.java"


# static fields
.field private static final ANYCONNECT_DEFAULT_PACKAGE:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.avf"

.field private static final AUTOMATION_PACKAGE:Ljava/lang/String; = "com.cisco.anyconnect.android.automation.vpn"

.field private static final BIND_TIMEOUT_MILLISECONDS:I = 0x4e20

.field private static final ENTITY_NAME:Ljava/lang/String; = "ServiceConnectionManager"

.field private static final TIMEOUT_MSG:I = 0x1


# instance fields
.field private mCallback:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsActivated:Z

.field private mIsVisible:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceStateListener:Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;

.field private mSuppressConnectMsg:Z

.field private mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVisible(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mIsVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceStateListener(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mServiceStateListener:Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVpnService(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSuppressConnectMsg(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mSuppressConnectMsg:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVpnService(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeactivate(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->deactivate(ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBindTimeoutCB(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->onBindTimeoutCB()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monServiceConnectedCB(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->onServiceConnectedCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monServiceDisconnectedCB(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->onServiceDisconnectedCB()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowConnectingMessageCB(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->showConnectingMessageCB()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopTimer(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->stopTimer()V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V
    .locals 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mSuppressConnectMsg:Z

    .line 56
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mServiceStateListener:Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;

    .line 85
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$2;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 221
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    .line 222
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->GetContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private deactivate(ZLjava/lang/String;)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    if-eqz v0, :cond_0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mServiceStateListener:Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterServiceStateListener(Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AnyConnect"

    const-string v2, "Unexpected RemoteException in unregistering RegisterServiceShutdownListener"

    .line 160
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-direct {p0, v0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->onServiceWillDisconnectCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;ZLjava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    .line 170
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->stopTimer()V

    const/4 p1, 0x0

    .line 171
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mIsActivated:Z

    return-void
.end method

.method private onBindTimeoutCB()V
    .locals 3

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->OnBindTimeout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AnyConnect"

    const-string v2, "Exception in OnBindTimeout"

    .line 418
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private onServiceConnectedCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 2

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->OnServiceConnected(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AnyConnect"

    const-string v1, "Exception in OnServiceConnected"

    .line 406
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private onServiceDisconnectedCB()V
    .locals 3

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->OnServiceDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AnyConnect"

    const-string v2, "Exception in OnServiceDisconnected"

    .line 382
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private onServiceWillDisconnectCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;ZLjava/lang/String;)V
    .locals 1

    .line 390
    :try_start_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-virtual {p1, v0, p2, p3}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->OnServiceWillDisconnect(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AnyConnect"

    const-string p3, "Exception in OnServiceWillDisconnect"

    .line 394
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private showConnectingMessageCB()V
    .locals 3

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->ShowConnectingMessage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AnyConnect"

    const-string v2, "Exception in ShowConnectingMessage"

    .line 370
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private startTimer()V
    .locals 4

    .line 206
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->stopTimer()V

    .line 207
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopTimer()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized Activate()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 232
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Activate(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized Activate(Z)Z
    .locals 6

    monitor-enter p0

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "AnyConnect"

    const-string/jumbo v0, "unexpected NULL ServiceConnectionCB"

    .line 249
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit p0

    return v1

    .line 253
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.cisco.anyconnect.android.automation.vpn"

    .line 254
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v0, "AnyConnect"

    const-string v2, "Overriding automation package name"

    .line 256
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.cisco.anyconnect.vpn.android.avf"

    .line 260
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.cisco.anyconnect.vpn.android.service.VpnService"

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p1, :cond_3

    const-string v0, "com.cisco.anyconnect.vpn.android.VPN_SERVICE_KEY_DISABLE_NOTIFICATIONS"

    .line 265
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    const/4 v3, 0x1

    if-lt p1, v0, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    .line 272
    :goto_0
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v2, v5, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "AnyConnect"

    const-string v0, "bindService failed"

    .line 275
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    monitor-exit p0

    return v1

    .line 280
    :cond_5
    :try_start_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_6

    const-string p1, "AnyConnect"

    const-string v0, "invoking startForegroundService for VpnService"

    .line 281
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 283
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mContext:Landroid/content/Context;

    const-class v1, Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 284
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 287
    :cond_6
    iget-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mIsActivated:Z

    if-eqz p1, :cond_7

    const-string p1, "AnyConnect"

    const-string v0, "Already activated"

    .line 289
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 290
    monitor-exit p0

    return v3

    .line 293
    :cond_7
    :try_start_3
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->startTimer()V

    .line 294
    iput-boolean v3, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mIsActivated:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 295
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized Deactivate()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, ""

    const/4 v1, 0x0

    .line 303
    invoke-direct {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->deactivate(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
    .locals 1

    monitor-enter p0

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized IsVisible()Z
    .locals 1

    monitor-enter p0

    .line 359
    :try_start_0
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mIsVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized OnVisibilityChange(Z)V
    .locals 1

    monitor-enter p0

    .line 314
    :try_start_0
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mIsVisible:Z

    .line 316
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mIsActivated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 318
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 323
    :try_start_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    if-nez p1, :cond_3

    .line 325
    iget-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mSuppressConnectMsg:Z

    if-nez p1, :cond_1

    .line 327
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->showConnectingMessageCB()V

    .line 331
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_3

    .line 332
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Activate()Z

    .line 333
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->startTimer()V

    goto :goto_0

    .line 339
    :cond_2
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->stopTimer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized Shutdown(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    if-nez v0, :cond_0

    const-string p1, "AnyConnect"

    const-string v0, "Shutdown: no VPNService"

    .line 184
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 194
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->ShutdownService(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "AnyConnect"

    const-string v1, "Shutdown: got exception during ShutdownService:"

    .line 198
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

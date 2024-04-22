.class public Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;
.super Lcom/cisco/android/nchs/ipc/IPCBroadcastServerBase;
.source "IPCBroadcastServerImpl.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$BroadcastTask;
    }
.end annotation


# static fields
.field private static final NETWORK_EVENT_DEBOUNCE_KNOX_MS:I = 0x0

.field private static final NETWORK_EVENT_DEBOUNCE_MS:I = 0xbb8

.field private static final PACKAGE_EVENT_DEBOUNCE_SECONDS:I = 0x3


# instance fields
.field private final mAddedApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mHandler:Landroid/os/Handler;

.field private mLastInterfaceEvent:Landroid/content/Intent;

.field protected mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPublicNetworkMonitor:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;

.field private final mRemovedApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mReplacedApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReportNetworkEvent:Ljava/lang/Runnable;

.field private mReportPackageEvent:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAddedApps(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mAddedApps:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastInterfaceEvent(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mLastInterfaceEvent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemovedApps(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mRemovedApps:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReplacedApps(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mReplacedApps:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReportNetworkEvent(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mReportNetworkEvent:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReportPackageEvent(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mReportPackageEvent:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastInterfaceEvent(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mLastInterfaceEvent:Landroid/content/Intent;

    return-void
.end method

.method static bridge synthetic -$$Nest$mbroadcastMessage(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->broadcastMessage(Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monLocaleChanged(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->onLocaleChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;)V
    .locals 1

    const-string v0, "BroadcastServer"

    .line 217
    invoke-direct {p0, v0, p2, p3}, Lcom/cisco/android/nchs/ipc/IPCBroadcastServerBase;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;)V

    .line 61
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mAddedApps:Ljava/util/Set;

    .line 62
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mRemovedApps:Ljava/util/Set;

    .line 63
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mReplacedApps:Ljava/util/Set;

    .line 79
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance p2, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$1;

    invoke-direct {p2, p0}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$1;-><init>(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)V

    iput-object p2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mReportPackageEvent:Ljava/lang/Runnable;

    .line 129
    new-instance p2, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$3;

    invoke-direct {p2, p0}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$3;-><init>(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)V

    iput-object p2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mReportNetworkEvent:Ljava/lang/Runnable;

    .line 136
    new-instance p2, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$4;

    invoke-direct {p2, p0}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$4;-><init>(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)V

    iput-object p2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    new-instance p2, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$5;

    invoke-direct {p2, p0}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$5;-><init>(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)V

    iput-object p2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 218
    iput-object p1, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mContext:Landroid/content/Context;

    .line 219
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->isSupported()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "Public network monitor not supported. Falling back to legacy mechanism"

    .line 222
    invoke-static {p0, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 223
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string p3, "android.intent.action.LOCALE_CHANGED"

    .line 226
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "com.cisco.android.nchs.VPN_REVOKED"

    .line 227
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 228
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object p3, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p3, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->registerPackageReceiver(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 233
    invoke-static {p2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 235
    iget-object p2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/cisco/android/nchs/permissions/Prerequisites;->useNetworkCallback(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 236
    new-instance p2, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;

    const/16 p3, 0x1f4

    invoke-direct {p2, p1, p0, p3}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;-><init>(Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$Callback;I)V

    iput-object p2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mPublicNetworkMonitor:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;

    .line 237
    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->start()V

    :cond_1
    return-void
.end method

.method static synthetic access$001(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/cisco/android/nchs/ipc/IPCBroadcastServerBase;->broadcastMessageToClients(Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;)V

    return-void
.end method

.method static synthetic access$101(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/cisco/android/nchs/ipc/IPCBroadcastServerBase;->broadcastMessageToClients(Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;)V

    return-void
.end method

.method private broadcastMessage(Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;)V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$BroadcastTask;

    invoke-direct {v1, p0, p1}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$BroadcastTask;-><init>(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$2;-><init>(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;Ljava/util/concurrent/Future;)V

    const-wide/16 v2, 0xa

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private onLocaleChanged()V
    .locals 1

    .line 299
    new-instance v0, Lcom/cisco/android/nchs/support/LocaleIPCBroadcastMessage;

    invoke-direct {v0}, Lcom/cisco/android/nchs/support/LocaleIPCBroadcastMessage;-><init>()V

    invoke-direct {p0, v0}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->broadcastMessage(Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;)V

    return-void
.end method

.method private registerPackageReceiver(Landroid/content/Context;)V
    .locals 12

    .line 245
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 246
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    .line 247
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 248
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 249
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 250
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 252
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/util/MultiUserUtils;->hasInteractAcrossUsersPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "android.os.UserHandle"

    .line 256
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 257
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 258
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 259
    new-instance v6, Ljava/lang/Integer;

    const/4 v7, -0x1

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    .line 260
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 262
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "registerReceiverAsUser"

    const/4 v7, 0x5

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/BroadcastReceiver;

    aput-object v9, v8, v5

    aput-object v1, v8, v2

    const-class v1, Landroid/content/IntentFilter;

    const/4 v9, 0x2

    aput-object v1, v8, v9

    const-class v1, Ljava/lang/String;

    const/4 v10, 0x3

    aput-object v1, v8, v10

    const-class v1, Landroid/os/Handler;

    const/4 v11, 0x4

    aput-object v1, v8, v11

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v7, [Ljava/lang/Object;

    .line 263
    iget-object v6, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    aput-object v6, v4, v5

    aput-object v3, v4, v2

    aput-object v0, v4, v9

    const/4 v0, 0x0

    aput-object v0, v4, v10

    aput-object v0, v4, v11

    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 267
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "IPCBroadcastServerBase"

    const-string v2, "Failed to register for multiuser package events"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 272
    :cond_0
    iget-object p1, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method


# virtual methods
.method protected getNewOpCodeInterface(B)Lcom/cisco/android/nchs/codes/IOpcode;
    .locals 0

    .line 294
    invoke-static {p1}, Lcom/cisco/android/nchs/codes/BroadcastOpcode;->getByCode(B)Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    move-result-object p1

    return-object p1
.end method

.method public onNetworkUpdate(Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;)V
    .locals 1

    .line 85
    new-instance v0, Lcom/cisco/android/nchs/support/PublicNetworkChangeMessage;

    invoke-direct {v0, p1}, Lcom/cisco/android/nchs/support/PublicNetworkChangeMessage;-><init>(Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;)V

    .line 86
    invoke-direct {p0, v0}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->broadcastMessage(Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;)V

    return-void
.end method

.method public shutdownServer()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mPublicNetworkMonitor:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->destroy()V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 287
    iget-object v0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    invoke-super {p0}, Lcom/cisco/android/nchs/ipc/IPCBroadcastServerBase;->shutdownServer()V

    return-void
.end method

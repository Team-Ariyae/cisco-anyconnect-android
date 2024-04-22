.class public Lcom/cisco/android/nchs/support/ics/ICSSupportService;
.super Landroid/net/VpnService;
.source "ICSSupportService.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "ICSSupportService"


# instance fields
.field private mActiveConnectionTracker:Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;

.field private mAppIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBuilder:Landroid/net/VpnService$Builder;

.field private mDnsSearch:Ljava/lang/String;

.field private final mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsIPv4SplitExcludeFailed:Z

.field private mIsIPv6SplitExcludeFailed:Z

.field private mKnoxEnableMeta:Z

.field private mKnoxProfile:Ljava/lang/String;

.field private mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

.field mNchsConnection:Landroid/content/ServiceConnection;

.field private final mNchsShutdownListener:Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;

.field private mServiceImpl:Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;

.field private mSubnetManager:Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;

.field private mVpnDebug:Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActiveConnectionTracker(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mActiveConnectionTracker:Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppIds(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mAppIds:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Landroid/net/VpnService$Builder;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mBuilder:Landroid/net/VpnService$Builder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDnsSearch(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mDnsSearch:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDnsServers(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mDnsServers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsIPv4SplitExcludeFailed(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mIsIPv4SplitExcludeFailed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsIPv6SplitExcludeFailed(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mIsIPv6SplitExcludeFailed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKnoxEnableMeta(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mKnoxEnableMeta:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKnoxProfile(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mKnoxProfile:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNCHS(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNchsShutdownListener(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mNchsShutdownListener:Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubnetManager(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mSubnetManager:Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVpnDebug(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mVpnDebug:Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAppIds(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mAppIds:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Landroid/net/VpnService$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mBuilder:Landroid/net/VpnService$Builder;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDnsSearch(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mDnsSearch:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsIPv4SplitExcludeFailed(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mIsIPv4SplitExcludeFailed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsIPv6SplitExcludeFailed(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mIsIPv6SplitExcludeFailed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmKnoxEnableMeta(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mKnoxEnableMeta:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmKnoxProfile(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mKnoxProfile:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNCHS(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVpnDebug(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mVpnDebug:Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;

    return-void
.end method

.method static bridge synthetic -$$Nest$munbindNchs(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->unbindNchs()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mSubnetManager:Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;

    .line 64
    new-instance v0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;

    invoke-direct {v0}, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mVpnDebug:Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mIsIPv4SplitExcludeFailed:Z

    .line 67
    iput-boolean v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mIsIPv6SplitExcludeFailed:Z

    .line 69
    new-instance v0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;-><init>(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mServiceImpl:Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;

    const/4 v0, 0x0

    .line 484
    iput-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mAppIds:Ljava/util/List;

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mDnsServers:Ljava/util/List;

    const-string v0, ""

    .line 486
    iput-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mDnsSearch:Ljava/lang/String;

    .line 504
    new-instance v0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$2;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService$2;-><init>(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mNchsShutdownListener:Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;

    .line 514
    new-instance v0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$3;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService$3;-><init>(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mNchsConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private unbindNchs()V
    .locals 1

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mNchsConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 501
    iput-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "ICSSupportService"

    const-string v1, "onBind()"

    .line 601
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-super {p0, p1}, Landroid/net/VpnService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 611
    :cond_0
    iget-object p1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mServiceImpl:Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 542
    invoke-super {p0}, Landroid/net/VpnService;->onCreate()V

    const-string v0, "onCreate"

    const-string v1, "ICSSupportService"

    .line 544
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    new-instance v0, Landroid/net/VpnService$Builder;

    invoke-direct {v0, p0}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mBuilder:Landroid/net/VpnService$Builder;

    .line 553
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    const-class v2, Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    iget-object v2, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mNchsConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Failed to bind to NCHS"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_0
    new-instance v0, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mActiveConnectionTracker:Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 568
    invoke-super {p0}, Landroid/net/VpnService;->onDestroy()V

    .line 569
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->unbindNchs()V

    .line 571
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mActiveConnectionTracker:Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onRevoke()V
    .locals 4

    .line 579
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->setAlwaysOnEnabled(Z)Z

    .line 580
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/AlwaysOnRetryConnectReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 581
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 583
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cisco/android/nchs/support/ics/ICSSupportService$4;

    invoke-direct {v1, p0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService$4;-><init>(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

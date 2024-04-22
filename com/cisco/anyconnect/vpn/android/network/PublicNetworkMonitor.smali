.class public Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;
.super Ljava/lang/Object;
.source "PublicNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$Callback;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDebounceMs:I

.field private final mHandler:Landroid/os/Handler;

.field private mLastNetworkEnv:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;

.field private mNetworkCallback:Ljava/lang/Object;

.field private mReportNetworkEvent:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$Callback;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mCallback:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnMgr(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDebounceMs(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)I
    .locals 0

    iget p0, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mDebounceMs:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNetworkEnv(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mLastNetworkEnv:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReportNetworkEvent(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mReportNetworkEvent:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastNetworkEnv(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mLastNetworkEnv:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$Callback;I)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$1;-><init>(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mReportNetworkEvent:Ljava/lang/Runnable;

    .line 32
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 34
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mCallback:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$Callback;

    .line 35
    iput p3, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mDebounceMs:I

    .line 36
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static isSupported()Z
    .locals 2

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mReportNetworkEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mNetworkCallback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mConnMgr:Landroid/net/ConnectivityManager;

    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    const-string v0, "Starting public network monitor"

    .line 65
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;-><init>(Landroid/net/ConnectivityManager;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mLastNetworkEnv:Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 70
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    .line 71
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/16 v1, 0xc

    .line 72
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 74
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$2;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor$2;-><init>(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mNetworkCallback:Ljava/lang/Object;

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkMonitor;->mNetworkCallback:Ljava/lang/Object;

    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PublicNetworkMonitor will not run due to requestNetwork exception"

    .line 100
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.class public Lcom/cisco/umbrella/network/PublicNetworkMonitor;
.super Ljava/lang/Object;
.source "PublicNetworkMonitor.java"

# interfaces
.implements Lcom/cisco/umbrella/network/IPublicNetworkMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PublicNetworkMonitor"


# instance fields
.field private connectedNetwork:Landroid/net/Network;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mDebounceMs:I

.field private final mHandler:Landroid/os/Handler;

.field private mHasConnectivity:Z

.field private mNetworkCallback:Ljava/lang/Object;

.field private mReportNetworkEvent:Ljava/lang/Runnable;

.field private final subscribers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->mHasConnectivity:Z

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->subscribers:Ljava/util/Set;

    .line 62
    new-instance v0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$1;

    invoke-direct {v0, p0}, Lcom/cisco/umbrella/network/PublicNetworkMonitor$1;-><init>(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)V

    iput-object v0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->mReportNetworkEvent:Ljava/lang/Runnable;

    const-string v0, "connectivity"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 46
    iput p2, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->mDebounceMs:I

    .line 47
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)Ljava/util/Set;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->subscribers:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->mHasConnectivity:Z

    return p0
.end method

.method static synthetic access$102(Lcom/cisco/umbrella/network/PublicNetworkMonitor;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->mHasConnectivity:Z

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)Landroid/net/Network;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->connectedNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static synthetic access$302(Lcom/cisco/umbrella/network/PublicNetworkMonitor;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->connectedNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$400(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)Ljava/lang/Runnable;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->mReportNetworkEvent:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->mDebounceMs:I

    return p0
.end method


# virtual methods
.method public bindProcessToNetwork(Landroid/net/Network;)V
    .locals 2

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 56
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->TAG:Ljava/lang/String;

    const-string v1, "bindProcessToNetwork failed: "

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->TAG:Ljava/lang/String;

    const-string v1, "bound to network: "

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->subscribers:Ljava/util/Set;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->subscribers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 153
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->mReportNetworkEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    iget-object v0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->mNetworkCallback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->mConnMgr:Landroid/net/ConnectivityManager;

    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 153
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getConnectedNetwork()Landroid/net/Network;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->connectedNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public isOnline()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->mHasConnectivity:Z

    return v0
.end method

.method public start()V
    .locals 5

    .line 75
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->TAG:Ljava/lang/String;

    const-string v2, "Starting public network monitor"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 77
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    .line 78
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/16 v1, 0xc

    .line 79
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 81
    new-instance v1, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;

    invoke-direct {v1, p0}, Lcom/cisco/umbrella/network/PublicNetworkMonitor$2;-><init>(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)V

    iput-object v1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->mNetworkCallback:Ljava/lang/Object;

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->mNetworkCallback:Ljava/lang/Object;

    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PublicNetworkMonitor will not run due to requestNetwork exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public subscribe(Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->subscribers:Ljava/util/Set;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->subscribers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unSubscribe(Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->subscribers:Ljava/util/Set;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->subscribers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->subscribers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 147
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

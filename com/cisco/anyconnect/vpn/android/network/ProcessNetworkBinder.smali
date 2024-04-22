.class public Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;
.super Ljava/lang/Object;
.source "ProcessNetworkBinder.java"


# instance fields
.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mIsKnoxVPNActive:Z

.field mKnoxConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private final mLabel:Ljava/lang/String;

.field private mNetworkCallback:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConnMgr(Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;)Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsKnoxVPNActive(Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->mIsKnoxVPNActive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsKnoxVPNActive(Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->mIsKnoxVPNActive:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->mIsKnoxVPNActive:Z

    .line 30
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder$1;-><init>(Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->mKnoxConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 25
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->mLabel:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->mContext:Landroid/content/Context;

    const-string p1, "connectivity"

    .line 27
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->mConnMgr:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.cisco.anyconnect.vpn.knox.KNOX_CONNECTION_STARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.cisco.anyconnect.vpn.knox.KNOX_CONNECTION_STOPPED"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->mKnoxConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    .line 55
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/16 v1, 0xc

    .line 56
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 58
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder$2;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder$2;-><init>(Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->mNetworkCallback:Ljava/lang/Object;

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->mNetworkCallback:Ljava/lang/Object;

    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ProcessNetworkBinder will not run due to requestNetwork exception"

    .line 91
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->mNetworkCallback:Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 99
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->mNetworkCallback:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 104
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->mConnMgr:Landroid/net/ConnectivityManager;

    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 108
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->mKnoxConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

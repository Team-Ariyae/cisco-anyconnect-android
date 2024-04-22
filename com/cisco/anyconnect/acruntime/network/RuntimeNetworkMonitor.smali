.class public Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;
.super Ljava/lang/Object;
.source "RuntimeNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "com.cisco.anyconnect.acruntime.network.RuntimeNetworkMonitor"


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/acruntime/network/INetworkChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mNetworkCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Network;",
            "Landroid/net/NetworkCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkStateCallback:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->listeners:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 52
    iput-object p1, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->mNetworkCache:Ljava/util/HashMap;

    const-string v0, "connectivity"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 55
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 56
    new-instance p1, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;-><init>(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$1;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->mNetworkStateCallback:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;

    .line 57
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    sget-object v0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->ENTITY_NAME:Ljava/lang/String;

    const-string v1, "RuntimeNetworkMonitor initialized"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Context is required for NetworkMonitor"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->ENTITY_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->listeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;)Ljava/util/HashMap;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->mNetworkCache:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 75
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 76
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 77
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 78
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xf

    .line 79
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->mNetworkStateCallback:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public native notifyNetworkEvent(Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;)V
.end method

.method public registerNetworkChangeListener(Lcom/cisco/anyconnect/acruntime/network/INetworkChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->mNetworkStateCallback:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public unregisterNetworkChangeListener(Lcom/cisco/anyconnect/acruntime/network/INetworkChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

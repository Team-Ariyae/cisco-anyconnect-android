.class public Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;
.super Ljava/lang/Object;
.source "PublicNetworkEnv.java"


# instance fields
.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mNetworks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Network;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferredNetwork:Landroid/net/Network;

.field private final mPreferredNetworkScore:I


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 7

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->mNetworks:Ljava/util/Set;

    .line 19
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lt v0, v1, :cond_5

    .line 23
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object p1

    .line 24
    array-length v0, p1

    move-object v1, v3

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v4, p1, v2

    .line 30
    :try_start_0
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "Unexpected getNetworkCapabilities exception"

    .line 32
    invoke-static {p0, v6, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v3

    :goto_1
    if-nez v5, :cond_0

    goto :goto_3

    :cond_0
    const/16 v6, 0xf

    .line 40
    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0xc

    .line 41
    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_3

    .line 45
    :cond_1
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->mNetworks:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_2

    goto :goto_2

    .line 49
    :cond_2
    invoke-virtual {p0, v4}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->getPreferrabilityScore(Landroid/net/Network;)I

    move-result v5

    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->getPreferrabilityScore(Landroid/net/Network;)I

    move-result v6

    if-le v5, v6, :cond_3

    :goto_2
    move-object v1, v4

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_4
    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->mPreferredNetwork:Landroid/net/Network;

    .line 55
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->getPreferrabilityScore(Landroid/net/Network;)I

    move-result p1

    iput p1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->mPreferredNetworkScore:I

    goto :goto_4

    :cond_5
    const-string p1, "PublicNetworkState is not supported"

    .line 58
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object v3, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->mPreferredNetwork:Landroid/net/Network;

    .line 60
    iput v2, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->mPreferredNetworkScore:I

    :goto_4
    return-void
.end method


# virtual methods
.method public getPreferrabilityScore(Landroid/net/Network;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Unexpected null network"

    .line 112
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    .line 116
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    .line 117
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x3

    .line 124
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x1

    .line 126
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    return v0

    :cond_4
    const-string p1, "Unsupported SDK level"

    .line 132
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method public getPreferredNetwork()Landroid/net/Network;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->mPreferredNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public getPreferredNetworkScore()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->mPreferredNetworkScore:I

    return v0
.end method

.method getTransition(Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;)Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->hasConnectivity()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->hasConnectivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;->LoseConnectivity:Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;

    return-object p1

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->getPreferredNetworkScore()I

    move-result p1

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->getPreferredNetworkScore()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 75
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;->BetterRoute:Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;

    return-object p1

    :cond_1
    return-object v1

    .line 81
    :cond_2
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->hasConnectivity()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 82
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;->ResumeConnectivity:Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;

    return-object p1

    :cond_3
    return-object v1
.end method

.method public hasConnectivity()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->mPreferredNetwork:Landroid/net/Network;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PublicNetworkEnv:  hasConnectivity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->hasConnectivity()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " prefScore="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->getPreferredNetworkScore()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/PublicNetworkEnv;->mPreferredNetwork:Landroid/net/Network;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

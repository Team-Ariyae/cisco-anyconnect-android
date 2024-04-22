.class public Lcom/cisco/anyconnect/vpn/android/network/Android21NetworkProperties;
.super Ljava/lang/Object;
.source "Android21NetworkProperties.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/network/INetworkProperties;


# instance fields
.field private final mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/network/Android21NetworkProperties;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/network/Android21NetworkProperties;->mCm:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public getActiveNetworkInterface()Ljava/lang/String;
    .locals 8

    .line 54
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/Android21NetworkProperties;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/network/Android21NetworkProperties;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 57
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/network/Android21NetworkProperties;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 58
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 59
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/Android21NetworkProperties;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDnsSearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/Android21NetworkProperties;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 43
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 44
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/network/Android21NetworkProperties;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v3

    .line 45
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public getDnsServers(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/network/Android21NetworkProperties;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 30
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 31
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/network/Android21NetworkProperties;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v3

    .line 32
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.class public Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;
.super Ljava/lang/Object;
.source "NVMNetUtils.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NVMNetUtils"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 49
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;->mContext:Landroid/content/Context;

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Context is required for NVMNetUtils"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getVPNNetwork([Landroid/net/Network;)Landroid/net/Network;
    .locals 6

    .line 156
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 158
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 159
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v5, 0x4

    .line 160
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getIPV6Address(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x25

    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 217
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public populateDNSAddressesForVPNNetwork(Lcom/cisco/anyconnect/nvm/common/VpnConfig;)V
    .locals 10

    .line 99
    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 102
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 106
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "NVMNetUtils"

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 107
    invoke-virtual {p1, v5}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v6

    .line 108
    invoke-virtual {p1, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    .line 110
    sget-object v7, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Interface Name :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 110
    invoke-static {v7, v4, v8}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    .line 112
    invoke-virtual {v5, v7}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    .line 120
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v0, "dns servers not set for vpn"

    invoke-static {p1, v4, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 126
    :cond_2
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DNS Servers for VPN : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v5, 0x0

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 133
    instance-of v7, v6, Ljava/net/Inet6Address;

    const-string v8, "IPV6 DNS Servers for VPN : "

    if-eqz v7, :cond_4

    if-ge v2, v0, :cond_3

    .line 135
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;->getIPV6Address(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 137
    sget-object v7, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v4, v8}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v2, 0x1

    .line 140
    aput-object v6, v1, v2

    move v2, v7

    goto :goto_2

    .line 142
    :cond_4
    instance-of v7, v6, Ljava/net/Inet4Address;

    if-eqz v7, :cond_3

    if-ge v5, v0, :cond_3

    .line 144
    sget-object v7, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 144
    invoke-static {v7, v4, v8}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v5, 0x1

    .line 147
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    move v5, v7

    goto :goto_2

    :cond_5
    return-void
.end method

.method public populateNetworkInfo(Lcom/cisco/anyconnect/nvm/common/VPNSharedState;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;->NIFCHANGE_INTF_DOWN:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->setNetworkInterfaceChange(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;)V

    .line 181
    sget-object v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;->NES_NO_PUBLIC_INTERFACE:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->setNetworkState(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;)V

    .line 183
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    .line 184
    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;->getVPNNetwork([Landroid/net/Network;)Landroid/net/Network;

    move-result-object v1

    if-nez v1, :cond_1

    .line 187
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_7

    .line 191
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v1, 0x4

    .line 193
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    sget-object v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;->NIFCHANGE_VPN_INTF_UP:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->setNetworkInterfaceChange(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 195
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 196
    :cond_4
    sget-object v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;->NIFCHANGE_INTF_UP:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->setNetworkInterfaceChange(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;)V

    :cond_5
    :goto_0
    const/16 v1, 0xc

    .line 199
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 200
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;->NES_NETWORK_ACCESSIBLE:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->setNetworkState(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;)V

    goto :goto_1

    .line 202
    :cond_6
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;->NES_NO_DNS_CONNECTIVITY:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->setNetworkState(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public setVpnAddress(Lcom/cisco/anyconnect/nvm/common/VpnConfig;)V
    .locals 7

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 62
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    .line 64
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 65
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 66
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v4

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    const/4 v6, 0x4

    .line 68
    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 71
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 72
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 74
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_1

    instance-of v6, v5, Ljava/net/Inet4Address;

    if-eqz v6, :cond_1

    .line 75
    new-instance v6, Lcom/cisco/anyconnect/nvm/common/VpnConfigV4;

    invoke-direct {v6}, Lcom/cisco/anyconnect/nvm/common/VpnConfigV4;-><init>()V

    .line 76
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/cisco/anyconnect/nvm/common/VpnConfigV4;->setClientAddr(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1, v6}, Lcom/cisco/anyconnect/nvm/common/VpnConfig;->setV4Config(Lcom/cisco/anyconnect/nvm/common/VpnConfigV4;)V

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_0

    instance-of v6, v5, Ljava/net/Inet6Address;

    if-eqz v6, :cond_0

    .line 79
    new-instance v6, Lcom/cisco/anyconnect/nvm/common/VpnConfigV6;

    invoke-direct {v6}, Lcom/cisco/anyconnect/nvm/common/VpnConfigV6;-><init>()V

    .line 80
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;->getIPV6Address(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/cisco/anyconnect/nvm/common/VpnConfigV6;->setClientAddr(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1, v6}, Lcom/cisco/anyconnect/nvm/common/VpnConfig;->setV6Config(Lcom/cisco/anyconnect/nvm/common/VpnConfigV6;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v1, "NVMNetUtils"

    const-string v2, "Exception while fetching vpn address : "

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

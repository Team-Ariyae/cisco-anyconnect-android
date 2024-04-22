.class public Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;
.super Ljava/lang/Object;
.source "NetworkInfoInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NetworkInfoInterface"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInterfaceList:[Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;

.field private mNVMNetUtils:Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 51
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;

    invoke-direct {v0, p1}, Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->mNVMNetUtils:Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Context is required for NetworkInfoInterface"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private enumerateNetworkInterfaces()V
    .locals 14

    const-string v0, "NetworkInfoInterface"

    const-string v1, "Number of Networks : "

    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 113
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 115
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v3

    .line 117
    array-length v4, v3

    new-array v4, v4, [Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;

    iput-object v4, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->mInterfaceList:[Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;

    .line 119
    sget-object v4, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v3

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v4, "Interface Information : \n"

    invoke-static {v1, v0, v4}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    array-length v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v1, :cond_d

    aget-object v7, v3, v5

    .line 126
    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v8

    .line 127
    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v9

    if-eqz v9, :cond_c

    if-nez v8, :cond_0

    goto/16 :goto_4

    .line 133
    :cond_0
    invoke-virtual {v8}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    goto/16 :goto_4

    .line 139
    :cond_1
    invoke-static {v8}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v8

    if-nez v8, :cond_2

    .line 142
    sget-object v7, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v8, "networkInterface is null "

    invoke-static {v7, v0, v8}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 146
    :cond_2
    iget-object v10, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->mInterfaceList:[Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;

    new-instance v11, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;

    invoke-direct {v11}, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;-><init>()V

    aput-object v11, v10, v6

    .line 147
    iget-object v10, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->mInterfaceList:[Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;

    aget-object v10, v10, v6

    invoke-virtual {v8}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->setInterfaceIndex(I)V

    .line 148
    iget-object v10, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->mInterfaceList:[Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;

    aget-object v10, v10, v6

    invoke-virtual {v8}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, v9}, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->getNetworkType(Landroid/net/NetworkCapabilities;)I

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_6

    if-eq v10, v11, :cond_4

    const/4 v12, 0x4

    if-eq v10, v12, :cond_3

    .line 164
    iget-object v10, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->mInterfaceList:[Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;

    aget-object v10, v10, v6

    sget-object v12, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$INTERFACE_TYPE;->INTERFACE_TYPE_UNKNOWN:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$INTERFACE_TYPE;

    invoke-virtual {v10, v12}, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->setInterfaceType(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$INTERFACE_TYPE;)V

    goto :goto_1

    .line 161
    :cond_3
    iget-object v10, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->mInterfaceList:[Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;

    aget-object v10, v10, v6

    sget-object v12, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$INTERFACE_TYPE;->INTERFACE_TYPE_VPN:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$INTERFACE_TYPE;

    invoke-virtual {v10, v12}, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->setInterfaceType(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$INTERFACE_TYPE;)V

    goto :goto_1

    :cond_4
    const/4 v10, 0x6

    .line 155
    invoke-virtual {v9, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    if-eqz v10, :cond_5

    goto/16 :goto_4

    .line 158
    :cond_5
    iget-object v10, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->mInterfaceList:[Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;

    aget-object v10, v10, v6

    sget-object v12, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$INTERFACE_TYPE;->INTERFACE_TYPE_WIRELESS:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$INTERFACE_TYPE;

    invoke-virtual {v10, v12}, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->setInterfaceType(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$INTERFACE_TYPE;)V

    goto :goto_1

    .line 152
    :cond_6
    iget-object v10, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->mInterfaceList:[Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;

    aget-object v10, v10, v6

    sget-object v12, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$INTERFACE_TYPE;->INTERFACE_TYPE_CELLULAR:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$INTERFACE_TYPE;

    invoke-virtual {v10, v12}, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->setInterfaceType(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$INTERFACE_TYPE;)V

    .line 167
    :goto_1
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 169
    invoke-virtual {v2, v10}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v12

    if-eqz v12, :cond_c

    .line 171
    invoke-direct {p0, v12}, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->getNetworkType(Landroid/net/NetworkCapabilities;)I

    move-result v12

    invoke-direct {p0, v9}, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->getNetworkType(Landroid/net/NetworkCapabilities;)I

    move-result v9

    if-ne v12, v9, :cond_7

    invoke-virtual {v10}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v9

    invoke-virtual {v7}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v12

    cmp-long v7, v9, v12

    if-nez v7, :cond_7

    .line 172
    iget-object v7, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->mInterfaceList:[Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;

    aget-object v7, v7, v6

    invoke-virtual {v7, v11}, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->setActiveInterface(Z)V

    .line 185
    :cond_7
    invoke-virtual {v8}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v7

    .line 186
    :cond_8
    :goto_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 187
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    .line 188
    invoke-virtual {v8}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v8}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v9

    if-nez v9, :cond_9

    instance-of v9, v8, Ljava/net/Inet4Address;

    if-eqz v9, :cond_9

    .line 190
    iget-object v9, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->mInterfaceList:[Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;

    aget-object v9, v9, v6

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->setIpV4Address(Ljava/lang/String;)V

    goto :goto_2

    .line 191
    :cond_9
    invoke-virtual {v8}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v8}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v9

    if-nez v9, :cond_8

    instance-of v9, v8, Ljava/net/Inet6Address;

    if-eqz v9, :cond_8

    .line 193
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x25

    .line 194
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_a

    .line 196
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 197
    :cond_a
    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 198
    :goto_3
    iget-object v9, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->mInterfaceList:[Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;

    aget-object v9, v9, v6

    invoke-virtual {v9, v8}, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->addIpV6Address(Ljava/lang/String;)V

    goto :goto_2

    .line 201
    :cond_b
    sget-object v7, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->mInterfaceList:[Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v0, v8}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    :cond_c
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 205
    sget-object v2, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v3, "Exception while fetching Interface Information : "

    invoke-static {v2, v0, v3, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method

.method private getNetworkType(Landroid/net/NetworkCapabilities;)I
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    .line 95
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 97
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public clean()I
    .locals 4

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->unregisterNetworkInfoInterface()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "NetworkInfoInterface"

    const-string v3, " Error while unregistering Network info interface "

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public declared-synchronized getInterfaceList()[Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;
    .locals 1

    monitor-enter p0

    .line 332
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->enumerateNetworkInterfaces()V

    .line 333
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->mInterfaceList:[Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSSID()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 217
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 221
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v1, :cond_0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v1, :cond_1

    .line 222
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 226
    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSearchDomains()[Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;
    .locals 10

    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 237
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 240
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 243
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    .line 245
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 247
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_7

    aget-object v5, v1, v4

    .line 248
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    goto/16 :goto_2

    .line 254
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 260
    :cond_2
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v6
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_3

    goto/16 :goto_2

    .line 269
    :cond_3
    :try_start_3
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 270
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 272
    invoke-virtual {v7}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_4

    .line 273
    instance-of v8, v7, Ljava/net/Inet4Address;

    if-eqz v8, :cond_5

    .line 274
    new-instance v8, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;

    invoke-direct {v8, p0}, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;-><init>(Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;)V

    .line 275
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;->setIpAddress(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;->setSearchDomains(Ljava/lang/String;)V

    .line 277
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v7, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v9, "NetworkInfoInterface"

    invoke-virtual {v8}, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v9, v8}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 279
    :cond_5
    instance-of v8, v7, Ljava/net/Inet6Address;

    if-eqz v8, :cond_4

    .line 280
    new-instance v8, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;

    invoke-direct {v8, p0}, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;-><init>(Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;)V

    .line 281
    iget-object v9, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->mNVMNetUtils:Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;->getIPV6Address(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;->setIpAddress(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;->setSearchDomains(Ljava/lang/String;)V

    .line 283
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v7, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v9, "NetworkInfoInterface"

    invoke-virtual {v8}, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v9, v8}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v5

    .line 265
    sget-object v6, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v7, "NetworkInfoInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while reading interface : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v5}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 265
    invoke-static {v6, v7, v5}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 290
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 292
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public init()I
    .locals 4

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->registerNetworkInfoInterface()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "NetworkInfoInterface"

    const-string v3, " Error while registering Network info interface "

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public native registerNetworkInfoInterface()I
.end method

.method public native unregisterNetworkInfoInterface()I
.end method

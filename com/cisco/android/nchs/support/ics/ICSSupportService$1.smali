.class Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;
.super Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;
.source "ICSSupportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/support/ics/ICSSupportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-direct {p0}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;-><init>()V

    return-void
.end method

.method private addSubnets(Lcom/cisco/anyconnect/vpn/network/IPSubnetList;)V
    .locals 4

    .line 200
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;

    .line 201
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Landroid/net/VpnService$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->address:Ljava/net/InetAddress;

    iget v3, v0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    invoke-virtual {v1, v2, v3}, Landroid/net/VpnService$Builder;->addRoute(Ljava/net/InetAddress;I)Landroid/net/VpnService$Builder;

    .line 202
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmVpnDebug(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;

    move-result-object v1

    iget-object v2, v0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->address:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    invoke-virtual {v1, v2, v0}, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->addAppliedRoute(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getKnoxVpnContext(Z)Landroid/content/Context;
    .locals 2

    .line 73
    new-instance v0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;

    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;-><init>(Landroid/content/Context;)V

    .line 74
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmKnoxProfile(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->setGenericVpnParams(Ljava/lang/String;Z)V

    .line 75
    iget-object p1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {p1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmKnoxEnableMeta(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->enableMetaData(Z)V

    return-object v0
.end method


# virtual methods
.method public addAddress(Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Landroid/net/VpnService$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 160
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmVpnDebug(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->addAddress(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public addAppIds(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmAppIds(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fputmAppIds(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Ljava/util/List;)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmAppIds(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public addDnsServer(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Landroid/net/VpnService$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 174
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmDnsServers(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmVpnDebug(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->addDnsServer(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addRoute(Ljava/lang/String;IZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmSubnetManager(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/network/IPSubnet;

    invoke-direct {v1, p1, p2}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, p3}, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->addSubnet(Lcom/cisco/anyconnect/vpn/network/IPSubnet;Z)V

    .line 183
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmVpnDebug(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->addRoute(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Invalid subnet"

    .line 185
    invoke-static {p0, p2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public addSearchDomain(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Landroid/net/VpnService$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/VpnService$Builder;->addSearchDomain(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 194
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmVpnDebug(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->addDnsSearch(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0, p1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fputmDnsSearch(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public allowFamily(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Landroid/net/VpnService$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/VpnService$Builder;->allowFamily(I)Landroid/net/VpnService$Builder;

    .line 167
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmVpnDebug(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;

    move-result-object v0

    iput p1, v0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->allowFamily:I

    const/4 p1, 0x1

    return p1
.end method

.method public establish()Landroid/os/ParcelFileDescriptor;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "IPv6 Exclude subnet list too large: "

    const-string v1, "IPv4 Exclude subnet list too large: "

    .line 218
    iget-object v2, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fputmIsIPv4SplitExcludeFailed(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Z)V

    .line 219
    iget-object v2, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v2, v3}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fputmIsIPv6SplitExcludeFailed(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Z)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 225
    :try_start_0
    iget-object v5, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v5}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmSubnetManager(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->getIncludeIPv4()Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->isDefaultRoute()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v6, 0x3e8

    const-string v7, "Inverted subnet list too large: "

    if-eqz v5, :cond_2

    :try_start_1
    iget-object v5, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v5}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmSubnetManager(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->hasExcludeIPv4()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 227
    iget-object v5, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v5}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmSubnetManager(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->getExcludeIPv4()Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    move-result-object v5

    .line 229
    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->size()I

    move-result v8

    const/16 v9, 0x64

    if-le v8, v9, :cond_0

    .line 230
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->size()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v1, v4}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fputmIsIPv4SplitExcludeFailed(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Z)V

    goto :goto_0

    .line 233
    :cond_0
    new-instance v1, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;

    invoke-direct {v1, v5, v2}, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;-><init>(Lcom/cisco/anyconnect/vpn/network/IPSubnetList;Lcom/cisco/anyconnect/vpn/network/IPSubnetList;)V

    .line 234
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->invert()Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->size()I

    move-result v5

    if-le v5, v6, :cond_1

    .line 236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v1, v4}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fputmIsIPv4SplitExcludeFailed(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 240
    :cond_1
    :try_start_2
    invoke-direct {p0, v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->addSubnets(Lcom/cisco/anyconnect/vpn/network/IPSubnetList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v1, "Add exclude IPv4 routes failed. Falling back to include"

    .line 243
    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    .line 250
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmSubnetManager(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->getIncludeIPv4()Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->addSubnets(Lcom/cisco/anyconnect/vpn/network/IPSubnetList;)V

    .line 253
    :cond_3
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmSubnetManager(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->getIncludeIPv6()Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->isDefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmSubnetManager(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->hasExcludeIPv6()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 255
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmSubnetManager(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->getExcludeIPv6()Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->size()I

    move-result v5

    const/16 v8, 0x14

    if-le v5, v8, :cond_4

    .line 258
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0, v4}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fputmIsIPv6SplitExcludeFailed(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Z)V

    goto :goto_2

    .line 261
    :cond_4
    new-instance v0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;-><init>(Lcom/cisco/anyconnect/vpn/network/IPSubnetList;Lcom/cisco/anyconnect/vpn/network/IPSubnetList;)V

    .line 262
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->invert()Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->size()I

    move-result v1

    if-le v1, v6, :cond_5

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0, v4}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fputmIsIPv6SplitExcludeFailed(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 268
    :cond_5
    :try_start_4
    invoke-direct {p0, v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->addSubnets(Lcom/cisco/anyconnect/vpn/network/IPSubnetList;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v0, 0x0

    goto :goto_3

    :catch_1
    :try_start_5
    const-string v0, "Add exclude IPv6 routes failed. Falling back to include"

    .line 271
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_7

    .line 278
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmSubnetManager(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->getIncludeIPv6()Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->addSubnets(Lcom/cisco/anyconnect/vpn/network/IPSubnetList;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v1, "bad exc"

    .line 282
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmActiveConnectionTracker(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;->getActiveConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v0

    .line 286
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    iget-object v5, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-direct {v1, v5}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->setVpnAllowedApps(Ljava/util/List;)Z

    .line 288
    invoke-static {}, Lcom/cisco/android/nchs/permissions/Prerequisites;->hasAndroidForWork()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 291
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmAppIds(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Ljava/util/List;

    move-result-object v1

    const-string v5, "ICSSupportService"

    if-eqz v1, :cond_e

    .line 293
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v6, "adding default routes for app tunneling"

    invoke-static {v1, v5, v6}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Landroid/net/VpnService$Builder;

    move-result-object v1

    const-string v6, "0.0.0.0"

    invoke-virtual {v1, v6, v3}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 295
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Landroid/net/VpnService$Builder;

    move-result-object v1

    const-string v6, "::"

    invoke-virtual {v1, v6, v3}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 301
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmAppIds(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_b

    .line 303
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetType()Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v6

    sget-object v7, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Android_Work:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    if-ne v6, v7, :cond_b

    .line 305
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->getTunnelApplications()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 306
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 307
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v7, "applying managed profile\'s allowed applications."

    invoke-static {v1, v5, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    .line 311
    :cond_8
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->getDisallowedApplications()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 313
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_9

    const-string v6, "Perapp VPN policy conflict. Ignoring disallowed apps because allowed apps are specified"

    .line 314
    invoke-static {p0, v6}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    const-string v2, "applying managed profile\'s disallowed applications."

    .line 317
    invoke-static {p0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    move-object v2, v6

    :cond_b
    :goto_5
    if-eqz v2, :cond_c

    .line 324
    :try_start_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 325
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding exclude app: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    iget-object v7, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v7}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Landroid/net/VpnService$Builder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "addDisallowedApplication"

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 327
    iget-object v8, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v8}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Landroid/net/VpnService$Builder;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v6, v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v7, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v7}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmVpnDebug(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->addDisallowedApp(Ljava/lang/String;)V

    goto :goto_6

    .line 333
    :cond_c
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    iget-object v6, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-direct {v2, v6}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->setVpnAllowedApps(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "Failed to set allowed apps"

    .line 335
    invoke-static {p0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    :cond_d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 339
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding include app: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    iget-object v6, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v6}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Landroid/net/VpnService$Builder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "addAllowedApplication"

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 341
    iget-object v7, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v7}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Landroid/net/VpnService$Builder;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v2, v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v6, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v6}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmVpnDebug(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->addAllowedApp(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    :catch_3
    move-exception v1

    .line 345
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "configure for per-app failed VPN failed"

    invoke-static {v2, v5, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    if-eqz v0, :cond_f

    .line 351
    :try_start_7
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->getIsBypassAllowed()Z

    move-result v0

    .line 352
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmVpnDebug(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;

    move-result-object v1

    iput-boolean v0, v1, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->allowBypass:Z

    if-eqz v0, :cond_f

    .line 355
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Landroid/net/VpnService$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "allowBypass"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Landroid/net/VpnService$Builder;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    .line 360
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Failed to configure bypass"

    invoke-static {v1, v5, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    :cond_f
    :goto_8
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Landroid/net/VpnService$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmDnsServers(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v3}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmDnsSearch(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cisco/android/nchs/support/VpnConfigBroadcast;->onConfigDns(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    new-instance v2, Landroid/net/VpnService$Builder;

    iget-object v3, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-direct {v2, v3}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    invoke-static {v1, v2}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fputmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Landroid/net/VpnService$Builder;)V

    .line 368
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmSubnetManager(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->clear()V

    .line 369
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmVpnDebug(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->GetDebugDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->writeFile(Ljava/io/File;)V

    .line 370
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    new-instance v2, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;

    invoke-direct {v2}, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;-><init>()V

    invoke-static {v1, v2}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fputmVpnDebug(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;)V

    return-object v0
.end method

.method public isIPv4SplitExcludeFailed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmIsIPv4SplitExcludeFailed(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Z

    move-result v0

    return v0
.end method

.method public isIPv6SplitExcludeFailed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmIsIPv6SplitExcludeFailed(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isKnoxManagedAppTunnel()Z
    .locals 3

    monitor-enter p0

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmActiveConnectionTracker(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/ActiveVpnConnectionTracker;->getActiveConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 474
    monitor-exit p0

    return v1

    .line 477
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetType()Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v0

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Knox_AppTunnel:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isKnoxMetaEnabled()Z
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmKnoxEnableMeta(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Z

    move-result v0

    return v0
.end method

.method public prepare()Landroid/content/Intent;
    .locals 3

    .line 81
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "preparing VPN"

    const-string v2, "ICSSupportService"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmKnoxProfile(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 86
    invoke-direct {p0, v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->getKnoxVpnContext(Z)Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    :goto_0
    :try_start_0
    invoke-static {v0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 100
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Failed to enable Knox metadata. Falling back."

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fputmKnoxEnableMeta(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Z)V

    .line 102
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public protect(Landroid/os/ParcelFileDescriptor;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    invoke-static {p1}, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection$ParcelFileDescriptorReflector;->getFD(Landroid/os/ParcelFileDescriptor;)I

    move-result p1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 149
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "ICSSupportService"

    const-string v1, "getFD failed"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-virtual {v0, p1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->protect(I)Z

    move-result p1

    return p1
.end method

.method public restore()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fputmAppIds(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Ljava/util/List;)V

    .line 110
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmDnsServers(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fputmDnsSearch(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/VpnConfigBroadcast;->onRestoreDns(Landroid/content/Context;)V

    .line 114
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    new-instance v2, Landroid/net/VpnService$Builder;

    iget-object v3, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-direct {v2, v3}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    invoke-static {v0, v2}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fputmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Landroid/net/VpnService$Builder;)V

    .line 119
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmKnoxProfile(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ICSSupportService"

    if-nez v0, :cond_0

    .line 121
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "No Knox profile; no restore necessary."

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "restoring Knox VPN"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmKnoxEnableMeta(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 130
    invoke-direct {p0, v2}, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->getKnoxVpnContext(Z)Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 138
    :goto_0
    iget-object v3, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v3, v2}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fputmKnoxEnableMeta(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Z)V

    .line 139
    iget-object v2, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v2, v1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fputmKnoxProfile(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Ljava/lang/String;)V

    .line 141
    invoke-static {v0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    return-void
.end method

.method public setConfigureIntent(Landroid/app/PendingIntent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Landroid/net/VpnService$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/VpnService$Builder;->setConfigureIntent(Landroid/app/PendingIntent;)Landroid/net/VpnService$Builder;

    const/4 p1, 0x1

    return p1
.end method

.method public setDirectProxy(Ljava/lang/String;ILjava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    if-eqz p3, :cond_1

    .line 399
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Landroid/net/VpnService$Builder;

    move-result-object v0

    invoke-static {p1, p2, p3}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/VpnService$Builder;->setHttpProxy(Landroid/net/ProxyInfo;)Landroid/net/VpnService$Builder;

    goto :goto_1

    .line 400
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Landroid/net/VpnService$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/VpnService$Builder;->setHttpProxy(Landroid/net/ProxyInfo;)Landroid/net/VpnService$Builder;

    .line 405
    :goto_1
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmVpnDebug(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->setDirectProxy(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_2

    :cond_2
    const-string p1, "Direct proxy is configured not supported on this version of Android"

    .line 407
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public setKnoxParams(Ljava/lang/String;Z)V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0, p1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fputmKnoxProfile(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0, p2}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fputmKnoxEnableMeta(Lcom/cisco/android/nchs/support/ics/ICSSupportService;Z)V

    .line 446
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmVpnDebug(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;

    move-result-object v0

    iput-object p1, v0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->knoxProfileName:Ljava/lang/String;

    .line 447
    iget-object p1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {p1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmVpnDebug(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;

    move-result-object p1

    iput-boolean p2, p1, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->knoxMetaEnabled:Z

    return-void
.end method

.method public setMtu(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Landroid/net/VpnService$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    .line 384
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmVpnDebug(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;

    move-result-object v0

    iput p1, v0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->mtu:I

    const/4 p1, 0x1

    return p1
.end method

.method public setPACProxy(Ljava/lang/String;)Z
    .locals 4

    .line 414
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    const-string v0, "https"

    .line 416
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x1bb

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "http"

    .line 418
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x50

    goto :goto_0

    :cond_1
    const-string v0, "Defaulting PAC proxy port to 443"

    .line 421
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    :goto_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    const-string v2, "UserPreferences_NCHS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "DisablePACProxy"

    .line 425
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "PAC URL Proxy is not applied as this feature is disabled"

    .line 427
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Landroid/net/VpnService$Builder;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;I)Landroid/net/ProxyInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/VpnService$Builder;->setHttpProxy(Landroid/net/ProxyInfo;)Landroid/net/VpnService$Builder;

    goto :goto_1

    :cond_3
    const-string p1, "PAC URL Proxy is configured, but not supported on this version of Android"

    .line 434
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public setSession(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmBuilder(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Landroid/net/VpnService$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 391
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$1;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$fgetmVpnDebug(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;

    move-result-object v0

    iput-object p1, v0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->session:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

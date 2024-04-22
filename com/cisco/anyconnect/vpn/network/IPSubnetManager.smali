.class public Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;
.super Ljava/lang/Object;
.source "IPSubnetManager.java"


# instance fields
.field private final mIPv4ExcludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

.field private final mIPv4IncludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

.field private final mIPv6ExcludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

.field private final mIPv6IncludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;-><init>(Z)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv4IncludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    .line 10
    new-instance v0, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;-><init>(Z)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv6IncludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    .line 11
    new-instance v0, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;-><init>(Z)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv4ExcludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    .line 12
    new-instance v0, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-direct {v0, v2}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;-><init>(Z)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv6ExcludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    return-void
.end method


# virtual methods
.method public addSubnet(Lcom/cisco/anyconnect/vpn/network/IPSubnet;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->isIPv6()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 17
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv6ExcludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {p2, p1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->add(Lcom/cisco/anyconnect/vpn/network/IPSubnet;)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv4ExcludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {p2, p1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->add(Lcom/cisco/anyconnect/vpn/network/IPSubnet;)V

    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->isIPv6()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 23
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv6IncludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {p2, p1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->add(Lcom/cisco/anyconnect/vpn/network/IPSubnet;)V

    goto :goto_0

    .line 25
    :cond_2
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv4IncludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {p2, p1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->add(Lcom/cisco/anyconnect/vpn/network/IPSubnet;)V

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv4IncludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->clear()V

    .line 32
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv6IncludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->clear()V

    .line 33
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv4ExcludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->clear()V

    .line 34
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv6ExcludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->clear()V

    return-void
.end method

.method public getExcludeIPv4()Lcom/cisco/anyconnect/vpn/network/IPSubnetList;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv4ExcludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    return-object v0
.end method

.method public getExcludeIPv6()Lcom/cisco/anyconnect/vpn/network/IPSubnetList;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv6ExcludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    return-object v0
.end method

.method public getIncludeIPv4()Lcom/cisco/anyconnect/vpn/network/IPSubnetList;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv4IncludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    return-object v0
.end method

.method public getIncludeIPv6()Lcom/cisco/anyconnect/vpn/network/IPSubnetList;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv6IncludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    return-object v0
.end method

.method public hasExcludeIPv4()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv4ExcludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExcludeIPv6()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv6ExcludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIncludeIPv4()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv4IncludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIncludeIPv6()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv6IncludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public log()V
    .locals 2

    const-string v0, "Include Subnets"

    .line 38
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv4IncludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/network/IPSubnet;

    .line 40
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv6IncludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/network/IPSubnet;

    .line 43
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "Exclude Subnets"

    .line 46
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv4ExcludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/network/IPSubnet;

    .line 48
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetManager;->mIPv6ExcludeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/network/IPSubnet;

    .line 51
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    return-void
.end method

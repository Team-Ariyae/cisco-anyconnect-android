.class public Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;
.super Ljava/lang/Object;
.source "IPSubnetInverter.java"


# instance fields
.field private mLongestPrefix:I

.field private final mOriginalSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

.field private final mOutSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

.field mQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/network/IPSubnet;",
            ">;"
        }
    .end annotation
.end field

.field private final mScopeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;


# direct methods
.method public constructor <init>(Lcom/cisco/anyconnect/vpn/network/IPSubnetList;Lcom/cisco/anyconnect/vpn/network/IPSubnetList;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->mQ:Ljava/util/List;

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->mLongestPrefix:I

    .line 22
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->mOriginalSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    if-nez p2, :cond_0

    .line 25
    new-instance p2, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->isIPv4()Z

    move-result v0

    invoke-direct {p2, v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;-><init>(Z)V

    .line 28
    :cond_0
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->mScopeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    .line 30
    new-instance p2, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->isIPv4()Z

    move-result v0

    invoke-direct {p2, v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;-><init>(Z)V

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->mOutSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    .line 32
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/anyconnect/vpn/network/IPSubnet;

    .line 33
    iget v0, p2, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    iget v1, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->mLongestPrefix:I

    if-le v0, v1, :cond_1

    .line 34
    iget p2, p2, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    iput p2, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->mLongestPrefix:I

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method checkPartialRoute(Lcom/cisco/anyconnect/vpn/network/IPSubnet;)V
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->mScopeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->empty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->mScopeSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cisco/anyconnect/vpn/network/IPSubnet;

    .line 49
    invoke-virtual {v3, p1}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->includes(Lcom/cisco/anyconnect/vpn/network/IPSubnet;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    return-void

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->mOriginalSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/network/IPSubnet;

    .line 61
    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->includes(Lcom/cisco/anyconnect/vpn/network/IPSubnet;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_7

    .line 71
    iget v0, v1, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    iget v1, p1, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    if-gt v0, v1, :cond_6

    return-void

    .line 75
    :cond_6
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->mQ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 79
    :cond_7
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->mOutSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->add(Lcom/cisco/anyconnect/vpn/network/IPSubnet;)V

    :goto_3
    return-void
.end method

.method public getExcludeRoutes()Lcom/cisco/anyconnect/vpn/network/IPSubnetList;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->mOriginalSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    return-object v0
.end method

.method public invert()Lcom/cisco/anyconnect/vpn/network/IPSubnetList;
    .locals 4

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->mOriginalSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->isIPv4()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->mQ:Ljava/util/List;

    new-instance v2, Lcom/cisco/anyconnect/vpn/network/IPSubnet;

    const-string v3, "0.0.0.0"

    invoke-direct {v2, v3, v1}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->mQ:Ljava/util/List;

    new-instance v2, Lcom/cisco/anyconnect/vpn/network/IPSubnet;

    const-string v3, "::"

    invoke-direct {v2, v3, v1}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->mQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->mQ:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;

    .line 99
    iget v2, v0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    iget v3, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->mLongestPrefix:I

    if-lt v2, v3, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->extendPrefixWithBit1()Lcom/cisco/anyconnect/vpn/network/IPSubnet;

    move-result-object v2

    .line 105
    invoke-virtual {p0, v2}, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->checkPartialRoute(Lcom/cisco/anyconnect/vpn/network/IPSubnet;)V

    .line 107
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->extendPrefixWithBit0()Lcom/cisco/anyconnect/vpn/network/IPSubnet;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->checkPartialRoute(Lcom/cisco/anyconnect/vpn/network/IPSubnet;)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->mOutSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Unexpected UnknownHostException"

    .line 91
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetInverter;->mOutSubnets:Lcom/cisco/anyconnect/vpn/network/IPSubnetList;

    return-object v0
.end method

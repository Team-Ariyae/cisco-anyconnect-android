.class public Lcom/cisco/anyconnect/vpn/network/IPSubnetList;
.super Ljava/lang/Object;
.source "IPSubnetList.java"


# instance fields
.field private final mIsIPv4:Z

.field private final mSubnets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/network/IPSubnet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->mSubnets:Ljava/util/List;

    .line 19
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->mIsIPv4:Z

    return-void
.end method


# virtual methods
.method public add(Lcom/cisco/anyconnect/vpn/network/IPSubnet;)V
    .locals 3

    const/4 v0, 0x0

    .line 24
    :goto_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->mSubnets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 25
    iget v1, p1, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->mSubnets:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/network/IPSubnet;

    iget v2, v2, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->mSubnets:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->mSubnets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public empty()Z
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDefaultRoute()Z
    .locals 3

    .line 41
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->mSubnets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;

    .line 47
    iget v0, v0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isIPv4()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->mIsIPv4:Z

    return v0
.end method

.method public isIPv6()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->mIsIPv4:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/network/IPSubnet;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->mSubnets:Ljava/util/List;

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IPSubnetList "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->mSubnets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->mSubnets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;

    .line 36
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public matches(Ljava/net/InetAddress;)Z
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->mSubnets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/network/IPSubnet;

    .line 76
    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->matches(Ljava/net/InetAddress;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->mSubnets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnetList;->mSubnets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/network/IPSubnet;

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

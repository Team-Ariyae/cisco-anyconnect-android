.class public Lcom/cisco/anyconnect/vpn/network/IPSubnet;
.super Ljava/lang/Object;
.source "IPSubnet.java"


# instance fields
.field public address:Ljava/net/InetAddress;

.field public prefix:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/"

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 29
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    const/4 v0, 0x0

    .line 30
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iget v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->getCanonicSubnetAddress(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->address:Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->getCanonicSubnetAddress(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->address:Ljava/net/InetAddress;

    .line 14
    iput p2, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->getCanonicSubnetAddress(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->address:Ljava/net/InetAddress;

    .line 19
    iput p2, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->getCanonicSubnetAddress(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->address:Ljava/net/InetAddress;

    .line 24
    iput p2, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    return-void
.end method

.method public static getCanonicSubnetAddress(Ljava/net/InetAddress;I)Ljava/net/InetAddress;
    .locals 4

    .line 38
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    .line 39
    array-length v0, p0

    new-array v0, v0, [B

    .line 41
    div-int/lit8 v1, p1, 0x8

    and-int/lit8 p1, p1, 0x7

    const v2, 0xff00

    shr-int p1, v2, p1

    int-to-byte p1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 45
    aget-byte v3, p0, v2

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 49
    aget-byte p0, p0, v1

    and-int/2addr p0, p1

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    .line 53
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method extendPrefixWithBit0()Lcom/cisco/anyconnect/vpn/network/IPSubnet;
    .locals 3

    .line 86
    :try_start_0
    new-instance v0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->address:Ljava/net/InetAddress;

    iget v2, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method extendPrefixWithBit1()Lcom/cisco/anyconnect/vpn/network/IPSubnet;
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 95
    array-length v1, v0

    new-array v1, v1, [B

    .line 97
    iget v2, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    div-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 99
    aget-byte v4, v0, v3

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iget v3, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    rem-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1

    const/16 v0, -0x80

    .line 107
    aput-byte v0, v1, v2

    goto :goto_1

    .line 109
    :cond_1
    aget-byte v0, v0, v2

    const/16 v4, 0x80

    shr-int v3, v4, v3

    int-to-byte v3, v3

    or-int/2addr v0, v3

    int-to-byte v0, v0

    .line 111
    aput-byte v0, v1, v2

    .line 121
    :goto_1
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/cisco/anyconnect/vpn/network/IPSubnet;

    iget v2, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public includes(Lcom/cisco/anyconnect/vpn/network/IPSubnet;)Z
    .locals 3

    .line 129
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->isIPv6()Z

    move-result v0

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->isIPv6()Z

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 133
    :cond_0
    iget v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    iget v1, p1, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    if-le v0, v1, :cond_1

    return v2

    .line 137
    :cond_1
    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->address:Ljava/net/InetAddress;

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->matches(Ljava/net/InetAddress;)Z

    move-result p1

    return p1
.end method

.method public isIPv6()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->address:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    return v0
.end method

.method public matches(Ljava/net/InetAddress;)Z
    .locals 7

    .line 61
    iget v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    if-gez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, p1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 65
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 68
    iget v1, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    div-int/lit8 v2, v1, 0x8

    and-int/lit8 v1, v1, 0x7

    const v3, 0xff00

    shr-int v1, v3, v1

    int-to-byte v1, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 72
    aget-byte v5, p1, v4

    aget-byte v6, v0, v4

    if-eq v5, v6, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 78
    aget-byte p1, p1, v2

    and-int/2addr p1, v1

    aget-byte v0, v0, v2

    and-int/2addr v0, v1

    if-ne p1, v0, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3

    :cond_4
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cisco/anyconnect/vpn/network/IPSubnet;->prefix:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

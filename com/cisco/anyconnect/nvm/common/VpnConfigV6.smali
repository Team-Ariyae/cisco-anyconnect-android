.class public Lcom/cisco/anyconnect/nvm/common/VpnConfigV6;
.super Ljava/lang/Object;
.source "VpnConfigV6.java"


# instance fields
.field private mClientAddr:Ljava/lang/String;

.field private mDnsServers:[C

.field private mSplitDns:Z

.field private mSplitIncludeNetworks:[C

.field private mTunnelType:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$VpnTunnelType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 21
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/common/VpnConfigV6;->mDnsServers:[C

    const/16 v0, 0x9c4

    new-array v0, v0, [C

    .line 22
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/common/VpnConfigV6;->mSplitIncludeNetworks:[C

    .line 27
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$VpnTunnelType;->VTT_UNDEFINED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$VpnTunnelType;

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/common/VpnConfigV6;->mTunnelType:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$VpnTunnelType;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/cisco/anyconnect/nvm/common/VpnConfigV6;->mSplitDns:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized setClientAddr(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 48
    :try_start_0
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/VpnConfigV6;->mClientAddr:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDnsServers([C)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/VpnConfigV6;->mDnsServers:[C

    return-void
.end method

.method public setSplitDns(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/cisco/anyconnect/nvm/common/VpnConfigV6;->mSplitDns:Z

    return-void
.end method

.method public setSplitIncludeNetworks([C)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/VpnConfigV6;->mSplitIncludeNetworks:[C

    return-void
.end method

.method public setVpnTunnelType(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$VpnTunnelType;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/VpnConfigV6;->mTunnelType:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$VpnTunnelType;

    return-void
.end method

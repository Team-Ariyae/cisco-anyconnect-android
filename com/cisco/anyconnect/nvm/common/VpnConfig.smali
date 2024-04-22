.class public Lcom/cisco/anyconnect/nvm/common/VpnConfig;
.super Ljava/lang/Object;
.source "VpnConfig.java"


# instance fields
.field private mConfigV4:Lcom/cisco/anyconnect/nvm/common/VpnConfigV4;

.field private mConfigV6:Lcom/cisco/anyconnect/nvm/common/VpnConfigV6;

.field private mSplitDnsDomains:[C

.field private mTunnelAllDns:Z

.field private mTunnelState:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [C

    .line 23
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/common/VpnConfig;->mSplitDnsDomains:[C

    .line 27
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->STATE_UNDEFINED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/common/VpnConfig;->mTunnelState:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/cisco/anyconnect/nvm/common/VpnConfig;->mTunnelAllDns:Z

    .line 29
    new-instance v0, Lcom/cisco/anyconnect/nvm/common/VpnConfigV4;

    invoke-direct {v0}, Lcom/cisco/anyconnect/nvm/common/VpnConfigV4;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/common/VpnConfig;->mConfigV4:Lcom/cisco/anyconnect/nvm/common/VpnConfigV4;

    .line 30
    new-instance v0, Lcom/cisco/anyconnect/nvm/common/VpnConfigV6;

    invoke-direct {v0}, Lcom/cisco/anyconnect/nvm/common/VpnConfigV6;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/common/VpnConfig;->mConfigV6:Lcom/cisco/anyconnect/nvm/common/VpnConfigV6;

    return-void
.end method


# virtual methods
.method public getState()Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/common/VpnConfig;->mTunnelState:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    return-object v0
.end method

.method public setState(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/VpnConfig;->mTunnelState:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    return-void
.end method

.method public setV4Config(Lcom/cisco/anyconnect/nvm/common/VpnConfigV4;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/VpnConfig;->mConfigV4:Lcom/cisco/anyconnect/nvm/common/VpnConfigV4;

    return-void
.end method

.method public setV6Config(Lcom/cisco/anyconnect/nvm/common/VpnConfigV6;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/VpnConfig;->mConfigV6:Lcom/cisco/anyconnect/nvm/common/VpnConfigV6;

    return-void
.end method

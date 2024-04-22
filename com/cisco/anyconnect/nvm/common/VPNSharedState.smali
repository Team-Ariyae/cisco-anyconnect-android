.class public Lcom/cisco/anyconnect/nvm/common/VPNSharedState;
.super Lcom/cisco/anyconnect/nvm/common/VpnConfig;
.source "VPNSharedState.java"


# static fields
.field private static vpnSharedState:Lcom/cisco/anyconnect/nvm/common/VPNSharedState;


# instance fields
.field private mNetworkIfChange:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

.field private mNetworkState:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

.field private mNetworkTNDType:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

.field private mUserSessionChange:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;

.field private mVpnConfig:Lcom/cisco/anyconnect/nvm/common/VpnConfig;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/common/VpnConfig;-><init>()V

    .line 31
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;->NES_NO_NETWORK_INTERFACE:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->mNetworkState:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    .line 32
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;->NIFCHANGE_NONE:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->mNetworkIfChange:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    .line 33
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;->USERSESSION_CHANGE_NONE:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->mUserSessionChange:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;

    .line 34
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;->NT_UNDEFINED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->mNetworkTNDType:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    .line 35
    new-instance v0, Lcom/cisco/anyconnect/nvm/common/VpnConfig;

    invoke-direct {v0}, Lcom/cisco/anyconnect/nvm/common/VpnConfig;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->mVpnConfig:Lcom/cisco/anyconnect/nvm/common/VpnConfig;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/cisco/anyconnect/nvm/common/VPNSharedState;
    .locals 2

    const-class v0, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->vpnSharedState:Lcom/cisco/anyconnect/nvm/common/VPNSharedState;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;

    invoke-direct {v1}, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;-><init>()V

    sput-object v1, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->vpnSharedState:Lcom/cisco/anyconnect/nvm/common/VPNSharedState;

    .line 43
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->vpnSharedState:Lcom/cisco/anyconnect/nvm/common/VPNSharedState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getNetworkType()Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->mNetworkTNDType:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    return-object v0
.end method

.method public getVpnConfig()Lcom/cisco/anyconnect/nvm/common/VpnConfig;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->mVpnConfig:Lcom/cisco/anyconnect/nvm/common/VpnConfig;

    return-object v0
.end method

.method public setNetworkInterfaceChange(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->mNetworkIfChange:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    return-void
.end method

.method public setNetworkState(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->mNetworkState:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETENV_STATE;

    return-void
.end method

.method public setNetworkType(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->mNetworkTNDType:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    return-void
.end method

.method public setUserSessionChange(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->mUserSessionChange:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$UserSessionChange;

    return-void
.end method

.method public setVpnConfig(Lcom/cisco/anyconnect/nvm/common/VpnConfig;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->mVpnConfig:Lcom/cisco/anyconnect/nvm/common/VpnConfig;

    return-void
.end method

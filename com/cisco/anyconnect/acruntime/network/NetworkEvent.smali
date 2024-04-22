.class public Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;
.super Ljava/lang/Object;
.source "NetworkEvent.java"


# instance fields
.field private mNetEnvState:I

.field private mNetworkEventType:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

.field private mNetworkInterfaceChange:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;->NETWORK_EVENT_NONE:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

    iput-object v0, p0, Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;->mNetworkEventType:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

    .line 26
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;->NETIFNT_UNDEFINED:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    iput-object v0, p0, Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;->mNetworkInterfaceChange:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    .line 27
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;->NET_STATE_UNKNOWN:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;->getValue()I

    move-result v0

    iput v0, p0, Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;->mNetEnvState:I

    return-void
.end method


# virtual methods
.method public getNetEnvState()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;->mNetEnvState:I

    return v0
.end method

.method public getNetworkEventType()Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;->mNetworkEventType:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

    return-object v0
.end method

.method public getNetworkInterfaceChange()Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;->mNetworkInterfaceChange:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    return-object v0
.end method

.method public setNetEnvState(I)V
    .locals 1

    .line 54
    iget v0, p0, Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;->mNetEnvState:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;->mNetEnvState:I

    return-void
.end method

.method public setNetworkEventType(Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;->mNetworkEventType:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

    return-void
.end method

.method public setNetworkInterfaceChange(Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;->mNetworkInterfaceChange:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    return-void
.end method

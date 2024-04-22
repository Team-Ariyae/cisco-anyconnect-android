.class Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback$2;
.super Ljava/lang/Object;
.source "RuntimeNetworkMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;->onLost(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback$2;->this$1:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 173
    new-instance v0, Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;

    invoke-direct {v0}, Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;-><init>()V

    .line 174
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;->INTERFACE_CHANGE_EVENT:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;->setNetworkEventType(Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;)V

    .line 175
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;->NETIFNT_INTERFACE_DOWN:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;->setNetworkInterfaceChange(Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;)V

    .line 176
    iget-object v1, p0, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback$2;->this$1:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;

    iget-object v1, v1, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor$NetworkStateCallback;->this$0:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;

    invoke-virtual {v1, v0}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->notifyNetworkEvent(Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;)V

    return-void
.end method

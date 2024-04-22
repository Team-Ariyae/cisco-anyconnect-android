.class Lcom/cisco/anyconnect/vpn/agent/VpnAgentService$1;
.super Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService$Stub;
.source "VpnAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService$1;->this$0:Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startAgent()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService$1;->this$0:Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;->-$$Nest$mhandleStartAgent(Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;)Z

    move-result v0

    return v0
.end method

.method public stopAgent()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService$1;->this$0:Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;->-$$Nest$mhandleStopAgent(Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;)V

    return-void
.end method

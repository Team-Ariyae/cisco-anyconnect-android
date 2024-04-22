.class Lcom/cisco/anyconnect/vpn/agent/VpnAgent$1;
.super Ljava/lang/Object;
.source "VpnAgent.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/agent/VpnAgent;->start(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/agent/VpnAgent;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/agent/VpnAgent;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgent$1;->this$0:Lcom/cisco/anyconnect/vpn/agent/VpnAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgent$1;->this$0:Lcom/cisco/anyconnect/vpn/agent/VpnAgent;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/agent/VpnAgent;->-$$Nest$mstartAgentNative(Lcom/cisco/anyconnect/vpn/agent/VpnAgent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failed to start VPN agent"

    .line 29
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/agent/VpnAgent$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

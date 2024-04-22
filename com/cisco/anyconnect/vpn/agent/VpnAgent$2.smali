.class Lcom/cisco/anyconnect/vpn/agent/VpnAgent$2;
.super Ljava/lang/Object;
.source "VpnAgent.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/agent/VpnAgent;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/agent/VpnAgent;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/agent/VpnAgent;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgent$2;->this$0:Lcom/cisco/anyconnect/vpn/agent/VpnAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/agent/VpnAgent$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgent$2;->this$0:Lcom/cisco/anyconnect/vpn/agent/VpnAgent;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/agent/VpnAgent;->-$$Nest$mstopAgentNative(Lcom/cisco/anyconnect/vpn/agent/VpnAgent;)V

    const/4 v0, 0x0

    return-object v0
.end method

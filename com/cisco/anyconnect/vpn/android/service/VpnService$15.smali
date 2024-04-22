.class Lcom/cisco/anyconnect/vpn/android/service/VpnService$15;
.super Ljava/lang/Object;
.source "VpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnService;->onActivePromptHandlerChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V
    .locals 0

    .line 4382
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$15;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "active prompt handler changed"

    .line 4385
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    .line 4386
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$15;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmStateMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->OnPromptHandlerChange()V

    .line 4388
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$15;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmPromptHandlerMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->getActivePromptHandler()Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4390
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$15;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mdispatchPendingPrompt(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V

    :cond_0
    return-void
.end method

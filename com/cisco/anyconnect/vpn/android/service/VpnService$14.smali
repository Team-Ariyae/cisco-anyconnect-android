.class Lcom/cisco/anyconnect/vpn/android/service/VpnService$14;
.super Ljava/lang/Object;
.source "VpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnService;->handleCredentialprompt(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

.field final synthetic val$connectPrompt:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V
    .locals 0

    .line 4189
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$14;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$14;->val$connectPrompt:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "VpnService"

    .line 4194
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$14;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmPromptHandlerMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->getActivePromptHandler()Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4197
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "No active prompt handler to handle UserPromptCB"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4198
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$14;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mdisconnect(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-void

    .line 4202
    :cond_0
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$14;->val$connectPrompt:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;

    invoke-direct {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V

    invoke-interface {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;->UserPromptCB(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4206
    :catch_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RemoteException on UserPromptCB"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4207
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$14;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mdisconnect(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    :goto_0
    return-void
.end method

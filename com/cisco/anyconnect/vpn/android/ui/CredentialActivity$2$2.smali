.class Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$2;
.super Ljava/lang/Object;
.source "CredentialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->UserPromptCB(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;

.field final synthetic val$connectPrompt:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$2;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$2;->val$connectPrompt:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$2;->val$connectPrompt:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-boolean v0, v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->isAutoSubmit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$2;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmServiceConnMgr(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$2;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmServiceConnMgr(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$2;->val$connectPrompt:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UserSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "CredentialActivity"

    const-string v2, "Error auto submitting connect prompt"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$2;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmUpdateTunnelGroup(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$2;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$mtryDismissTunnelGroupChangeDialog(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)V

    .line 171
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$2;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$2;->val$connectPrompt:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fputmPromptInfo(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    .line 173
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$2;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$monNewUserPrompt(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;Z)V

    .line 175
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$2;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmPromptInfo(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->allowSaveCredentials:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$2;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmCredentialManager(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$2;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmHostname(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->haveSavedCredentials(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$2;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmCredentialManager(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$2;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmHostname(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$2;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;

    iget-object v2, v2, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmPromptInfo(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->getCurrentGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->getSavedCredentials(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

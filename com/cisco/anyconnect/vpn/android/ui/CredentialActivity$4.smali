.class Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;
.super Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
.source "CredentialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;Landroid/content/Context;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public OnServiceConnected(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 5

    const-string v0, "RegisterPromptHandler failed"

    const-string v1, "CredentialActivity"

    const v2, 0x7f110139

    .line 420
    :try_start_0
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmPromptHandler(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 423
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 428
    :cond_0
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmInfoListener(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 431
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "RegisterInfoListener failed"

    invoke-static {v3, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmPromptHandler(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    .line 433
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 437
    :cond_1
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 440
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->GetActiveConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fputmHostname(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "IPrivateVpnService null, unable to get hostname"

    .line 444
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    const-string v3, ""

    invoke-static {p1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fputmHostname(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;Ljava/lang/String;)V

    .line 448
    :goto_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmPromptInfo(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmPromptInfo(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    move-result-object p1

    iget-boolean p1, p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->allowSaveCredentials:Z

    if-eqz p1, :cond_4

    .line 450
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmPromptInfo(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    move-result-object p1

    iget-boolean p1, p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->hasAuthenticationError:Z

    if-eqz p1, :cond_3

    .line 453
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmCredentialManager(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;

    move-result-object p1

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmHostname(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->deleteCredentials(Ljava/lang/String;)V

    goto :goto_1

    .line 455
    :cond_3
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmCredentialManager(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;

    move-result-object p1

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmHostname(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->haveSavedCredentials(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 457
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmCredentialManager(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;

    move-result-object p1

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmHostname(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmPromptInfo(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->getCurrentGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->getSavedCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    new-instance v3, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4$1;

    invoke-direct {v3, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;)V

    invoke-virtual {p1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 470
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public OnServiceWillDisconnect(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;ZLjava/lang/String;)V
    .locals 3

    const-string v0, "CredentialActivity"

    .line 481
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmPromptHandler(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 484
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "UnregisterPromptHandler failed"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmInfoListener(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 490
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "UnregisterInfoListener failed"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 495
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "RemoteException occurred while unregistering callbacks"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 500
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 502
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p1, v0, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {p1, p3}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 507
    :cond_2
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->finish()V

    :cond_3
    :goto_1
    return-void
.end method

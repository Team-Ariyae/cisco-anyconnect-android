.class Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$3;
.super Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
.source "ConnectionSelectorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;Landroid/content/Context;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public OnServiceConnected(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 4

    const-string v0, "OnServiceConnected"

    const-string v1, "ConnectionSelectorFragment"

    .line 109
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f11013c

    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->-$$Nest$fgetmConnectionListener(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterConnectionListener(Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RegisterConnectionListener failed"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->-$$Nest$fgetmInfoListener(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 121
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "RegisterInfoListener failed"

    invoke-static {v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->-$$Nest$fgetmInfoListener(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z

    .line 123
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->-$$Nest$fgetmServiceConnMgr(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->-$$Nest$fputmConnList(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V

    .line 128
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->-$$Nest$fgetmConnList(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->-$$Nest$mpopulateConnections(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 130
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "exception occurred while registering callbacks"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public OnServiceDisconnected()V
    .locals 2

    const-string v0, "ConnectionSelectorFragment"

    const-string v1, "OnServiceDisconnected"

    .line 165
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnServiceWillDisconnect(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;ZLjava/lang/String;)V
    .locals 3

    const-string v0, "ConnectionSelectorFragment"

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->-$$Nest$fgetmConnectionListener(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterConnectionListener(Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "UnregisterConnectionListener failed"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->-$$Nest$fgetmInfoListener(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 146
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "UnregisterInfoListener failed"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "RemoteException occurred while unregistering callbacks"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 153
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 154
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p1, v0, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 157
    :cond_2
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_3
    :goto_1
    return-void
.end method

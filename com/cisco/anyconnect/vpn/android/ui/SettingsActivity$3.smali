.class Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$3;
.super Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;Landroid/content/Context;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public OnServiceConnected(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 2

    const-string v0, "SettingsActivity"

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-static {v1, p1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->-$$Nest$fputmVpnService(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V

    .line 131
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object p1

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->-$$Nest$fgetmSettingListener(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;)Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->RegisterSettingListener(Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 135
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Failed to register SettingListener"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->finish()V

    return-void

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->-$$Nest$mfinishCreate(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;)V

    .line 142
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->-$$Nest$mupdateMDMControllableSettings(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;)V

    .line 145
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->-$$Nest$fgetmVpnService(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object p1

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object p1

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->isDisconnected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    const v1, 0x7f0a0279

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    .line 148
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 153
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "RemoteException invoking RegisterSettingListener."

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->finish()V

    return-void
.end method

.method public OnServiceWillDisconnect(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;ZLjava/lang/String;)V
    .locals 0

    const-string p2, "SettingsActivity"

    .line 164
    :try_start_0
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object p1

    iget-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-static {p3}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->-$$Nest$fgetmSettingListener(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;)Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->UnregisterSettingListener(Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 168
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "UnregisterSettingListener failed."

    invoke-static {p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "RemoteException on UnregisterSettingListener."

    invoke-static {p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->-$$Nest$fputmVpnService(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V

    return-void
.end method

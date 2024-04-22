.class Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$5;
.super Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
.source "ConnectionSummaryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;Landroid/content/Context;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;

    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public OnServiceConnected(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 3

    .line 138
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->-$$Nest$sfgetENTITY_NAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnServiceConnected"

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f11013c

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->-$$Nest$fgetmStatsListener(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;)Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterStatsListener(Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "RegisterConnectionListener failed"

    if-nez v1, :cond_0

    .line 144
    :try_start_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->-$$Nest$sfgetENTITY_NAME()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->-$$Nest$fgetmInfoListener(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;)Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->-$$Nest$sfgetENTITY_NAME()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 157
    :cond_1
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetLastStats()Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;

    invoke-static {v1, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->-$$Nest$mupdateStats(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-void

    .line 165
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->-$$Nest$sfgetENTITY_NAME()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exception occurred while registering callbacks"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public OnServiceWillDisconnect(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;ZLjava/lang/String;)V
    .locals 3

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->-$$Nest$fgetmStatsListener(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;)Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterStatsListener(Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->-$$Nest$sfgetENTITY_NAME()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnregisterStatsListener failed"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->-$$Nest$fgetmInfoListener(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;)Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 185
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->-$$Nest$sfgetENTITY_NAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnregisterInfoListener failed"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->-$$Nest$sfgetENTITY_NAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteException occurred while unregistering callbacks"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 195
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 197
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->-$$Nest$sfgetENTITY_NAME()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;

    invoke-static {p1, p3}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 202
    :cond_2
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->finish()V

    :cond_3
    :goto_1
    return-void
.end method

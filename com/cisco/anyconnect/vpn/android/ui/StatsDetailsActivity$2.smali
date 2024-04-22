.class Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$2;
.super Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
.source "StatsDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;Landroid/content/Context;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;

    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public OnServiceConnected(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 3

    const-string v0, "OnServiceConnected"

    const-string v1, "StatsDetailsActivity"

    .line 122
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :try_start_0
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetLastStats()Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;

    move-result-object v0

    .line 128
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;

    invoke-virtual {v2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->updateStats(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "exception occurred while getting last stats"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const v0, 0x7f11013c

    .line 138
    :try_start_1
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->-$$Nest$fgetmStatsListener(Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;)Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterStatsListener(Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 141
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RegisterConnectionListener failed"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    return-void

    .line 148
    :catch_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "exception occurred while registering callbacks"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public OnServiceWillDisconnect(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;ZLjava/lang/String;)V
    .locals 2

    const-string v0, "StatsDetailsActivity"

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->-$$Nest$fgetmStatsListener(Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;)Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterStatsListener(Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 162
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "UnregisterConnectionListener failed"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "RemoteException occurred while unregistering callbacks"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 173
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 175
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p1, v0, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;

    invoke-static {p1, p3}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 180
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->finish()V

    :cond_2
    :goto_1
    return-void
.end method

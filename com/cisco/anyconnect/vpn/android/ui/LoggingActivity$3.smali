.class Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$3;
.super Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
.source "LoggingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;Landroid/content/Context;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public OnServiceConnected(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 2

    const-string v0, "OnServiceConnected"

    const-string v1, "LoggingActivity"

    .line 363
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->-$$Nest$fgetmLogListener(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterLogListener(Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 368
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "RegisterConnectionListener failed"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->-$$Nest$fgetmServiceConnMgr(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Deactivate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "exception occurred while registering callbacks"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->-$$Nest$fgetmServiceConnMgr(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Deactivate()V

    .line 380
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->-$$Nest$fputmIsVPNServiceReady(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;Z)V

    .line 383
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->-$$Nest$mupdateLogs(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;Z)V

    return-void
.end method

.method public OnServiceWillDisconnect(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;ZLjava/lang/String;)V
    .locals 0

    const-string p2, "LoggingActivity"

    .line 389
    :try_start_0
    iget-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

    invoke-static {p3}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->-$$Nest$fgetmLogListener(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterLogListener(Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 391
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "UnregisterConnectionListener failed"

    invoke-static {p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "RemoteException occurred while unregistering callbacks"

    invoke-static {p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->-$$Nest$fgetmIsVPNServiceReady(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 400
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->-$$Nest$fputmIsVPNServiceReady(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;Z)V

    .line 401
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->-$$Nest$mupdateLogs(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;Z)V

    :cond_1
    return-void
.end method

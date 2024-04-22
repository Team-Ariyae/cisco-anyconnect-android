.class Lcom/cisco/anyconnect/vpn/android/service/VpnService$5;
.super Landroid/os/Handler;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnService;
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

    .line 642
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$5;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 645
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xd8

    const-string v1, "VpnService"

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd9

    if-eq p1, v0, :cond_0

    .line 666
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Unexpected message type received in VpnServer handler!"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 663
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$5;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mhandleSingleLogout(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Z

    goto :goto_0

    .line 648
    :cond_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "AnyConnect failed to exit."

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$5;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mshowExitFromSettingsMsg(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V

    .line 652
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$5;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fputmForceCreateApi(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Z)V

    .line 653
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$5;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmDependencyMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->CheckDependencies(Z)Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mhandleDependencyCheckResult(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;)V

    .line 656
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$5;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmSettingMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->Destroy()V

    .line 657
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$5;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$5;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-direct {v0, v1, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;-><init>(Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager$IVpnSettingManagerCB;)V

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fputmSettingMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;)V

    .line 660
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$5;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fputmShutDownMsg(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

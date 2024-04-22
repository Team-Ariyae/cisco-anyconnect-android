.class Lcom/cisco/anyconnect/vpn/android/service/StateManager$2;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const-string p1, "failed to register shutdown listener: "

    const-string v0, "got exception registering shutdown listener: "

    .line 103
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    monitor-enter v1

    :try_start_0
    const-string v2, "StateManager"

    const-string v3, "onServiceConnected"

    .line 105
    invoke-static {v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-static {p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->-$$Nest$fputmNCHS(Lcom/cisco/anyconnect/vpn/android/service/StateManager;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    .line 107
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->-$$Nest$fputmIsBindingToNCHS(Lcom/cisco/anyconnect/vpn/android/service/StateManager;Z)V

    .line 109
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->-$$Nest$fgetmContext(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)Landroid/content/Context;

    move-result-object p2

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->-$$Nest$fgetmNCHS(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->IsScepInProgress()Z

    move-result v3

    invoke-static {p2, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/NchsUtils;->AdjustVpnNotificationDisplay(Landroid/content/Context;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;Z)V

    .line 115
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->-$$Nest$fgetmHaveReceivedAgentState(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 117
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->-$$Nest$mpostStateNotification(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)V

    .line 120
    :cond_0
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->-$$Nest$fgetmPromptTitle(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 122
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->-$$Nest$fgetmPromptTitle(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->-$$Nest$mpostPromptNotification(Lcom/cisco/anyconnect/vpn/android/service/StateManager;Ljava/lang/String;)V

    .line 125
    :cond_1
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->-$$Nest$fgetmNCHS(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object p2

    if-nez p2, :cond_2

    .line 127
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "StateManager"

    const-string v0, "did not get NCHS service!"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 133
    :cond_2
    :try_start_1
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->-$$Nest$fgetmNCHS(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object p2

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->-$$Nest$fgetmContext(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->-$$Nest$fgetmNchsShutdownListener(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->RegisterShutdownListener(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p2

    .line 134
    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v2, p2, :cond_3

    .line 136
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "StateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 141
    :try_start_2
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "StateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_3
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 94
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    monitor-enter p1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->-$$Nest$fputmNCHS(Lcom/cisco/anyconnect/vpn/android/service/StateManager;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    .line 97
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->-$$Nest$fputmHaveReceivedAgentState(Lcom/cisco/anyconnect/vpn/android/service/StateManager;Z)V

    .line 98
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

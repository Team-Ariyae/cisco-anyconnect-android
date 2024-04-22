.class Lcom/cisco/android/nchs/NetworkComponentHostService$7;
.super Landroid/content/BroadcastReceiver;
.source "NetworkComponentHostService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/android/nchs/NetworkComponentHostService;->initGlobalPackageEventBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/NetworkComponentHostService;)V
    .locals 0

    .line 1580
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$7;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1585
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.cisco.android.nchs.NCHS_EXTERNAL_OPERATION_COMPLETED_INTENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "KEY_IPC_TARGET_SERVER"

    .line 1587
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "NetworkComponentHostService"

    if-nez p2, :cond_1

    .line 1590
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "No targeted IPC server passed, will notify all servers"

    invoke-static {p2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    iget-object p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$7;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmIPCServers(Lcom/cisco/android/nchs/NetworkComponentHostService;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1593
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/android/nchs/ipc/IIPCServer;

    invoke-interface {v0, p1}, Lcom/cisco/android/nchs/ipc/IIPCServer;->signalRequestedOperationCompleted(Z)V

    goto :goto_0

    :cond_0
    return-void

    .line 1598
    :cond_1
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$7;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmIPCServers(Lcom/cisco/android/nchs/NetworkComponentHostService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/android/nchs/ipc/IIPCServer;

    if-nez p2, :cond_2

    .line 1601
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "could not find the intended receiver of the operation completed event"

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1605
    :cond_2
    invoke-interface {p2, p1}, Lcom/cisco/android/nchs/ipc/IIPCServer;->signalRequestedOperationCompleted(Z)V

    return-void
.end method

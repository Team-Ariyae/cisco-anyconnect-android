.class Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$2;
.super Landroid/content/BroadcastReceiver;
.source "DependencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "received unknown intent: "

    .line 150
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    monitor-enter v0

    .line 152
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NCHS_COMPONENT_SERVICE_READY_INTENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "DependencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    monitor-exit v0

    return-void

    :cond_0
    const-string p1, "package_name"

    .line 158
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "service_name"

    .line 159
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 161
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->-$$Nest$fgetmContext(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "vpnagentd"

    .line 162
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->setNativeComponentDataDir()V

    .line 167
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->SATISFACTORY:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->-$$Nest$fputmLastResult(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;)V

    .line 168
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;)Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$IDependencyManagerCB;

    move-result-object p1

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->-$$Nest$fgetmLastResult(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;)Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$IDependencyManagerCB;->deferredResultCB(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;)V

    .line 169
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->-$$Nest$mstopListeningForServiceStarted(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;)V

    .line 171
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

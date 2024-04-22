.class Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$3;
.super Landroid/os/Handler;
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

    .line 176
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    monitor-enter v0

    .line 181
    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 183
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "DependencyManager"

    const-string v2, "timeout waiting for dependency checking to finish"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;)Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$IDependencyManagerCB;

    move-result-object p1

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->TIMED_OUT:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    invoke-interface {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$IDependencyManagerCB;->deferredResultCB(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;)V

    .line 185
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->-$$Nest$mstopListeningForServiceStarted(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;)V

    .line 187
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

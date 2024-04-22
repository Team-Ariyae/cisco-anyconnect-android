.class Lcom/cisco/anyconnect/vpn/android/service/StateManager$3;
.super Lcom/cisco/android/nchs/aidl/INCHSShutdownListener$Stub;
.source "StateManager.java"


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

    .line 149
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-direct {p0}, Lcom/cisco/android/nchs/aidl/INCHSShutdownListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public NCHSShutdownCB(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "got NCHS shutdown message="

    .line 152
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    monitor-enter v1

    .line 154
    :try_start_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "StateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->-$$Nest$fgetmContext(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->-$$Nest$fgetmNCHSConnection(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 156
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->-$$Nest$fputmNCHS(Lcom/cisco/anyconnect/vpn/android/service/StateManager;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    .line 157
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.class Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;
.super Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener$Stub;
.source "ServiceConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ServiceReadyCB()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->-$$Nest$fputmSuppressConnectMsg(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;Z)V

    .line 74
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->-$$Nest$mstopTimer(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)V

    .line 76
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->-$$Nest$fgetmVpnService(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->-$$Nest$monServiceConnectedCB(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V

    .line 80
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ServiceShutdownCB(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

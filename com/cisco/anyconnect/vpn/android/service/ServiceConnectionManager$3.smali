.class Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;
.super Ljava/lang/Object;
.source "ServiceConnectionManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 98
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 102
    monitor-enter p0

    .line 104
    :try_start_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->-$$Nest$fputmVpnService(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :try_start_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->-$$Nest$fgetmVpnService(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object p1

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->-$$Nest$fgetmServiceStateListener(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterServiceStateListener(Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "AnyConnect"

    const-string p2, "failed to register the service state listener, vpn service is probably shutting down"

    .line 111
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "AnyConnect"

    const-string v0, "Unexpected RemoteException in registering RegisterServiceShutdownListener"

    .line 116
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 125
    monitor-enter p0

    .line 127
    :try_start_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->-$$Nest$fputmVpnService(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V

    .line 129
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->-$$Nest$monServiceDisconnectedCB(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)V

    .line 133
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->-$$Nest$fgetmIsVisible(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->-$$Nest$mshowConnectingMessageCB(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)V

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->-$$Nest$mstopTimer(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)V

    .line 139
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

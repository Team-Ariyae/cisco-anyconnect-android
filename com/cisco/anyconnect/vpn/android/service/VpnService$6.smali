.class Lcom/cisco/anyconnect/vpn/android/service/VpnService$6;
.super Ljava/lang/Object;
.source "VpnService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 1609
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$6;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1621
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$6;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter p1

    :try_start_0
    const-string v0, "nchs connected"

    .line 1623
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1624
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$6;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fputmNchs(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    .line 1625
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$6;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmNchs(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$monNchsConnected(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    .line 1626
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1612
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$6;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter p1

    :try_start_0
    const-string v0, "nchs disconnected"

    .line 1614
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1615
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$6;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fputmNchs(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    .line 1616
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

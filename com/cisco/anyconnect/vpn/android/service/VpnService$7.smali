.class Lcom/cisco/anyconnect/vpn/android/service/VpnService$7;
.super Lcom/cisco/android/nchs/aidl/INCHSShutdownListener$Stub;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnService;->onNchsConnected(Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V
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

    .line 1646
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$7;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-direct {p0}, Lcom/cisco/android/nchs/aidl/INCHSShutdownListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public NCHSShutdownCB(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1650
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$7;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter p1

    .line 1652
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$7;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmNchsServiceConnection(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1653
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$7;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fputmNchs(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    .line 1654
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager$1;
.super Ljava/lang/Object;
.source "VpnSettingManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 288
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;

    monitor-enter p1

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;

    invoke-static {p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->-$$Nest$fputmNchs(Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    .line 291
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

    .line 280
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;

    monitor-enter p1

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->-$$Nest$fputmNchs(Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    .line 283
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

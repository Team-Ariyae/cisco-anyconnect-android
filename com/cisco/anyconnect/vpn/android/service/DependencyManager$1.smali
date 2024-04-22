.class Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1;
.super Ljava/lang/Object;
.source "DependencyManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 115
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    monitor-enter p1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    invoke-static {p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->-$$Nest$fputmNCHS(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    .line 130
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    iget-object p2, p2, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->mNchsHandler:Landroid/os/Handler;

    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
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

    .line 118
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    monitor-enter p1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->-$$Nest$fputmNCHS(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    .line 121
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

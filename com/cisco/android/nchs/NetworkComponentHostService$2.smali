.class Lcom/cisco/android/nchs/NetworkComponentHostService$2;
.super Ljava/lang/Object;
.source "NetworkComponentHostService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/NetworkComponentHostService;
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

    .line 233
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$2;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "VpnAgentService connected"

    .line 240
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$2;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fputmVpnAgentService(Lcom/cisco/android/nchs/NetworkComponentHostService;Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;)V

    .line 242
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$2;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    monitor-enter p1

    .line 243
    :try_start_0
    iget-object p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$2;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 244
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
    .locals 1

    const-string p1, "VpnAgentService disconnected"

    .line 235
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$2;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fputmVpnAgentService(Lcom/cisco/android/nchs/NetworkComponentHostService;Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;)V

    return-void
.end method

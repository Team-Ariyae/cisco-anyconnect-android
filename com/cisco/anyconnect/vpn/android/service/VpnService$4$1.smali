.class Lcom/cisco/anyconnect/vpn/android/service/VpnService$4$1;
.super Ljava/lang/Object;
.source "VpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnService$4;->deferredResultCB(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/service/VpnService$4;

.field final synthetic val$result:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService$4;Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$4$1;->this$1:Lcom/cisco/anyconnect/vpn/android/service/VpnService$4;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$4$1;->val$result:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$4$1;->this$1:Lcom/cisco/anyconnect/vpn/android/service/VpnService$4;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$4;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$4$1;->this$1:Lcom/cisco/anyconnect/vpn/android/service/VpnService$4;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/service/VpnService$4;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$4$1;->val$result:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mhandleDependencyCheckResult(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;)V

    .line 337
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

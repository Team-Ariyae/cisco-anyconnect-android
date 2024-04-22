.class Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$4;
.super Ljava/lang/Object;
.source "KnoxInteractionService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$4;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 382
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$4;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    monitor-enter p1

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$4;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$msetNchs(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    .line 385
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$4;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mlistenNchsShutdown(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Z)V

    .line 386
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$4;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 387
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

    .line 392
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$4;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$msetNchs(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    return-void
.end method

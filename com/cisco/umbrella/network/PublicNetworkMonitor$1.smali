.class Lcom/cisco/umbrella/network/PublicNetworkMonitor$1;
.super Ljava/lang/Object;
.source "PublicNetworkMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/network/PublicNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$1;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$1;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-static {v0}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$000(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$1;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-static {v1}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$000(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 67
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;

    iget-object v3, p0, Lcom/cisco/umbrella/network/PublicNetworkMonitor$1;->this$0:Lcom/cisco/umbrella/network/PublicNetworkMonitor;

    invoke-static {v3}, Lcom/cisco/umbrella/network/PublicNetworkMonitor;->access$100(Lcom/cisco/umbrella/network/PublicNetworkMonitor;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;->onNetworkUpdate(Z)V

    goto :goto_0

    .line 70
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

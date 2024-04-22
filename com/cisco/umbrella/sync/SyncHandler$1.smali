.class Lcom/cisco/umbrella/sync/SyncHandler$1;
.super Ljava/lang/Object;
.source "SyncHandler.java"

# interfaces
.implements Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/sync/SyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/sync/SyncHandler;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/sync/SyncHandler;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/cisco/umbrella/sync/SyncHandler$1;->this$0:Lcom/cisco/umbrella/sync/SyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkUpdate(Z)V
    .locals 4

    .line 74
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/sync/SyncHandler;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received onNetworkUpdate - in Sync Handler - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/cisco/umbrella/sync/SyncHandler$1;->this$0:Lcom/cisco/umbrella/sync/SyncHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cisco/umbrella/sync/SyncHandler;->sync(Z)V

    :cond_0
    return-void
.end method

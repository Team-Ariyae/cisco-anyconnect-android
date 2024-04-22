.class Lcom/cisco/umbrella/sync/SyncHandler$3;
.super Landroid/content/BroadcastReceiver;
.source "SyncHandler.java"


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

    .line 439
    iput-object p1, p0, Lcom/cisco/umbrella/sync/SyncHandler$3;->this$0:Lcom/cisco/umbrella/sync/SyncHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_1

    .line 444
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.cisco.umbrella.android.SCHEDULE_SYNC_ACTION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 448
    iget-object p1, p0, Lcom/cisco/umbrella/sync/SyncHandler$3;->this$0:Lcom/cisco/umbrella/sync/SyncHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/cisco/umbrella/sync/SyncHandler;->sync(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.class Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager$1;
.super Ljava/lang/Object;
.source "ForegroundServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager$1;->this$0:Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 35
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stopping foreground service "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager$1;->this$0:Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;

    invoke-static {v2}, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->access$000(Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ForegroundServiceManager"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager$1;->this$0:Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->access$100(Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;)Landroid/app/Service;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method

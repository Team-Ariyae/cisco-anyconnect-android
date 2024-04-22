.class Lcom/cisco/anyconnect/nvm/services/NVMJobService$1;
.super Ljava/lang/Object;
.source "NVMJobService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/nvm/services/NVMJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/nvm/services/NVMJobService;

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/nvm/services/NVMJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMJobService;

    iput-object p2, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMJobService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->startNVMService(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v1, 0x3ea

    if-eq v1, v0, :cond_0

    .line 84
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMJobService;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMJobService;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMJobService;

    invoke-static {v1}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->access$000(Lcom/cisco/anyconnect/nvm/services/NVMJobService;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 87
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMJobService;

    invoke-static {v1}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->access$100(Lcom/cisco/anyconnect/nvm/services/NVMJobService;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 90
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rescheduling job : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NVMJobService"

    invoke-static {v0, v3, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMJobService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isNPAEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v2, "Interval"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMJobService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->schedulePeriodicJob(Landroid/content/Context;II)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMJobService;

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService$1;->val$params:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMJobService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/nvm/utils/NVMJobUtils;->cancelJob(Landroid/content/Context;I)V

    :cond_3
    :goto_0
    return-void
.end method

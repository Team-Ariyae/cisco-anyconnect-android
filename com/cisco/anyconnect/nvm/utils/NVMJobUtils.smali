.class public Lcom/cisco/anyconnect/nvm/utils/NVMJobUtils;
.super Ljava/lang/Object;
.source "NVMJobUtils.java"


# static fields
.field private static final DEFAULT_MINIMUM_LATENCY:I = 0x3e8

.field private static final ENTITY_NAME:Ljava/lang/String; = "NVMJobUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAllJobs(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "jobscheduler"

    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 83
    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->cancelAll()V

    goto :goto_0

    .line 85
    :cond_0
    sget-object p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v0, "NVMJobUtils"

    const-string v1, "Context is null, Cannot cancel scheduled jobs"

    invoke-static {p0, v0, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static cancelJob(Landroid/content/Context;I)V
    .locals 4

    const-string v0, "NVMJobUtils"

    if-eqz p0, :cond_0

    .line 91
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cancelling job : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "jobscheduler"

    .line 92
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 93
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_0

    .line 95
    :cond_0
    sget-object p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string p1, "Context is null, Cannot cancel scheduled jobs"

    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static scheduleJob(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-static {p0, v0, p1, p2}, Lcom/cisco/anyconnect/nvm/utils/NVMJobUtils;->scheduleJob(Landroid/content/Context;Landroid/os/PersistableBundle;II)V

    return-void
.end method

.method public static scheduleJob(Landroid/content/Context;Landroid/os/PersistableBundle;II)V
    .locals 2

    if-eqz p0, :cond_2

    .line 36
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/cisco/anyconnect/nvm/services/NVMJobService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v1, p3, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/16 p3, 0x3e8

    if-ge p3, p2, :cond_0

    int-to-long p2, p2

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x3e8

    .line 38
    :goto_0
    invoke-virtual {v1, p2, p3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {v1, p1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    :cond_1
    const-wide/32 p1, 0xdbba0

    .line 42
    invoke-virtual {v1, p1, p2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    const-string p1, "jobscheduler"

    .line 43
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 44
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_1

    .line 46
    :cond_2
    sget-object p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string p1, "NVMJobUtils"

    const-string p2, "Context is null, Cannot schedule job"

    invoke-static {p0, p1, p2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static schedulePeriodicJob(Landroid/content/Context;II)V
    .locals 5

    if-eqz p0, :cond_1

    .line 55
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 56
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/cisco/anyconnect/nvm/services/NVMJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v2, p2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 p2, 0x1

    .line 58
    invoke-virtual {v2, p2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    const p2, 0xdbba0

    const-wide/32 v3, 0xdbba0

    if-ge p1, p2, :cond_0

    const-string p2, "Interval"

    .line 60
    invoke-virtual {v0, p2, p1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    int-to-long p1, p1

    .line 61
    invoke-virtual {v2, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 62
    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_0

    :cond_0
    const-wide/32 p1, 0x493e0

    .line 66
    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    .line 68
    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    const-string p1, "jobscheduler"

    .line 69
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 70
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_1

    .line 72
    :cond_1
    sget-object p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string p1, "NVMJobUtils"

    const-string p2, "Context is null, Cannot schedule job"

    invoke-static {p0, p1, p2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

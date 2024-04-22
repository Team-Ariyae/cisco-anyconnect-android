.class public Lcom/cisco/anyconnect/nvm/services/NVMJobService;
.super Landroid/app/job/JobService;
.source "NVMJobService.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NVMJobService"


# instance fields
.field private mServiceBound:Z

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->mServiceBound:Z

    .line 139
    new-instance v0, Lcom/cisco/anyconnect/nvm/services/NVMJobService$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/nvm/services/NVMJobService$2;-><init>(Lcom/cisco/anyconnect/nvm/services/NVMJobService;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/cisco/anyconnect/nvm/services/NVMJobService;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->mServiceBound:Z

    return p0
.end method

.method static synthetic access$002(Lcom/cisco/anyconnect/nvm/services/NVMJobService;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->mServiceBound:Z

    return p1
.end method

.method static synthetic access$100(Lcom/cisco/anyconnect/nvm/services/NVMJobService;)Landroid/content/ServiceConnection;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->serviceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 6

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 52
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JobService started : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NVMJobService"

    invoke-static {v1, v3, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3ea

    const/16 v5, 0x3eb

    if-ne v1, v5, :cond_2

    .line 56
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getProfiles()Ljava/util/List;

    move-result-object p1

    .line 59
    new-instance v0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;

    invoke-direct {v0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;-><init>()V

    .line 60
    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;->hasProfile(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Helper service to start NVM in foreground"

    .line 61
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->buildNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->startForeground(ILandroid/app/Notification;)V

    .line 62
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->startNVMService(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p0, v3}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->stopForeground(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/cisco/anyconnect/nvm/utils/NVMJobUtils;->cancelJob(Landroid/content/Context;I)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0xdbba0

    invoke-static {p1, v0, v5}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->schedulePeriodicJob(Landroid/content/Context;II)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/cisco/anyconnect/nvm/utils/NVMJobUtils;->cancelJob(Landroid/content/Context;I)V

    :goto_0
    return v2

    .line 73
    :cond_2
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    if-eq v1, v4, :cond_3

    .line 75
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "serviceInitiatedCancel"

    invoke-static {v1, v4, v2}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 78
    :cond_3
    new-instance v1, Lcom/cisco/anyconnect/nvm/services/NVMJobService$1;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/nvm/services/NVMJobService$1;-><init>(Lcom/cisco/anyconnect/nvm/services/NVMJobService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v3
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    .line 111
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JobService stopped : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NVMJobService"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "serviceInitiatedCancel"

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0xea60

    const/16 v1, 0x3e9

    const/4 v3, 0x1

    invoke-static {p1, v2, v3, v0, v1}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->scheduleNVMServiceRestart(Landroid/content/Context;ZZII)V

    .line 125
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->stopService(Landroid/content/Intent;)Z

    .line 130
    :cond_0
    iget-boolean p1, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->mServiceBound:Z

    if-eqz p1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 132
    iput-boolean v2, p0, Lcom/cisco/anyconnect/nvm/services/NVMJobService;->mServiceBound:Z

    :cond_1
    return v2
.end method

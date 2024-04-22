.class public Lcom/cisco/umbrella/service/RestrictionsObserverJobService;
.super Landroid/app/job/JobService;
.source "RestrictionsObserverJobService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RestrictionsObserverJobService"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private handleRestrictionsJob(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 9

    .line 51
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/service/RestrictionsObserverJobService;->TAG:Ljava/lang/String;

    const-string v2, "handleRestrictionsJob is invoked."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, p3}, Lcom/cisco/umbrella/service/RestrictionsObserverJobService;->hasManagedRestrictions(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "com.cisco.anyconnect.vpn.android.VPN_SERVICE_START_INTENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 59
    :pswitch_0
    invoke-static {p0, p2}, Lcom/cisco/umbrella/util/ServiceHelper;->startUmbrellaService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 64
    :goto_2
    invoke-static {p3}, Lcom/cisco/umbrella/util/ServiceHelper;->cancelJob(Landroid/content/Context;)V

    return v2

    :cond_3
    const-wide/32 v5, 0x1d4c0

    const-wide/32 v7, 0x1d4c0

    move-object v3, p3

    move-object v4, p1

    .line 68
    invoke-static/range {v3 .. v8}, Lcom/cisco/umbrella/util/ServiceHelper;->scheduleJob(Landroid/content/Context;Ljava/lang/String;JJ)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x5243ceab -> :sswitch_2
        -0x35f22cb2 -> :sswitch_1
        0x2f94f923 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private hasManagedRestrictions(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "restrictions"

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/RestrictionsManager;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/content/RestrictionsManager;->getApplicationRestrictions()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const-string v1, "umbrella_org_id"

    .line 83
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "umbrella_reg_token"

    .line 84
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_3

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    .line 27
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/service/RestrictionsObserverJobService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Restrictions observer invoked:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    const-string v0, "Action"

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/cisco/umbrella/service/RestrictionsObserverJobService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 40
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.cisco.umbrella.android.SCHEDULE_SYNC_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "com.cisco.anyconnect.vpn.android.avf.permission.SEND_UMBRELLA_BROADCAST_PERMISSION"

    .line 41
    invoke-virtual {v2, v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return v0

    .line 44
    :cond_1
    invoke-direct {p0, p1, v1, v2}, Lcom/cisco/umbrella/service/RestrictionsObserverJobService;->handleRestrictionsJob(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)Z

    return v0

    .line 32
    :cond_2
    :goto_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Intent action is unavailable. Stopping scheduler."

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 95
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v0, Lcom/cisco/umbrella/service/RestrictionsObserverJobService;->TAG:Ljava/lang/String;

    const-string v1, "Scheduled restrictions checker stopped"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

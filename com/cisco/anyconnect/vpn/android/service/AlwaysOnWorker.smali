.class public Lcom/cisco/anyconnect/vpn/android/service/AlwaysOnWorker;
.super Landroidx/work/Worker;
.source "AlwaysOnWorker.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 48
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/AlwaysOnWorker;->mContext:Landroid/content/Context;

    return-void
.end method

.method private showNotification()V
    .locals 6

    .line 108
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/AlwaysOnWorker;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 111
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cisco.anyconnect.vpn.android.PRIMARY_ACTIVITY_SHOW_INTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/AlwaysOnWorker;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 118
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/AlwaysOnWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->Initialize(Landroid/content/Context;)V

    .line 120
    :try_start_0
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/AlwaysOnWorker;->mContext:Landroid/content/Context;

    const-string v4, "default"

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x7f0800f4

    .line 121
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x7f110333

    .line 122
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x7f110331

    .line 123
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v5, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v5}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 124
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 125
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v3, 0x1

    .line 126
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 129
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0xd09

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 3

    .line 54
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/AlwaysOnWorker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->isAlwaysOnEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/AlwaysOnWorker;->mContext:Landroid/content/Context;

    .line 60
    invoke-static {v0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    const-string v1, "always_on"

    .line 61
    invoke-virtual {v0, v1}, Landroidx/work/WorkManager;->cancelAllWorkByTag(Ljava/lang/String;)Landroidx/work/Operation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, "Cancelling the periodic always-on check."

    .line 66
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    .line 73
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/AlwaysOnWorker;->showNotification()V

    goto :goto_2

    .line 78
    :cond_1
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->getVPNState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v0

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-eq v0, v1, :cond_2

    .line 79
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 84
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/AlwaysOnWorker;->mContext:Landroid/content/Context;

    const-class v2, Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/AlwaysOnWorker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cisco/android/nchs/permissions/Prerequisites;->isBackgroundExecutionLimited(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3

    const-string v1, "Starting VpnService as foreground service"

    .line 91
    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/AlwaysOnWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v1, "Starting VpnService as ordinary service"

    .line 94
    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/AlwaysOnWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_4

    const-string v0, "Failed to start VpnService to retry connect"

    .line 100
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 104
    :cond_4
    :goto_2
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method

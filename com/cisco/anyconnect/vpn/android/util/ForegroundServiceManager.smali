.class public Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;
.super Ljava/lang/Object;
.source "ForegroundServiceManager.java"


# instance fields
.field private final mContentText:Ljava/lang/String;

.field private final mContentTitle:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mNotifyIcon:I

.field private final mNotifyId:I

.field private final mService:Landroid/app/Service;

.field private mStopForegroundTask:Ljava/lang/Runnable;

.field private final mTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmService(Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;)Landroid/app/Service;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mService:Landroid/app/Service;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Landroid/app/Service;Landroid/os/Handler;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager$1;-><init>(Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mStopForegroundTask:Ljava/lang/Runnable;

    .line 51
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mService:Landroid/app/Service;

    .line 52
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mHandler:Landroid/os/Handler;

    .line 53
    iput p3, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mNotifyId:I

    .line 54
    iput-object p5, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mContentTitle:Ljava/lang/String;

    .line 55
    iput-object p6, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mContentText:Ljava/lang/String;

    .line 56
    iput p4, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mNotifyIcon:I

    .line 57
    iput-object p7, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public scheduleStopForeground(I)V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mService:Landroid/app/Service;

    invoke-static {v0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->isBackgroundExecutionLimited(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scheduleStopForeground "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mStopForegroundTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mStopForegroundTask:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startForeground()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mService:Landroid/app/Service;

    invoke-static {v0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->isBackgroundExecutionLimited(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mStopForegroundTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 77
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mService:Landroid/app/Service;

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    iget v1, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mNotifyIcon:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mContentTitle:Ljava/lang/String;

    .line 79
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mContentText:Ljava/lang/String;

    .line 80
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startForeground "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mService:Landroid/app/Service;

    iget v2, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->mNotifyId:I

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

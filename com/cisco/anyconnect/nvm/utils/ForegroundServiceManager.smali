.class public Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;
.super Ljava/lang/Object;
.source "ForegroundServiceManager.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "ForegroundServiceManager"

.field private static final FOREGROUND_STATE_TIMEOUT_MS:I = 0x3e8


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsDisabled:Z

.field private final mNotifyId:I

.field private final mService:Landroid/app/Service;

.field private final mTag:Ljava/lang/String;

.field private stopForegroundTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Service;Landroid/os/Handler;ILjava/lang/String;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->mIsDisabled:Z

    .line 33
    new-instance v0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager$1;-><init>(Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->stopForegroundTask:Ljava/lang/Runnable;

    .line 41
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->mService:Landroid/app/Service;

    .line 42
    iput-object p2, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->mHandler:Landroid/os/Handler;

    .line 43
    iput p3, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->mNotifyId:I

    .line 44
    iput-object p4, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->mTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;)Landroid/app/Service;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->mService:Landroid/app/Service;

    return-object p0
.end method

.method private startTimer()V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->stopForegroundTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->stopForegroundTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public setDisabled(Z)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->mService:Landroid/app/Service;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isBackgroundExecutionLimited(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->stopForegroundTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 71
    iput-boolean p1, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->mIsDisabled:Z

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->mService:Landroid/app/Service;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Service;->stopForeground(Z)V

    :cond_1
    return-void
.end method

.method public startForeground()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->mService:Landroid/app/Service;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isBackgroundExecutionLimited(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-boolean v0, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->mIsDisabled:Z

    if-eqz v0, :cond_1

    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->mService:Landroid/app/Service;

    iget v1, p0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->mNotifyId:I

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->buildNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

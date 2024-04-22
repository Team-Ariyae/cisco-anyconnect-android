.class public Lcom/cisco/anyconnect/vpn/android/notify/NotificationUtility;
.super Ljava/lang/Object;
.source "NotificationUtility.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLastShownNotifyId:Ljava/lang/Integer;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/notify/NotificationUtility;->mLastShownNotifyId:Ljava/lang/Integer;

    .line 21
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/notify/NotificationUtility;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/notify/NotificationUtility;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public cancelLast()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/notify/NotificationUtility;->mLastShownNotifyId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 27
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/notify/NotificationUtility;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/notify/NotificationUtility;->mLastShownNotifyId:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method public getResumeAppIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 47
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/notify/NotificationUtility;->mContext:Landroid/content/Context;

    const-class v2, Lcom/cisco/anyconnect/ui/PrimaryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/notify/NotificationUtility;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public notify(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 3

    .line 33
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/notify/NotificationUtility;->mContext:Landroid/content/Context;

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f0800f4

    .line 34
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 35
    invoke-virtual {v1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 36
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    new-instance v1, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 37
    invoke-virtual {v1, p3}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 38
    invoke-virtual {p2, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 p3, 0x1

    .line 39
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 41
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/notify/NotificationUtility;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/notify/NotificationUtility;->mLastShownNotifyId:Ljava/lang/Integer;

    return-void
.end method

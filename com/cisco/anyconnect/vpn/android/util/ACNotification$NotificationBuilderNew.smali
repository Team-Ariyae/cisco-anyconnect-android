.class Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderNew;
.super Ljava/lang/Object;
.source "ACNotification.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/util/ACNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationBuilderNew"
.end annotation


# instance fields
.field mBuilder:Landroid/app/Notification$Builder;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderNew;->mBuilder:Landroid/app/Notification$Builder;

    const/4 p1, 0x1

    .line 58
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderNew;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setBigTextStyle(Ljava/lang/CharSequence;)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderNew;->mBuilder:Landroid/app/Notification$Builder;

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v1, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderNew;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderNew;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderNew;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setOngoing(Z)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderNew;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setSmallIcon(I)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderNew;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderNew;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setWhen(J)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderNew;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    return-object p0
.end method

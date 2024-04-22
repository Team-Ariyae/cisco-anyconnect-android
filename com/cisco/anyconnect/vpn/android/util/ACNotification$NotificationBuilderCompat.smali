.class Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderCompat;
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
    name = "NotificationBuilderCompat"
.end annotation


# instance fields
.field mBuilder:Landroidx/core/app/NotificationCompat$Builder;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderCompat;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderCompat;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setBigTextStyle(Ljava/lang/CharSequence;)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderCompat;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v1, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderCompat;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderCompat;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderCompat;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setOngoing(Z)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderCompat;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setSmallIcon(I)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderCompat;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderCompat;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setWhen(J)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderCompat;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

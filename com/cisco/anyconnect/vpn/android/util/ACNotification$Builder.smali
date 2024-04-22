.class public interface abstract Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
.super Ljava/lang/Object;
.source "ACNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/util/ACNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract build()Landroid/app/Notification;
.end method

.method public abstract setBigTextStyle(Ljava/lang/CharSequence;)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
.end method

.method public abstract setContentIntent(Landroid/app/PendingIntent;)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
.end method

.method public abstract setContentText(Ljava/lang/CharSequence;)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
.end method

.method public abstract setContentTitle(Ljava/lang/CharSequence;)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
.end method

.method public abstract setOngoing(Z)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
.end method

.method public abstract setSmallIcon(I)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
.end method

.method public abstract setTicker(Ljava/lang/CharSequence;)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
.end method

.method public abstract setWhen(J)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
.end method

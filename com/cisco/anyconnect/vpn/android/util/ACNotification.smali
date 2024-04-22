.class public Lcom/cisco/anyconnect/vpn/android/util/ACNotification;
.super Ljava/lang/Object;
.source "ACNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderCompat;,
        Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderNew;,
        Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuilder(Landroid/content/Context;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/util/ACNotification$Builder;
    .locals 2

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 33
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderCompat;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderCompat;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 35
    :cond_0
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderNew;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/ACNotification$NotificationBuilderNew;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.class public Lcom/cisco/android/nchs/receivers/BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompleteReceiver.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NetworkComponentHostService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 44
    new-instance p2, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-direct {p2, p1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->getAlwaysOnStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p2, p1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->setAlwaysOnEnabled(Z)Z

    :cond_0
    return-void
.end method

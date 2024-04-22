.class public Lcom/cisco/anyconnect/vpn/android/ui/helpers/NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeReceiver.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NetworkChangeReceiver"

.field private static final TYPE_MOBILE_HIPRI:I = 0x5

.field private static final TYPE_MOBILE_MMS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getNetworkTypeString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown Interface Type"

    return-object p0

    :cond_0
    const-string p0, "Mobile HIPRI"

    return-object p0

    :cond_1
    const-string p0, "Mobile MMS"

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

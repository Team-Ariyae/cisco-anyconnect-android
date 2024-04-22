.class public Lcom/cisco/anyconnect/vpn/android/ui/helpers/PackageUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageUpdateReceiver.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "PackageUpdateReceiver"

.field private static final STICKY_BROADCASTS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.cisco.anyconnect.vpn.android.UPDATE_ACTIVE_CONNECTION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NoticeInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.cisco.anyconnect.vpn.android.UPDATE_STATS"

    aput-object v2, v0, v1

    .line 21
    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PackageUpdateReceiver;->STICKY_BROADCASTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private clearStickyBroadcasts(Landroid/content/Context;)V
    .locals 5

    .line 46
    :try_start_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PackageUpdateReceiver;->STICKY_BROADCASTS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 47
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, v4}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PackageUpdateReceiver;->clearStickyBroadcasts(Landroid/content/Context;)V

    return-void
.end method

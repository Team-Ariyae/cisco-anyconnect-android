.class public Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "SmallWidget.java"


# static fields
.field protected static final ENTITY_NAME:Ljava/lang/String; = "SmallWidget"

.field protected static msLastState:Lcom/cisco/anyconnect/vpn/jni/VPNState;


# instance fields
.field protected mAppWidgetMgr:Landroid/appwidget/AppWidgetManager;

.field protected mContext:Landroid/content/Context;

.field protected mWidgetLayout:I

.field protected mWidgetName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private handleStateUpdate(Lcom/cisco/anyconnect/vpn/jni/VPNState;)V
    .locals 2

    if-nez p1, :cond_0

    .line 54
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "SmallWidget"

    const-string v1, "Unexpected null state"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->updateWidget(Lcom/cisco/anyconnect/vpn/jni/VPNState;)V

    return-void
.end method


# virtual methods
.method protected initContext(Landroid/content/Context;)V
    .locals 2

    .line 63
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->mAppWidgetMgr:Landroid/appwidget/AppWidgetManager;

    .line 65
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->mContext:Landroid/content/Context;

    const-class v1, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->mWidgetName:Landroid/content/ComponentName;

    const p1, 0x7f0d00d9

    .line 66
    iput p1, p0, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->mWidgetLayout:I

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 72
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->initContext(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.cisco.anyconnect.vpn.android.UPDATE_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "StateInfo"

    .line 77
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    if-nez p1, :cond_0

    .line 80
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "SmallWidget"

    const-string v0, "Unexpected null stateInfo"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object p1

    sput-object p1, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->msLastState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.cisco.anyconnect.vpn.android.UPDATE_CONNECT_IN_PROGRESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "State"

    .line 88
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    if-eqz p1, :cond_7

    .line 91
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget$1;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$ConnectProgressState:[I

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 97
    :cond_3
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    sput-object p1, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->msLastState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    goto :goto_0

    .line 94
    :cond_4
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    sput-object p1, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->msLastState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    goto :goto_0

    .line 109
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.cisco.anyconnect.vpn.android.ACTION_APP_INSTALL_COMPLETE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 111
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->mAppWidgetMgr:Landroid/appwidget/AppWidgetManager;

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->mWidgetName:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p1

    .line 113
    array-length p1, p1

    if-eqz p1, :cond_6

    .line 115
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->updateWidget(Lcom/cisco/anyconnect/vpn/jni/VPNState;)V

    :cond_6
    return-void

    .line 121
    :cond_7
    :goto_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->msLastState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-eqz p1, :cond_8

    .line 123
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->handleStateUpdate(Lcom/cisco/anyconnect/vpn/jni/VPNState;)V

    :cond_8
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0

    .line 131
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->initContext(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 133
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->updateWidget(Lcom/cisco/anyconnect/vpn/jni/VPNState;)V

    .line 135
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->getVPNState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object p1

    .line 136
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->handleStateUpdate(Lcom/cisco/anyconnect/vpn/jni/VPNState;)V

    return-void
.end method

.method protected updateWidget(Lcom/cisco/anyconnect/vpn/jni/VPNState;)V
    .locals 10

    .line 141
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->mAppWidgetMgr:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->mWidgetName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 143
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 145
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->mWidgetLayout:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v4, 0x7f0a030d

    if-nez p1, :cond_0

    .line 149
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cisco/anyconnect/vpn/android/widgets/Util;->CreateIntitializeAnyConnectIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 153
    :cond_0
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget$1;->$SwitchMap$com$cisco$anyconnect$vpn$jni$VPNState:[I

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const v6, 0x7f0a030e

    const/16 v7, 0x64

    const/4 v8, 0x1

    if-eq v5, v8, :cond_3

    const/4 v9, 0x2

    if-eq v5, v9, :cond_2

    const/4 v9, 0x3

    if-eq v5, v9, :cond_1

    const/4 v9, 0x4

    if-eq v5, v9, :cond_1

    const/4 v9, 0x5

    if-eq v5, v9, :cond_1

    goto :goto_1

    .line 166
    :cond_1
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cisco/anyconnect/vpn/android/widgets/Util;->CreateEmptyIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 167
    invoke-virtual {v3, v6, v7, v1, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    goto :goto_1

    .line 160
    :cond_2
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/cisco/anyconnect/vpn/android/widgets/Util;->CreateConnectControlIntentForWidget(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 161
    invoke-virtual {v3, v6, v7, v7, v1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    goto :goto_1

    .line 156
    :cond_3
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/cisco/anyconnect/vpn/android/widgets/Util;->CreateConnectControlIntentForWidget(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 157
    invoke-virtual {v3, v6, v7, v1, v1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 174
    :goto_1
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/widgets/SmallWidget;->mAppWidgetMgr:Landroid/appwidget/AppWidgetManager;

    aget v5, v0, v2

    invoke-virtual {v4, v5, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

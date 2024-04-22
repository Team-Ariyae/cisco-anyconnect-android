.class public Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "StatsDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$RoutePopupListener;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "StatsDetailsActivity"


# instance fields
.field private mNonSecureRouteCount:I

.field private mSecureRouteCount:I

.field private mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

.field private mStatsItemHelper:Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;

.field private mStatsListener:Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmStatsListener(Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;)Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mStatsListener:Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    .line 95
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mStatsListener:Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;

    return-void
.end method

.method private getAppRuleDisplay(Lcom/cisco/anyconnect/vpn/jni/VPNStats;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/anyconnect/vpn/jni/VPNStats;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 422
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_0

    return-object p1

    .line 426
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 428
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 429
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 431
    :catch_0
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private getRouteCount([Lcom/cisco/anyconnect/vpn/jni/RouteInfo;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 366
    :cond_0
    array-length p1, p1

    return p1
.end method

.method private updateAddressInfo(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V
    .locals 3

    .line 569
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const v1, 0x7f1100b0

    .line 570
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->clientAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f1102a2

    .line 571
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->serverAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f1100b2

    .line 572
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->clientAddressV6:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mStatsItemHelper:Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;

    const v1, 0x7f0a011e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->Update(ILjava/util/LinkedHashMap;ZZ)V

    return-void
.end method

.method private updateAppRuleInfo(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V
    .locals 4

    .line 406
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->tunneledApps:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->getAppRuleDisplay(Lcom/cisco/anyconnect/vpn/jni/VPNStats;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const v1, 0x7f0a012d

    const v2, 0x7f0a011f

    const/4 v3, 0x1

    .line 408
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->updateRouteSection(IILjava/util/List;Z)V

    .line 413
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->blockedApps:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->getAppRuleDisplay(Lcom/cisco/anyconnect/vpn/jni/VPNStats;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const v0, 0x7f0a012e

    const v1, 0x7f0a0120

    .line 415
    invoke-direct {p0, v0, v1, p1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->updateRouteSection(IILjava/util/List;Z)V

    return-void
.end method

.method private updateBytesInfo(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V
    .locals 3

    .line 561
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const v1, 0x7f1102a1

    .line 562
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->bytesSent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f11026f

    .line 563
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->bytesReceived:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mStatsItemHelper:Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;

    const v1, 0x7f0a0121

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->Update(ILjava/util/LinkedHashMap;ZZ)V

    return-void
.end method

.method private updateConnectionInfo(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V
    .locals 3

    .line 578
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const v1, 0x7f1102c7

    .line 579
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->timeConnected:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f1102b7

    .line 580
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->state:Ljava/lang/String;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f1102ea

    .line 581
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->tunnelingMode:Ljava/lang/String;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f1102eb

    .line 582
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->tunnelingModeV6:Ljava/lang/String;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mStatsItemHelper:Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;

    const v1, 0x7f0a0122

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->Update(ILjava/util/LinkedHashMap;ZZ)V

    return-void
.end method

.method private updateControlFramesInfo(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V
    .locals 3

    .line 545
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const v1, 0x7f1102a1

    .line 546
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->controlPacketsSent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f11026f

    .line 547
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->controlPacketsReceived:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mStatsItemHelper:Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;

    const v1, 0x7f0a0124

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->Update(ILjava/util/LinkedHashMap;ZZ)V

    return-void
.end method

.method private updateFeatureConfigurationInfo(Lcom/cisco/anyconnect/vpn/jni/VPNStats;Z)V
    .locals 3

    .line 371
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const v1, 0x7f11015c

    .line 374
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->fipsMode:Ljava/lang/String;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mSecureRouteCount:I

    if-nez p1, :cond_1

    iget p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mNonSecureRouteCount:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 382
    :goto_1
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mStatsItemHelper:Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;

    const v2, 0x7f0a0125

    invoke-virtual {v1, v2, v0, p2, p1}, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->Update(ILjava/util/LinkedHashMap;ZZ)V

    return-void
.end method

.method private updateFramesInfo(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V
    .locals 3

    .line 553
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const v1, 0x7f1102a1

    .line 554
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->packetsSent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f11026f

    .line 555
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->packetsReceived:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mStatsItemHelper:Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;

    const v1, 0x7f0a0126

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->Update(ILjava/util/LinkedHashMap;ZZ)V

    return-void
.end method

.method private updateNonSecureRoutesInfo(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V
    .locals 6

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 440
    iget-object v1, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->nonSecureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    if-eqz v1, :cond_0

    .line 441
    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->nonSecureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 443
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/cisco/anyconnect/vpn/jni/RouteInfo;->network:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/cisco/anyconnect/vpn/jni/RouteInfo;->subnet:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x7f0a0135

    const v1, 0x7f0a0128

    const/4 v2, 0x1

    .line 447
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->updateRouteSection(IILjava/util/List;Z)V

    return-void
.end method

.method private updateProtocolInfo(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V
    .locals 9

    .line 513
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 516
    iget-object v1, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->protocolInfo:[Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;

    const v2, 0x7f1100c6

    .line 537
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1100a8

    .line 536
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f11026c

    .line 535
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 519
    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->protocolInfo:[Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;

    array-length v1, p1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_1

    aget-object v7, p1, v6

    .line 521
    iget-boolean v8, v7, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->isActive:Z

    if-eqz v8, :cond_0

    .line 523
    iget-object p1, v7, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v4, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    iget-object p1, v7, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->cipher:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget-object p1, v7, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->compression:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    const p1, 0x7f11020a

    .line 535
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    :cond_2
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mStatsItemHelper:Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;

    const v1, 0x7f0a012a

    invoke-virtual {p1, v1, v0, v5, v5}, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->Update(ILjava/util/LinkedHashMap;ZZ)V

    return-void
.end method

.method private updateRouteSection(IILjava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 457
    invoke-virtual {p0, p2}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const p4, 0x7f11012d

    if-nez p2, :cond_0

    .line 460
    invoke-static {p4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 465
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_1

    .line 468
    invoke-static {p4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p3, :cond_6

    .line 473
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 481
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 482
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 484
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 486
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 488
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00b9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    .line 491
    invoke-static {p4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_3
    const v2, 0x7f0a026e

    .line 495
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_4

    .line 498
    invoke-static {p4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 502
    :cond_4
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$RoutePopupListener;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$RoutePopupListener;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    invoke-virtual {p0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 506
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    :goto_1
    const/16 p3, 0x8

    .line 475
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 476
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateSecureRoutesInfo(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V
    .locals 7

    .line 388
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mNonSecureRouteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 389
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 390
    iget-object v3, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->secureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    if-eqz v3, :cond_1

    .line 391
    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->secureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    array-length v3, p1

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, p1, v1

    .line 393
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/cisco/anyconnect/vpn/jni/RouteInfo;->network:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/cisco/anyconnect/vpn/jni/RouteInfo;->subnet:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const p1, 0x7f0a0136

    const v1, 0x7f0a0129

    .line 397
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->updateRouteSection(IILjava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 277
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "StatsDetailsActivity"

    const-string v2, "onBackPressed()"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onBackPressed()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mStatsItemHelper:Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->HandleContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "onCreate()"

    const-string v1, "StatsDetailsActivity"

    .line 107
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0054

    .line 110
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->setContentView(I)V

    .line 113
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;

    const v0, 0x7f11020a

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/DefaultVPNStats;-><init>(Ljava/lang/String;)V

    .line 115
    new-instance v2, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;)V

    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mStatsItemHelper:Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;

    .line 117
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    new-instance v3, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$2;

    invoke-direct {v3, p0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V

    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    .line 187
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->updateStats(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V

    .line 189
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Activate()Z

    move-result p1

    if-nez p1, :cond_0

    .line 192
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "ServiceConnMgr.Activate failed"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f110139

    .line 193
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_0
    const p1, 0x7f0a0130

    .line 198
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f1100d2

    .line 199
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a012c

    .line 202
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f110024

    .line 203
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a012f

    .line 206
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f11004d

    .line 207
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0134

    .line 210
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f110160

    .line 211
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0131

    .line 214
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f1100e7

    .line 215
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0137

    .line 218
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f1102e7

    .line 219
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0133

    .line 222
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f110140

    .line 223
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a012e

    .line 226
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f110048

    .line 227
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a012d

    .line 230
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f11003e

    .line 231
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0135

    .line 235
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f110208

    .line 236
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0136

    .line 238
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f11029e

    .line 239
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 589
    invoke-super {p0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 590
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mStatsItemHelper:Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->HandleCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 270
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onDestroy()V

    const-string v0, "StatsDetailsActivity"

    const-string v1, "onDestroy"

    .line 271
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Deactivate()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 264
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onPause()V

    const-string v0, "StatsDetailsActivity"

    const-string v1, "onPause"

    .line 265
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 252
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onRestart()V

    const-string v0, "StatsDetailsActivity"

    const-string v1, "onRestart"

    .line 253
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 258
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onResume()V

    const-string v0, "StatsDetailsActivity"

    const-string v1, "onResume"

    .line 259
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 246
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onStop()V

    const-string v0, "StatsDetailsActivity"

    const-string v1, "onStop()"

    .line 247
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateStats(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V
    .locals 7

    const/4 v0, 0x0

    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 288
    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v2

    .line 289
    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetActive()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v2

    .line 291
    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v3

    invoke-interface {v3}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->getTunneledApps()Ljava/util/List;

    move-result-object v3

    .line 292
    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v1

    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->getBlockedApps()Ljava/util/List;

    move-result-object v1

    if-eqz v2, :cond_1

    .line 296
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetType()Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v4

    sget-object v5, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Knox_AppTunnel:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    const v6, 0x7f1102b4

    if-ne v4, v5, :cond_0

    .line 298
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->getKnoxProfileName()Ljava/lang/String;

    .line 299
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->tunneledApps:[Ljava/lang/String;

    .line 300
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->blockedApps:[Ljava/lang/String;

    .line 301
    invoke-static {v6}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->tunnelingMode:Ljava/lang/String;

    new-array v1, v0, [Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    .line 302
    iput-object v1, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->secureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    new-array v1, v0, [Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    .line 303
    iput-object v1, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->nonSecureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 309
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->tunneledApps:[Ljava/lang/String;

    .line 310
    invoke-static {v6}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->tunnelingMode:Ljava/lang/String;

    new-array v1, v0, [Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    .line 311
    iput-object v1, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->secureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    new-array v1, v0, [Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    .line 312
    iput-object v1, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->nonSecureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 320
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "StatsDetailsActivity"

    const-string v4, "failed to update app tunnel display"

    invoke-static {v2, v3, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    :cond_1
    :goto_0
    iget v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mSecureRouteCount:I

    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->secureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    invoke-direct {p0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->getRouteCount([Lcom/cisco/anyconnect/vpn/jni/RouteInfo;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    .line 329
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->secureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->getRouteCount([Lcom/cisco/anyconnect/vpn/jni/RouteInfo;)I

    move-result v0

    iput v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mSecureRouteCount:I

    const/4 v0, 0x1

    .line 332
    :cond_2
    iget v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mNonSecureRouteCount:I

    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->nonSecureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    invoke-direct {p0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->getRouteCount([Lcom/cisco/anyconnect/vpn/jni/RouteInfo;)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 334
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/VPNStats;->nonSecureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->getRouteCount([Lcom/cisco/anyconnect/vpn/jni/RouteInfo;)I

    move-result v0

    iput v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->mNonSecureRouteCount:I

    goto :goto_1

    :cond_3
    move v3, v0

    .line 338
    :goto_1
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->updateConnectionInfo(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V

    .line 340
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->updateAddressInfo(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V

    .line 342
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->updateBytesInfo(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V

    .line 344
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->updateFramesInfo(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V

    .line 346
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->updateControlFramesInfo(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V

    .line 348
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->updateProtocolInfo(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V

    .line 350
    invoke-direct {p0, p1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->updateFeatureConfigurationInfo(Lcom/cisco/anyconnect/vpn/jni/VPNStats;Z)V

    .line 352
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->updateSecureRoutesInfo(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V

    .line 354
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->updateNonSecureRoutesInfo(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V

    .line 356
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->updateAppRuleInfo(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V

    return-void
.end method

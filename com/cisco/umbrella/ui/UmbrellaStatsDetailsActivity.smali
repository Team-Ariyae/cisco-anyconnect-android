.class public Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "UmbrellaStatsDetailsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UmbrellaStatsDetailsActivity"


# instance fields
.field private mStatsItemHelper:Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;

.field private mUmbrellaStatsObserver:Lcom/cisco/umbrella/UmbrellaStatsObserver;

.field statsQuery:Lcom/cisco/umbrella/UmbrellaStatsQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    .line 49
    new-instance v0, Lcom/cisco/umbrella/UmbrellaStatsObserver;

    new-instance v1, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity$1;

    invoke-direct {v1, p0}, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity$1;-><init>(Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;)V

    invoke-direct {v0, v1}, Lcom/cisco/umbrella/UmbrellaStatsObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->mUmbrellaStatsObserver:Lcom/cisco/umbrella/UmbrellaStatsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->updateStats()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private insertValue(Ljava/util/LinkedHashMap;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 111
    sget v0, Lcom/cisco/umbrella/R$string;->umbrella_not_available:I

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p3, v0

    :cond_1
    invoke-virtual {p1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateStats()V
    .locals 4

    .line 98
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 100
    sget v1, Lcom/cisco/umbrella/R$string;->umbrella_stats_environment:I

    iget-object v2, p0, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->statsQuery:Lcom/cisco/umbrella/UmbrellaStatsQuery;

    invoke-virtual {v2}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->getEnvState()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->insertValue(Ljava/util/LinkedHashMap;ILjava/lang/String;)V

    .line 101
    sget v1, Lcom/cisco/umbrella/R$string;->umbrella_stats_dns_protection_status:I

    iget-object v2, p0, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->statsQuery:Lcom/cisco/umbrella/UmbrellaStatsQuery;

    invoke-virtual {v2}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->getDns4ProtectionState()Lcom/cisco/umbrella/ui/states/ProtectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cisco/umbrella/ui/states/ProtectionState;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->insertValue(Ljava/util/LinkedHashMap;ILjava/lang/String;)V

    .line 102
    sget v1, Lcom/cisco/umbrella/R$string;->umbrella_stats_id:I

    iget-object v2, p0, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->statsQuery:Lcom/cisco/umbrella/UmbrellaStatsQuery;

    invoke-virtual {v2}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->getAndroidID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->insertValue(Ljava/util/LinkedHashMap;ILjava/lang/String;)V

    .line 103
    sget v1, Lcom/cisco/umbrella/R$string;->umbrella_stats_last_connected:I

    iget-object v2, p0, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->statsQuery:Lcom/cisco/umbrella/UmbrellaStatsQuery;

    invoke-virtual {v2}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->getLastConnectedTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->insertValue(Ljava/util/LinkedHashMap;ILjava/lang/String;)V

    .line 104
    sget v1, Lcom/cisco/umbrella/R$string;->umbrella_stats_dns4_encryption:I

    iget-object v2, p0, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->statsQuery:Lcom/cisco/umbrella/UmbrellaStatsQuery;

    invoke-virtual {v2}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->getDns4EncryptionState()Lcom/cisco/umbrella/ui/states/EncryptionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cisco/umbrella/ui/states/EncryptionState;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->insertValue(Ljava/util/LinkedHashMap;ILjava/lang/String;)V

    .line 105
    sget v1, Lcom/cisco/umbrella/R$string;->umbrella_stats_logging:I

    iget-object v2, p0, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->statsQuery:Lcom/cisco/umbrella/UmbrellaStatsQuery;

    invoke-virtual {v2}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->getLoggingState()Lcom/cisco/umbrella/ui/states/LoggingState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cisco/umbrella/ui/states/LoggingState;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->insertValue(Ljava/util/LinkedHashMap;ILjava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->mStatsItemHelper:Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;

    sget v2, Lcom/cisco/umbrella/R$id;->ll_umbrella_statistics_dns_ip_information_list:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->Update(ILjava/util/LinkedHashMap;ZZ)V

    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->mStatsItemHelper:Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->HandleContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget p1, Lcom/cisco/umbrella/R$layout;->umbrella_statistics:I

    invoke-virtual {p0, p1}, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->setContentView(I)V

    .line 73
    sget p1, Lcom/cisco/umbrella/R$id;->tv_umbrella_statistics_umbrella_security_info_header:I

    invoke-virtual {p0, p1}, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 74
    sget v0, Lcom/cisco/umbrella/R$string;->umbrella_dns_ip_security_information:I

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    new-instance p1, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;)V

    iput-object p1, p0, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->mStatsItemHelper:Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;

    .line 77
    new-instance p1, Lcom/cisco/umbrella/UmbrellaStatsQuery;

    invoke-direct {p1, p0}, Lcom/cisco/umbrella/UmbrellaStatsQuery;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->statsQuery:Lcom/cisco/umbrella/UmbrellaStatsQuery;

    .line 78
    invoke-direct {p0}, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->updateStats()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 118
    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->mStatsItemHelper:Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->HandleCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 91
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onPause()V

    .line 92
    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/cisco/umbrella/util/Constant;->UMBRELLA_STATS_PROVIDER_AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->mUmbrellaStatsObserver:Lcom/cisco/umbrella/UmbrellaStatsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 83
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onResume()V

    .line 84
    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/cisco/umbrella/util/Constant;->UMBRELLA_STATS_PROVIDER_AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/cisco/umbrella/ui/UmbrellaStatsDetailsActivity;->mUmbrellaStatsObserver:Lcom/cisco/umbrella/UmbrellaStatsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

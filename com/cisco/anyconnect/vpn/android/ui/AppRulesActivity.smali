.class public Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "AppRulesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity$EntryPopupListener;
    }
.end annotation


# static fields
.field static VPN_CONNECTION_EXTRA:Ljava/lang/String; = "VPN_CONNECTION_EXTRA"


# instance fields
.field mConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    return-void
.end method

.method private getAppRuleDisplay(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 66
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private updateDisplay(IILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p2}, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const v0, 0x7f11012d

    if-nez p2, :cond_0

    .line 83
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_1

    .line 91
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 95
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 98
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 100
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d00b9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    .line 105
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_2
    const v3, 0x7f0a026e

    .line 109
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v3, :cond_3

    .line 112
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 116
    :cond_3
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity$EntryPopupListener;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity$EntryPopupListener;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0, v3}, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 120
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001f

    .line 37
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 40
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;->VPN_CONNECTION_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;->mConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 42
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->hasAllowedApplications()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;->mConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->getTunnelApplications()Ljava/util/List;

    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;->getAppRuleDisplay(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const v0, 0x7f0a006c

    const v1, 0x7f0a0067

    .line 46
    invoke-direct {p0, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;->updateDisplay(IILjava/util/List;)V

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;->mConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->hasDisallowedApplications()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;->mConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->getDisallowedApplications()Ljava/util/List;

    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;->getAppRuleDisplay(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const v0, 0x7f0a006d

    const v1, 0x7f0a0069

    .line 55
    invoke-direct {p0, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;->updateDisplay(IILjava/util/List;)V

    :cond_1
    return-void
.end method

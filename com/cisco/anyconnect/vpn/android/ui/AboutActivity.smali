.class public Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "AboutActivity.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "AboutActivity"


# instance fields
.field private mAdapter:Lcom/cisco/anyconnect/android/ui/util/ACListLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    return-void
.end method

.method private getVersionText()Ljava/lang/String;
    .locals 3

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f11001f

    .line 173
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f11010d

    .line 175
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f11010c

    .line 177
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 178
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, " ("

    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onCreate$0(Landroidx/browser/customtabs/CustomTabsIntent;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    const-string p2, "https://www.cisco.com/c/en/us/about/legal/cloud-and-software/end_user_license_agreement.html"

    .line 128
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic lambda$onCreate$1(Landroidx/browser/customtabs/CustomTabsIntent;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    const-string p2, "https://www.cisco.com/c/en/us/about/legal/privacy-full.html"

    .line 131
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic lambda$onCreate$2(Landroidx/browser/customtabs/CustomTabsIntent;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    const-string p2, "https://www.cisco.com/c/en/us/about/legal/cloud-and-software/software-terms.html"

    .line 134
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic lambda$onCreate$3(Landroidx/browser/customtabs/CustomTabsIntent;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    const-string p2, "https://www.cisco.com/c/en/us/about/legal/open-source-documentation-responsive.html"

    .line 137
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 52
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001c

    .line 53
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity;->setContentView(I)V

    const p1, 0x7f0a0013

    .line 55
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 56
    new-instance v0, Lcom/cisco/android/nchs/support/DeviceInfoManager;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v1, Lcom/cisco/android/nchs/support/DeviceInfoReport;

    invoke-direct {v1, p0, v0}, Lcom/cisco/android/nchs/support/DeviceInfoReport;-><init>(Landroid/content/Context;Lcom/cisco/android/nchs/support/DeviceInfoManager;)V

    .line 59
    invoke-virtual {v1}, Lcom/cisco/android/nchs/support/DeviceInfoReport;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0012

    .line 62
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f11012d

    const-string v1, "AboutActivity"

    if-nez p1, :cond_0

    .line 64
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Cannot find view for copyright"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_0
    const v2, 0x7f1100ea

    .line 69
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0a0014

    .line 72
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_1

    .line 74
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Cannot find view for version text"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity;->getVersionText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090007

    .line 82
    invoke-static {p0, p1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    const v0, 0x7f0a0010

    .line 85
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 88
    new-instance v1, Landroid/view/View;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x7f12011a

    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    new-instance v2, Landroid/view/View;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    invoke-direct {v5, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v5, v4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    new-instance v5, Landroid/view/View;

    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-direct {v6, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v5, v6, v4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    new-instance v3, Lcom/cisco/anyconnect/android/ui/util/ACListItem;

    const v4, 0x7f1102c4

    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance v4, Lcom/cisco/anyconnect/android/ui/util/ACListItem;

    const v6, 0x7f110253

    invoke-static {v6}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v6, Lcom/cisco/anyconnect/android/ui/util/ACListItem;

    const v7, 0x7f110210

    invoke-static {v7}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;-><init>(Ljava/lang/String;)V

    .line 96
    new-instance v7, Lcom/cisco/anyconnect/android/ui/util/ACListItem;

    const v8, 0x7f1102c6

    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance v8, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;-><init>(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V

    iput-object v8, p0, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity;->mAdapter:Lcom/cisco/anyconnect/android/ui/util/ACListLayout;

    .line 100
    invoke-virtual {v8}, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->clearList()V

    .line 101
    iget-object v8, p0, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity;->mAdapter:Lcom/cisco/anyconnect/android/ui/util/ACListLayout;

    invoke-virtual {v8, v3}, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->putItem(Lcom/cisco/anyconnect/android/ui/util/ACListItem;)Lcom/cisco/anyconnect/android/ui/util/ACListItem;

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity;->mAdapter:Lcom/cisco/anyconnect/android/ui/util/ACListLayout;

    invoke-virtual {v1, v4}, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->putItem(Lcom/cisco/anyconnect/android/ui/util/ACListItem;)Lcom/cisco/anyconnect/android/ui/util/ACListItem;

    .line 104
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity;->mAdapter:Lcom/cisco/anyconnect/android/ui/util/ACListLayout;

    invoke-virtual {v1, v6}, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->putItem(Lcom/cisco/anyconnect/android/ui/util/ACListItem;)Lcom/cisco/anyconnect/android/ui/util/ACListItem;

    .line 106
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity;->mAdapter:Lcom/cisco/anyconnect/android/ui/util/ACListLayout;

    invoke-virtual {v0, v7}, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->putItem(Lcom/cisco/anyconnect/android/ui/util/ACListItem;)Lcom/cisco/anyconnect/android/ui/util/ACListItem;

    .line 110
    invoke-virtual {v3, p1}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->setTypeface(Landroid/graphics/Typeface;)V

    .line 111
    invoke-virtual {v4, p1}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    invoke-virtual {v6, p1}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    invoke-virtual {v7, p1}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->setTypeface(Landroid/graphics/Typeface;)V

    .line 116
    new-instance p1, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    invoke-direct {p1}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;-><init>()V

    const v0, 0x7f06003a

    .line 117
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->build()Landroidx/browser/customtabs/CustomTabColorSchemeParams;

    move-result-object p1

    .line 119
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    const/4 v2, 0x1

    .line 121
    invoke-virtual {v0, v2, p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setColorSchemeParams(ILandroidx/browser/customtabs/CustomTabColorSchemeParams;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 122
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p1

    .line 123
    iget-object v0, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity$$ExternalSyntheticLambda0;-><init>(Landroidx/browser/customtabs/CustomTabsIntent;Landroid/app/Activity;)V

    invoke-virtual {v3, v0}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity$$ExternalSyntheticLambda1;-><init>(Landroidx/browser/customtabs/CustomTabsIntent;Landroid/app/Activity;)V

    invoke-virtual {v4, v0}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity$$ExternalSyntheticLambda2;-><init>(Landroidx/browser/customtabs/CustomTabsIntent;Landroid/app/Activity;)V

    invoke-virtual {v6, v0}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity$$ExternalSyntheticLambda3;-><init>(Landroidx/browser/customtabs/CustomTabsIntent;Landroid/app/Activity;)V

    invoke-virtual {v7, v0}, Lcom/cisco/anyconnect/android/ui/util/ACListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a02ae

    .line 141
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "VPN"

    .line 143
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-static {p0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->hasKnoxNPA(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Network Visibility"

    .line 146
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_2
    invoke-static {}, Lcom/cisco/android/nchs/permissions/Prerequisites;->hasUmbrellaSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Umbrella"

    .line 150
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 156
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-eq v1, v4, :cond_4

    const-string v4, ", "

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_5
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 168
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onDestroy()V

    return-void
.end method

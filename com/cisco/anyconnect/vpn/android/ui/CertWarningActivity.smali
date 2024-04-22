.class public Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "CertWarningActivity.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "CertWarningActivity"

.field public static final GENERIC_UNTRUSTED_HOST:Ljava/lang/String; = "generic_untrusted_host"


# instance fields
.field private mGenericHostName:Ljava/lang/String;

.field private mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;


# direct methods
.method static bridge synthetic -$$Nest$mdrawMainView(Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->drawMainView()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    return-void
.end method

.method private customizeActionBar(Ljava/lang/String;)V
    .locals 3

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "CertWarningActivity"

    const-string v2, "customizeActionBar failed"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private drawMainView()V
    .locals 6

    const v0, 0x7f0d0034

    .line 103
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->setContentView(I)V

    .line 106
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->mGenericHostName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->getActiveConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f110093

    .line 112
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->rejectCertBanner()V

    return-void

    .line 116
    :cond_0
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const v1, 0x7f0a00c7

    .line 124
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f110322

    .line 126
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const v0, 0x7f110324

    .line 128
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    aput-object v0, v2, v5

    const-string v0, "%1$s <br><br> %2$s <br><br> %3$s"

    .line 125
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const v0, 0x7f0a00c5

    .line 131
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f110325

    .line 132
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "<br><u>%1$s</u><br>"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 135
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity$$ExternalSyntheticLambda2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00c6

    .line 147
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-array v1, v5, [Ljava/lang/Object;

    const v2, 0x7f110326

    .line 149
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f110323

    .line 150
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "%1$s <br><br> %2$s"

    .line 148
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 154
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->setupButtons()V

    return-void
.end method

.method private getActiveConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 5

    const-string v0, "CertWarningActivity"

    const/4 v1, 0x0

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 165
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Unexpected null VpnService"

    invoke-static {v2, v0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 169
    :cond_0
    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 172
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Unexpected null ConnectionList"

    invoke-static {v2, v0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 176
    :cond_1
    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetActive()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v2

    if-nez v2, :cond_2

    .line 179
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Unexpected null active VpnConnection"

    invoke-static {v2, v0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_2
    return-object v2

    :catch_0
    move-exception v2

    .line 187
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Failed to show cert warning due to RemoteException"

    invoke-static {v3, v0, v4, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private rejectCertBanner()V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->mGenericHostName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v0

    const-string v1, "CertWarningActivity"

    if-nez v0, :cond_1

    .line 232
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Unexpected null service"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->SetCertBannerResponse(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 242
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "SetCertBannerResponse failed"

    invoke-static {v2, v1, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private setupButtons()V
    .locals 3

    .line 195
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 196
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/16 v1, 0x1f4

    .line 198
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f0a00c2

    .line 203
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 204
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a00c1

    .line 210
    invoke-virtual {p0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    if-eqz v0, :cond_1

    const/high16 v0, 0x41700000    # 15.0f

    .line 213
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 214
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 216
    :cond_1
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity$$ExternalSyntheticLambda1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$drawMainView$0$com-cisco-anyconnect-vpn-android-ui-CertWarningActivity(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const v0, 0x7f110320

    .line 139
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const v0, 0x7f11031f

    .line 140
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "<b>%1$s</b><br><br>%2$s"

    .line 136
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.HELP_SHOW_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "help_text"

    .line 143
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$setupButtons$1$com-cisco-anyconnect-vpn-android-ui-CertWarningActivity(Landroid/view/View;)V
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->rejectCertBanner()V

    .line 207
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->finish()V

    return-void
.end method

.method synthetic lambda$setupButtons$2$com-cisco-anyconnect-vpn-android-ui-CertWarningActivity(Landroid/view/View;)V
    .locals 1

    .line 217
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.android.SETTINGS_SHOW_INTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xd05

    .line 218
    invoke-virtual {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 269
    invoke-super {p0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p1, 0x25

    if-ne p1, p2, :cond_0

    .line 272
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->setResult(I)V

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->rejectCertBanner()V

    .line 276
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->rejectCertBanner()V

    .line 252
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "generic_untrusted_host"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->mGenericHostName:Ljava/lang/String;

    if-eqz p1, :cond_0

    const p1, 0x7f110095

    .line 71
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->customizeActionBar(Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->drawMainView()V

    goto :goto_0

    :cond_0
    const p1, 0x7f110094

    .line 76
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->customizeActionBar(Ljava/lang/String;)V

    .line 78
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;Landroid/content/Context;)V

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    .line 88
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Activate()Z

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 258
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onDestroy()V

    .line 260
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Deactivate()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 94
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 98
    :cond_0
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

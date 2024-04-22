.class public Lcom/cisco/anyconnect/vpn/android/ui/LocalizationServerImportActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;
.source "LocalizationServerImportActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityLabel()I
    .locals 1

    const v0, 0x7f11019b

    return v0
.end method

.method public getPreferencesXml()I
    .locals 1

    const v0, 0x7f140006

    return v0
.end method

.method synthetic lambda$setUpButtons$0$com-cisco-anyconnect-vpn-android-ui-LocalizationServerImportActivity(Landroid/view/View;)V
    .locals 2

    const p1, 0x7f0a01d2

    .line 67
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationServerImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;

    const v0, 0x7f0a01d3

    .line 68
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationServerImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;

    .line 69
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setText(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setText(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationServerImportActivity;->onUserSubmit()V

    return-void
.end method

.method synthetic lambda$setUpButtons$1$com-cisco-anyconnect-vpn-android-ui-LocalizationServerImportActivity(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationServerImportActivity;->setResult(I)V

    .line 77
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationServerImportActivity;->finish()V

    return-void
.end method

.method public onUserSubmit()V
    .locals 6

    .line 30
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationServerImportActivity;->mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;

    const-string v1, "address"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;->GetStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationServerImportActivity;->mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;

    const-string v4, "langcode"

    invoke-virtual {v3, v4, v2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;->GetStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 35
    invoke-virtual {p0, v5}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationServerImportActivity;->setResult(I)V

    .line 36
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationServerImportActivity;->finish()V

    return-void

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    const v0, 0x7f1102d4

    .line 42
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 46
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    const v0, 0x7f1102d5

    .line 48
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 52
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 53
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 56
    invoke-virtual {p0, v0, v3}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationServerImportActivity;->setResult(ILandroid/content/Intent;)V

    .line 57
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationServerImportActivity;->finish()V

    return-void
.end method

.method protected setUpButtons()V
    .locals 2

    const v0, 0x7f0a007d

    .line 62
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationServerImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;

    const v1, 0x7f11004b

    .line 63
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    const v1, 0x7f110050

    .line 64
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 66
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationServerImportActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationServerImportActivity$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationServerImportActivity;)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationServerImportActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationServerImportActivity$$ExternalSyntheticLambda1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationServerImportActivity;)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

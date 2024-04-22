.class public Lcom/cisco/anyconnect/vpn/android/ui/CertificateUriImportActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;
.source "CertificateUriImportActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityLabel()I
    .locals 1

    const v0, 0x7f11009f

    return v0
.end method

.method public getPreferencesXml()I
    .locals 1

    const v0, 0x7f140001

    return v0
.end method

.method synthetic lambda$setUpButtons$0$com-cisco-anyconnect-vpn-android-ui-CertificateUriImportActivity(Landroid/view/View;)V
    .locals 1

    const p1, 0x7f0a00ca

    .line 63
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateUriImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;

    .line 64
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setText(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateUriImportActivity;->onUserSubmit()V

    return-void
.end method

.method synthetic lambda$setUpButtons$1$com-cisco-anyconnect-vpn-android-ui-CertificateUriImportActivity(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateUriImportActivity;->setResult(I)V

    .line 71
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateUriImportActivity;->finish()V

    return-void
.end method

.method public onUserSubmit()V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateUriImportActivity;->mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;

    const-string v1, ""

    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;->GetStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateUriImportActivity;->setResult(I)V

    .line 33
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateUriImportActivity;->finish()V

    return-void

    .line 37
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 38
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateUriImportActivity;->setResult(ILandroid/content/Intent;)V

    .line 41
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateUriImportActivity;->finish()V

    return-void
.end method

.method protected setUpButtons()V
    .locals 2

    const v0, 0x7f0a007d

    .line 58
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateUriImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;

    const v1, 0x7f11004b

    .line 59
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    const v1, 0x7f110050

    .line 60
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 62
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/CertificateUriImportActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateUriImportActivity$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateUriImportActivity;)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/CertificateUriImportActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateUriImportActivity$$ExternalSyntheticLambda1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateUriImportActivity;)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

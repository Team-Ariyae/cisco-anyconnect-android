.class public abstract Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "BaseUriImportActivity.java"


# instance fields
.field protected mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;

.field private final mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    .line 36
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    return-void
.end method


# virtual methods
.method public abstract getActivityLabel()I
.end method

.method public abstract getPreferencesXml()I
.end method

.method public onBackPressed()V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;->onUserSubmit()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "UserPreferences"

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;

    invoke-direct {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;->mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;

    .line 62
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;->LOCAL:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;->mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;

    invoke-virtual {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->SetPersistenceManager(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;)V

    const p1, 0x7f0d0028

    .line 64
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;->setContentView(I)V

    const p1, 0x7f0a007e

    .line 67
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 68
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 69
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;->getPreferencesXml()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->InflatePreferencesFromXml(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110251

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;->setUpButtons()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 108
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onDestroy()V

    return-void
.end method

.method public abstract onUserSubmit()V
.end method

.method protected setUpButtons()V
    .locals 2

    const v0, 0x7f0a007d

    .line 83
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;

    const v1, 0x7f11004b

    .line 84
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    const v1, 0x7f110050

    .line 85
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity$1;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity$2;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

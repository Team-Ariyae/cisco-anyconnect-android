.class public Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;
.super Landroid/preference/PreferenceFragment;
.source "NVMSettingPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NVMSettingPreferences"


# instance fields
.field private checkBoxPreference:Landroid/preference/CheckBoxPreference;

.field private nvmSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;->nvmSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    .line 35
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;->checkBoxPreference:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method private notifyNVMService(Landroid/content/Intent;)V
    .locals 3

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "userpref_exportonmobiledata"

    .line 88
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 90
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 89
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget p1, Lcom/cisco/anyconnect/nvm/R$xml;->nvm_settings_editor_preferences:I

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;->addPreferencesFromResource(I)V

    .line 44
    new-instance p1, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;->nvmSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    .line 45
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/cisco/anyconnect/nvm/R$string;->nvm_settings_preference_metered_network_key:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;->checkBoxPreference:Landroid/preference/CheckBoxPreference;

    .line 46
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;->updatePreference()V

    .line 47
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 48
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 53
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 58
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 59
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;->updatePreference()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cisco/anyconnect/nvm/R$string;->nvm_settings_preference_metered_network_key:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    .line 74
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string/jumbo p2, "userpref_exportonmobiledata"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;->notifyNVMService(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public updatePreference()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;->nvmSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;->checkBoxPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;->isMeteredNetworkUserControllable()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 65
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;->checkBoxPreference:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;->nvmSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;->isUserAllowedExportingOnMeteredNetwork()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

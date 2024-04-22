.class public Lcom/cisco/anyconnect/nvm/ui/NVMSettingsFragment;
.super Landroid/app/Fragment;
.source "NVMSettingsFragment.java"


# instance fields
.field private profileManagerUtils:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/ui/NVMSettingsFragment;->view:Landroid/view/View;

    .line 35
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/ui/NVMSettingsFragment;->profileManagerUtils:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;

    return-void
.end method

.method private isProfileConfigured()Z
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isNPAEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/ui/NVMSettingsFragment;->profileManagerUtils:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getProfiles()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;->hasProfile(Ljava/util/List;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private showSettingsFragment()V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMSettingsFragment;->isProfileConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/ui/NVMSettingsFragment;->view:Landroid/view/View;

    sget v1, Lcom/cisco/anyconnect/nvm/R$id;->preference_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/ui/NVMSettingsFragment;->view:Landroid/view/View;

    sget v1, Lcom/cisco/anyconnect/nvm/R$id;->preference_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 40
    sget p3, Lcom/cisco/anyconnect/nvm/R$layout;->fragment_nvmsettings:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/ui/NVMSettingsFragment;->view:Landroid/view/View;

    .line 41
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isNPAEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    new-instance p1, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;

    invoke-direct {p1}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/ui/NVMSettingsFragment;->profileManagerUtils:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMSettingsFragment;->showSettingsFragment()V

    .line 45
    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/ui/NVMSettingsFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 58
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 59
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMSettingsFragment;->showSettingsFragment()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isNPAEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    new-instance p1, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;

    invoke-direct {p1}, Lcom/cisco/anyconnect/nvm/ui/NVMSettingPreferences;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/ui/NVMSettingsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    sget v0, Lcom/cisco/anyconnect/nvm/R$id;->preference_container:I

    invoke-virtual {p2, v0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

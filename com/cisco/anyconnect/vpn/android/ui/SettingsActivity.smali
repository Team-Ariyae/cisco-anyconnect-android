.class public Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$StrictModeUpdateTask;,
        Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$OcspUpdateTask;,
        Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateTask;,
        Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "SettingsActivity"

.field private static final NVM_SETTINGS_FRAGMENT_KEY:Ljava/lang/String; = "nvmsettings"

.field private static final OPTION_MENU_ADDITIONAL_INFORMATION_ID:I

.field private static final OPTION_MENU_ITEMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIgnoreManualPrefChange:Z

.field private mInitialized:Z

.field private mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

.field private mNchsServiceConnection:Landroid/content/ServiceConnection;

.field private mOriginalFipsMode:Z

.field private final mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

.field private mRemoteControlPref:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;

.field private mSettingListener:Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;

.field private mVPNServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

.field private mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOriginalFipsMode(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mOriginalFipsMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingListener(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;)Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mSettingListener:Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVpnService(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmNCHS(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVpnService(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishCreate(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->finishCreate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSettingChanged(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMDMControllableSettings(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->updateMDMControllableSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->OPTION_MENU_ITEMS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    .line 77
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mIgnoreManualPrefChange:Z

    .line 94
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mSettingListener:Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;

    .line 121
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$3;

    invoke-direct {v1, p0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mVPNServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    .line 181
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$4;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mNchsServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private applyManagedConfig()V
    .locals 4

    .line 692
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->get(Landroid/content/Context;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 698
    :cond_0
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->isRemoteControlModeSet()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 699
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mRemoteControlPref:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getRemoteControlMode()Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->setValue(Ljava/lang/String;)V

    .line 700
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mRemoteControlPref:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;

    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->setEnabled(Z)V

    .line 703
    :cond_1
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->isBlockUntrustedServersSet()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0a0274

    .line 704
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 707
    :cond_2
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->isFipsSet()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0a0279

    .line 708
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 711
    :cond_3
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->isStrictCertSet()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0a027b

    .line 712
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 715
    :cond_4
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->isCertRevocationSet()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0a027a

    .line 716
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    return-void
.end method

.method private bindNCHS()V
    .locals 3

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mNchsServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private finishCreate()V
    .locals 4

    .line 581
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 587
    :cond_0
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/VpnSettingPersistenceManager;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/VpnSettingPersistenceManager;-><init>(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V

    .line 588
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;->LOCAL:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;

    invoke-virtual {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->SetPersistenceManager(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;)V

    const v0, 0x7f0d00bd

    .line 590
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->setContentView(I)V

    const v0, 0x7f0a0277

    .line 593
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 594
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 595
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    const v2, 0x7f14000b

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-virtual {v1, p0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->InflatePreferencesFromXml(Landroid/content/Context;ILcom/cisco/anyconnect/vpn/android/service/IVpnService;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 599
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110251

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 603
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 606
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "com.cisco.anyconnect.nvm.ui.NVMSettingsFragment"

    .line 607
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    const-string v2, "nvmsettings"

    const v3, 0x7f0a022a

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 610
    :goto_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "SettingsActivity"

    const-string v3, "Failed to instantiate NVMSettingsFragment"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 613
    :goto_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    const-string v1, "RemoteControl"

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mRemoteControlPref:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;

    .line 614
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->getTranslatedStrings()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 615
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mRemoteControlPref:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->getStringValues()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 616
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mRemoteControlPref:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->getDescriptiveStringValues()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->setEntryDescriptions([Ljava/lang/CharSequence;)V

    .line 617
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mRemoteControlPref:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->setSummaryMaxLines(I)V

    .line 620
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mRemoteControlPref:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 622
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mRemoteControlPref:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->Disabled:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->setValue(Ljava/lang/String;)V

    :cond_2
    const v0, 0x7f0a0273

    .line 626
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const v1, 0x7f110036

    .line 628
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    :cond_3
    invoke-static {}, Lcom/cisco/android/nchs/permissions/Prerequisites;->hasFipsSupport()Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f0a0279

    .line 633
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    .line 636
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 640
    :cond_4
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->applyManagedConfig()V

    const/4 v0, 0x1

    .line 642
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mInitialized:Z

    .line 643
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->isFipsSettingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mOriginalFipsMode:Z

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mOriginalFipsMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mOriginalFipsMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->getFipsPreference()Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 648
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mOriginalFipsMode:Z

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->setValue(Z)V

    :cond_5
    return-void
.end method

.method private getDebugModePreference()Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;
    .locals 2

    .line 671
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    const-string v1, "DebugMode"

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;

    return-object v0
.end method

.method private getDisablePACProxyPreference()Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;
    .locals 2

    .line 682
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    const-string v1, "DisablePACProxy"

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;

    return-object v0
.end method

.method private getFipsPreference()Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    const-string v1, "Fips"

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;

    return-object v0
.end method

.method private isDebugModeEnabled()Z
    .locals 1

    .line 676
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->getDebugModePreference()Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFipsSettingEnabled()Z
    .locals 3

    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->FIPS:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    invoke-direct {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/OperatingMode;)V

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->IsOperatingMode(Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private isPACProxyDisabled()Z
    .locals 1

    .line 687
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->getDisablePACProxyPreference()Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string p2, "Debug mode for AnyConnect is "

    const-string v0, "PAC URL Proxy feature for AnyConnect is "

    .line 423
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mIgnoreManualPrefChange:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 425
    iput-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mIgnoreManualPrefChange:Z

    return-void

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    move-result-object v1

    const-string v3, "SettingsActivity"

    if-nez v1, :cond_1

    .line 434
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot find preference with key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 438
    :cond_1
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->UpdateFromPersistenceManager()V

    const-string v1, "Fips"

    .line 440
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "Unexpected RemoteException"

    if-eqz v4, :cond_3

    .line 442
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;

    .line 447
    :try_start_0
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->FIPS:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/OperatingMode;)V

    .line 448
    invoke-interface {p2, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->IsOperatingMode(Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;)Z

    move-result p2

    .line 450
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->getValue()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p2, v0, :cond_2

    return-void

    :catch_0
    move-exception p2

    .line 456
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v0, v3, v7, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    if-eqz p1, :cond_b

    .line 459
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    if-eqz p2, :cond_b

    .line 461
    new-instance p2, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateTask;

    invoke-direct {p2, p0, v6}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateTask;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateTask-IA;)V

    .line 462
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->getValue()Z

    move-result p1

    new-array v0, v5, [Ljava/lang/Boolean;

    .line 463
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    :cond_3
    const-string v1, "Ocsp"

    .line 466
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 468
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    .line 469
    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;

    .line 474
    :try_start_1
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-interface {p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object p2

    .line 475
    invoke-interface {p2}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->IsRevocationEnabled()Z

    move-result p2

    .line 477
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->getValue()Z

    move-result v0

    if-ne p2, v0, :cond_4

    .line 479
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "USER_PREFERENCES_OCSP"

    invoke-static {p2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p2

    .line 486
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v0, v3, v7, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    if-eqz p1, :cond_b

    .line 490
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    if-eqz p2, :cond_b

    .line 492
    new-instance p2, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$OcspUpdateTask;

    invoke-direct {p2, p0, v6}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$OcspUpdateTask;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$OcspUpdateTask-IA;)V

    .line 493
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->getValue()Z

    move-result p1

    new-array v0, v5, [Ljava/lang/Boolean;

    .line 494
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$OcspUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    :cond_5
    const-string v1, "Strict_Mode"

    .line 497
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 499
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    .line 500
    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;

    .line 505
    :try_start_2
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->StrictMode:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/OperatingMode;)V

    .line 506
    invoke-interface {p2, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->IsOperatingMode(Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;)Z

    move-result p2

    .line 508
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->getValue()Z

    move-result v0

    if-ne p2, v0, :cond_6

    .line 510
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "USER_PREFERENCES_STRICT_MODE"

    invoke-static {p2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p2

    .line 517
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v0, v3, v7, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    if-eqz p1, :cond_b

    .line 521
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    if-eqz p2, :cond_b

    .line 523
    new-instance p2, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$StrictModeUpdateTask;

    invoke-direct {p2, p0, v6}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$StrictModeUpdateTask;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$StrictModeUpdateTask-IA;)V

    .line 524
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->getValue()Z

    move-result p1

    new-array v0, v5, [Ljava/lang/Boolean;

    .line 525
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$StrictModeUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_7
    const-string v1, "DebugMode"

    .line 528
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "disabled"

    const-string v5, "enabled"

    const-string v6, "Unexpected exception"

    if-eqz v2, :cond_9

    .line 532
    :try_start_3
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->isDebugModeEnabled()Z

    move-result p1

    .line 533
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    invoke-interface {v0, v1, p1}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->SetUserPreference(Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    .line 534
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "AnyConnect"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/NchsUtils;->SetDisplayNotification(Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 535
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    if-eqz p1, :cond_8

    move-object v4, v5

    .line 536
    :cond_8
    invoke-virtual {p2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 535
    invoke-static {v0, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 540
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p2, v3, v6, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_9
    const-string p2, "DisablePACProxy"

    .line 544
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 548
    :try_start_4
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->isPACProxyDisabled()Z

    move-result p1

    .line 549
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    invoke-interface {v1, p2, p1}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->SetUserPreference(Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    .line 550
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    if-eqz p1, :cond_a

    goto :goto_0

    :cond_a
    move-object v4, v5

    .line 551
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 550
    invoke-static {p2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    :catch_4
    move-exception p1

    .line 555
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p2, v3, v6, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_1
    return-void
.end method

.method private unbindNCHS()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mNchsServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mNchsServiceConnection:Landroid/content/ServiceConnection;

    :cond_0
    return-void
.end method

.method private updateMDMControllableSettings()V
    .locals 10

    const-string v0, "SettingsActivity"

    const v1, 0x7f0a0274

    .line 227
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0279

    .line 228
    invoke-virtual {p0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a027b

    .line 229
    invoke-virtual {p0, v3}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a027a

    .line 230
    invoke-virtual {p0, v4}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 234
    :try_start_0
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    if-nez v5, :cond_0

    .line 235
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Unexpected null VpnService."

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 240
    :cond_0
    invoke-interface {v5}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v5

    invoke-interface {v5}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->isDisconnected()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 242
    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 244
    :cond_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 245
    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 246
    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 248
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v1

    .line 249
    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetAllNames()Ljava/util/List;

    move-result-object v5

    .line 250
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 251
    invoke-interface {v1, v6}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 253
    invoke-virtual {v6}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsMDMImported()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 254
    sget-object v7, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->Enable:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    invoke-virtual {v6}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetFipsMode()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    move-result-object v8

    const/4 v9, 0x0

    if-ne v7, v8, :cond_3

    .line 255
    invoke-virtual {v2, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 257
    :cond_3
    sget-object v7, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;->Enable:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    .line 258
    invoke-virtual {v6}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetStrictMode()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    move-result-object v8

    if-ne v7, v8, :cond_4

    .line 259
    invoke-virtual {v3, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 261
    :cond_4
    invoke-virtual {v6}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsRevocationEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 262
    invoke-virtual {v4, v9}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 268
    :cond_5
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->applyManagedConfig()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 270
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "RemoteException while updating mdm settings "

    invoke-static {v2, v0, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 404
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    .line 406
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->OPTION_MENU_ITEMS:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->setOptionsMenu(Ljava/util/List;)V

    .line 408
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mVPNServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Activate()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f110139

    .line 411
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->finish()V

    return-void

    .line 416
    :cond_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->bindNCHS()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mVPNServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Deactivate()V

    .line 724
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->unbindNCHS()V

    .line 725
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x7f1102a9

    .line 745
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1102aa

    .line 746
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const v1, 0x7f110270

    .line 747
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const v1, 0x7f110271

    .line 748
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const v1, 0x7f110273

    .line 749
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v0, v5

    const v1, 0x7f1102a8

    .line 750
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v0, v5

    const v1, 0x7f1102a7

    .line 751
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x6

    aput-object v1, v0, v5

    const-string v1, "<b>%1$s</b><br><br>%2$s<br><br><ul><li>%3$s</li><li>%4$s</li><li>%5$s</li></ul><br><br><b>%6$s</b><br><br>%7$s"

    .line 732
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 753
    invoke-static {}, Lcom/cisco/android/nchs/permissions/Prerequisites;->hasFipsSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v4, [Ljava/lang/Object;

    const v4, 0x7f1102ac

    .line 759
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const v2, 0x7f1102ab

    .line 760
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "<br><br><b>%1$s</b><br><br>%2$s"

    .line 755
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 763
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cisco.anyconnect.vpn.android.HELP_SHOW_INTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "help_text"

    .line 764
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 767
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 770
    :cond_1
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    return v3
.end method

.method protected onResume()V
    .locals 1

    .line 215
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onResume()V

    .line 219
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->updateMDMControllableSettings()V

    :cond_0
    return-void
.end method

.method public onSettingControllableChanged(Ljava/lang/String;Z)V
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 567
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSettingControllableChanged: Cannot find preference with key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsActivity"

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 571
    :cond_0
    invoke-virtual {v0, p2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->setEnabled(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 398
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onWindowFocusChanged(Z)V

    return-void
.end method

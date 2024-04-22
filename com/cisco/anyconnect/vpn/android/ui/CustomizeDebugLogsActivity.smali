.class public Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "CustomizeDebugLogsActivity.java"


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "CustomizeDebugLogsActivity"


# instance fields
.field private mComponentPrefsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigurationMgr:Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;

.field private mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;

.field private final mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;


# direct methods
.method static bridge synthetic -$$Nest$msaveConfiguration(Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->saveConfiguration()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    .line 51
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    return-void
.end method

.method private inflatePreferencesFromXml()Z
    .locals 3

    const v0, 0x7f0a010c

    .line 77
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 78
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 80
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    const v2, 0x7f140003

    invoke-virtual {v1, p0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->InflatePreferencesFromXml(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    const v0, 0x7f110251

    .line 83
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v2, 0x1

    .line 87
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return v2
.end method

.method private initializePreferenceValues()V
    .locals 4

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->mComponentPrefsList:Ljava/util/ArrayList;

    .line 97
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->mConfigurationMgr:Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->GetSupportedComponents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    invoke-virtual {v2, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;

    .line 100
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->mConfigurationMgr:Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;

    invoke-virtual {v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->GetConfiguration(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->setValue(Z)V

    .line 101
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->mComponentPrefsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private saveConfiguration()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->mComponentPrefsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;

    .line 165
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->mConfigurationMgr:Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->GetKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->getValue()Z

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->SetConfiguration(Ljava/lang/String;Z)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->mConfigurationMgr:Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->SaveConfigurationToFile()Z

    move-result v0

    return v0
.end method

.method private setUpButtons()V
    .locals 3

    const v0, 0x7f0a010b

    .line 108
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;

    const v1, 0x7f11004b

    .line 109
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    const v1, 0x7f110050

    .line 110
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 112
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v2, 0x7f120131

    invoke-direct {v1, p0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f1100aa

    .line 113
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    const/4 v2, 0x0

    .line 114
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 116
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;)V

    invoke-virtual {v0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$2;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "CustomizeDebugLogsActivity"

    const-string v1, "onCreate()"

    .line 57
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "UserPreferences"

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;

    invoke-direct {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;

    .line 62
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;->LOCAL:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;

    invoke-virtual {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->SetPersistenceManager(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;)V

    .line 63
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->getInstance()Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->mConfigurationMgr:Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;

    const p1, 0x7f0d0044

    .line 65
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->setContentView(I)V

    .line 67
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->inflatePreferencesFromXml()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->initializePreferenceValues()V

    .line 70
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->setUpButtons()V

    :cond_0
    return-void
.end method

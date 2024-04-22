.class public Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "ConnectionEditorActivity.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "ConnectionEditorActivity"

.field private static final INPUT_TYPE_AUTO_CAPS:I = 0x4001

.field private static final INPUT_TYPE_URI:I = 0x11


# instance fields
.field private mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

.field private mConnectionList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

.field private mConnectionListener:Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

.field private mConnectionName:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPendingAdvancedSettings:Landroid/content/Intent;

.field private mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

.field private mPreferences:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

.field private mSaveInProgress:Z

.field private mSaveLock:Ljava/lang/Object;

.field private mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConnection(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectionList(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnectionList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectionListener(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnectionListener:Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectionName(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnectionName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingAdvancedSettings(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mPendingAdvancedSettings:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreferenceMgr(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreferences(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mPreferences:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSaveInProgress(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mSaveInProgress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSaveLock(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mSaveLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceConnMgr(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmConnection(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConnectionList(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnectionList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConnectionName(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnectionName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingAdvancedSettings(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mPendingAdvancedSettings:Landroid/content/Intent;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreferenceMgr(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreferences(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mPreferences:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyAdvancedSettings(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->applyAdvancedSettings(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisablePreference(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->disablePreference(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUpButtons(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->setUpButtons()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mSaveInProgress:Z

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mSaveLock:Ljava/lang/Object;

    return-void
.end method

.method private applyAdvancedSettings(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "VpnConnection"

    .line 462
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    if-eqz p1, :cond_1

    .line 465
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetIsIPsecUsed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIsIPsecUsed(Z)V

    .line 466
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetIPsecAuthMode()Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIPsecAuthMode(Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;)V

    .line 467
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetIKEIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIKEIdentity(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertAuthMode()Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    move-result-object v0

    .line 470
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    if-ne v1, v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertCommonName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertHash()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetManualCertAuthMode(Ljava/lang/String;[B)V

    goto :goto_0

    .line 473
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetCertAuthMode(Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;)V

    .line 476
    :goto_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mPreferences:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->SetConnection(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)V

    goto :goto_1

    .line 478
    :cond_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "ConnectionEditorActivity"

    const-string v1, "error: no vpnconnection object returned by advanced preferences"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private disablePreference(Ljava/lang/String;)V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 280
    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "ConnectionEditorActivity"

    if-eqz p1, :cond_1

    .line 283
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not find preference with key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "preference name passed to disablePreference() was null"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setUpButtons()V
    .locals 5

    const v0, 0x7f0a00ea

    .line 382
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;

    const v1, 0x7f11004b

    .line 383
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    const v1, 0x7f110050

    .line 384
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0096

    .line 385
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a00e8

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 386
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a00ed

    invoke-virtual {v1, v2}, Landroid/view/View;->setNextFocusDownId(I)V

    const v1, 0x7f0a0094

    .line 387
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 388
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 391
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private validateAndSave()Z
    .locals 12

    const-string/jumbo v0, "unknown returnCode from Connection save: "

    const-string v1, ""

    .line 291
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mSaveLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    .line 292
    :try_start_0
    iput-boolean v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mSaveInProgress:Z

    .line 293
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const v2, 0x7f0a00ed

    .line 295
    invoke-virtual {p0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;

    const v4, 0x7f0a00ec

    .line 296
    invoke-virtual {p0, v4}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;

    const v5, 0x7f11033b

    const/4 v6, 0x0

    .line 300
    :try_start_1
    iget-object v7, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v7}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x40

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v7}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v8, v7, :cond_0

    const v7, 0x7f11016e

    .line 301
    invoke-static {v7}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setError(Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 305
    :goto_0
    iget-object v9, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v9}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v9}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_1

    const v7, 0x7f11016d

    .line 306
    invoke-static {v7}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setError(Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 310
    :cond_1
    iget-object v8, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnectionList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    iget-object v9, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-interface {v8, v9}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->Save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I

    move-result v8

    const-string v9, ""

    .line 314
    sget-object v10, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->None:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v10}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v10

    if-ne v8, v10, :cond_2

    if-nez v7, :cond_2

    const v0, 0x7f11033a

    .line 315
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 317
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.cisco.anyconnect.vpn.android.CONNECTION_EDITOR_SHOW_KEY_CONNECTION_NAME"

    .line 318
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 319
    invoke-virtual {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 320
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->finish()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 375
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mSaveLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_2
    iput-boolean v6, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mSaveInProgress:Z

    .line 377
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 324
    :cond_2
    :try_start_3
    sget-object v10, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->Unpopulated:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v10}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v10

    and-int/2addr v10, v8

    if-eqz v10, :cond_3

    .line 326
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ConnectionEditorActivity"

    const-string v2, "connection unpopulated, not persisting"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->finish()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 375
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mSaveLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_4
    iput-boolean v6, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mSaveInProgress:Z

    .line 377
    monitor-exit v0

    return v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 330
    :cond_3
    :try_start_5
    sget-object v10, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidHost:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v10}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v10

    and-int/2addr v10, v8

    if-eqz v10, :cond_4

    .line 331
    sget-object v7, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v10, "ConnectionEditorActivity"

    const-string v11, "invalid host"

    invoke-static {v7, v10, v11}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f110336

    invoke-static {v10}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setError(Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 335
    :cond_4
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidName:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v4

    and-int/2addr v4, v8

    if-eqz v4, :cond_8

    .line 336
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidHost:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v4

    and-int/2addr v4, v8

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 337
    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 338
    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 339
    :cond_6
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetName(Ljava/lang/String;)V

    .line 340
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->validateAndSave()Z

    move-result v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 375
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mSaveLock:Ljava/lang/Object;

    monitor-enter v1

    .line 376
    :try_start_6
    iput-boolean v6, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mSaveInProgress:Z

    .line 377
    monitor-exit v1

    return v0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 342
    :cond_7
    :try_start_7
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v7, "ConnectionEditorActivity"

    const-string v10, "invalid Name"

    invoke-static {v4, v7, v10}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f110338

    invoke-static {v7}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setError(Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 347
    :cond_8
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->DuplicateName:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v4

    and-int/2addr v4, v8

    if-eqz v4, :cond_9

    .line 348
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v7, "ConnectionEditorActivity"

    const-string v10, "duplicate name"

    invoke-static {v4, v7, v10}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f110334

    invoke-static {v7}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v3, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v11}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setError(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_1

    :cond_9
    move v3, v7

    :goto_1
    if-eqz v3, :cond_a

    .line 375
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mSaveLock:Ljava/lang/Object;

    monitor-enter v2

    .line 376
    :try_start_8
    iput-boolean v6, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mSaveInProgress:Z

    .line 377
    monitor-exit v2

    return v6

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    .line 353
    :cond_a
    :try_start_9
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidState:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v2

    and-int/2addr v2, v8

    if-eqz v2, :cond_b

    .line 354
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "ConnectionEditorActivity"

    const-string v4, "invalid state"

    invoke-static {v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f110339

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 357
    :cond_b
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidCertificate:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v1

    and-int/2addr v1, v8

    if-eqz v1, :cond_c

    .line 358
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "ConnectionEditorActivity"

    const-string v3, "invalid certificate"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f110335

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_c
    const-string v1, ""

    .line 362
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 363
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "ConnectionEditorActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {v5}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_2

    .line 366
    :cond_d
    invoke-static {p0, v9}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 375
    :goto_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mSaveLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_a
    iput-boolean v6, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mSaveInProgress:Z

    .line 377
    monitor-exit v0

    return v6

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v1

    :catchall_5
    move-exception v0

    goto :goto_3

    .line 371
    :catch_0
    :try_start_b
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ConnectionEditorActivity"

    const-string v2, "RemoteException occurred during IVPNConnection save"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {v5}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 375
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mSaveLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_c
    iput-boolean v6, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mSaveInProgress:Z

    .line 377
    monitor-exit v0

    return v6

    :catchall_6
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v1

    .line 375
    :goto_3
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mSaveLock:Ljava/lang/Object;

    monitor-enter v1

    .line 376
    :try_start_d
    iput-boolean v6, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mSaveInProgress:Z

    .line 377
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 378
    throw v0

    :catchall_7
    move-exception v0

    .line 377
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v0

    :catchall_8
    move-exception v0

    .line 293
    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    throw v0
.end method


# virtual methods
.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 0

    .line 409
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mPreferences:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

    return-object p1
.end method

.method synthetic lambda$setUpButtons$0$com-cisco-anyconnect-vpn-android-ui-ConnectionEditorActivity(Landroid/view/View;)V
    .locals 2

    const p1, 0x7f0a00ed

    .line 392
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;

    const v0, 0x7f0a00ec

    .line 393
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;

    .line 394
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setText(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setText(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->validateAndSave()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->finish()V

    :cond_0
    return-void
.end method

.method synthetic lambda$setUpButtons$1$com-cisco-anyconnect-vpn-android-ui-ConnectionEditorActivity(Landroid/view/View;)V
    .locals 0

    .line 404
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 442
    invoke-super {p0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x539

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    .line 448
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mPreferences:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

    if-nez p1, :cond_0

    .line 449
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mPendingAdvancedSettings:Landroid/content/Intent;

    goto :goto_0

    .line 451
    :cond_0
    invoke-direct {p0, p3}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->applyAdvancedSettings(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->validateAndSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 90
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.cisco.anyconnect.vpn.android.CONNECTION_EDITOR_SHOW_KEY_CONNECTION_NAME"

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnectionName:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/16 v0, 0x40

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v0, p1, :cond_0

    const p1, 0x7f11016e

    .line 96
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnectionName:Ljava/lang/String;

    .line 101
    :cond_0
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$1;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mConnectionListener:Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

    .line 123
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;Landroid/content/Context;)V

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    .line 269
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Activate()Z

    move-result p1

    if-nez p1, :cond_1

    .line 271
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "ConnectionEditorActivity"

    const-string v1, "ServiceConnMgr.Activate failed"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f110139

    .line 272
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Deactivate()V

    .line 437
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->OnVisibilityChange(Z)V

    .line 431
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 419
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionEditorActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->OnVisibilityChange(Z)V

    .line 425
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 414
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onStop()V

    return-void
.end method

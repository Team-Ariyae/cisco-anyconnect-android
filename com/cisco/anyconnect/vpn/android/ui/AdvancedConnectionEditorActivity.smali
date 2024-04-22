.class public Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "AdvancedConnectionEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$ACOptionsMenuItem;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "AdvancedConnectionEditorActivity"

.field private static final OPTION_MENU_ADDITIONAL_INFORMATION_ID:I = 0x0

.field private static final OPTION_MENU_ITEMS:[Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$ACOptionsMenuItem;

.field private static final TOTAL_OPTION_MENU_ITEMS:I = 0x1


# instance fields
.field private mAdvancedPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

.field private mIgnorePreferenceUpdate:Z

.field private mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

.field private mPreferences:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

.field private mRedrawOptionsMenu:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmConnection(Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIgnorePreferenceUpdate(Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mIgnorePreferenceUpdate:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIgnorePreferenceUpdate(Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mIgnorePreferenceUpdate:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$menforceState(Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->enforceState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$ACOptionsMenuItem;

    .line 60
    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->OPTION_MENU_ITEMS:[Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$ACOptionsMenuItem;

    .line 63
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$ACOptionsMenuItem;

    const v2, 0x7f110023

    const v3, 0x7f080091

    invoke-direct {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$ACOptionsMenuItem;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mRedrawOptionsMenu:Z

    .line 74
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mIgnorePreferenceUpdate:Z

    return-void
.end method

.method private enforceState()V
    .locals 11

    .line 285
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    const-string v1, "ipsec_active"

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;

    .line 286
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    const-string v2, "ike_identity"

    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;

    .line 287
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    const-string v3, "ipsec_auth_mode"

    invoke-virtual {v2, v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;

    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v3, 0x3

    .line 294
    invoke-virtual {v0, v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->setSummaryMaxLines(I)V

    const/4 v3, 0x1

    .line 295
    invoke-virtual {v0, v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->setFocusable(Z)V

    .line 296
    invoke-virtual {v1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setFocusable(Z)V

    .line 297
    invoke-virtual {v2, v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->setFocusable(Z)V

    .line 298
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->GetSummary()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 299
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->getValue()Z

    move-result v5

    .line 300
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 302
    invoke-virtual {v2, v6}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->SetSummary(Ljava/lang/CharSequence;)V

    const v7, 0x7f11020c

    if-nez v4, :cond_1

    .line 305
    invoke-static {v7}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->SetSummary(Ljava/lang/CharSequence;)V

    :cond_1
    const v8, 0x7f11020e

    const/4 v9, 0x0

    if-eqz v5, :cond_7

    .line 310
    invoke-virtual {v2, v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->setEnabled(Z)V

    .line 311
    sget-object v5, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_ANYCONNECT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    iget-object v10, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v10}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetIPsecAuthMode()Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    move-result-object v10

    if-eq v5, v10, :cond_3

    sget-object v5, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_RSA:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    iget-object v10, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v10}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetIPsecAuthMode()Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    move-result-object v10

    if-ne v5, v10, :cond_2

    goto :goto_0

    .line 320
    :cond_2
    invoke-virtual {v1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setEnabled(Z)V

    goto :goto_1

    .line 313
    :cond_3
    :goto_0
    invoke-virtual {v1, v9}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setEnabled(Z)V

    .line 314
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ""

    .line 315
    invoke-virtual {v1, v5}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setText(Ljava/lang/String;)V

    .line 323
    :cond_4
    :goto_1
    sget-object v5, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_ANYCONNECT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_RSA:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    .line 333
    :cond_5
    invoke-virtual {v1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setEnabled(Z)V

    .line 334
    invoke-static {v7}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 336
    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->SetSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 325
    :cond_6
    :goto_2
    invoke-virtual {v1, v9}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setEnabled(Z)V

    .line 326
    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 328
    invoke-static {v7}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->SetSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 342
    :cond_7
    invoke-virtual {v1, v9}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setEnabled(Z)V

    .line 343
    invoke-virtual {v2, v9}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->setEnabled(Z)V

    .line 344
    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 346
    invoke-static {v7}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->SetSummary(Ljava/lang/CharSequence;)V

    .line 352
    :cond_8
    :goto_3
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Imported:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetType()Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v4

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 353
    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsMDMImported()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 355
    :cond_9
    invoke-virtual {v1, v9}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setEnabled(Z)V

    .line 356
    invoke-virtual {v0, v9}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->setEnabled(Z)V

    .line 357
    invoke-virtual {v2, v9}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->setEnabled(Z)V

    :cond_a
    return-void

    .line 290
    :cond_b
    :goto_4
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "AdvancedConnectionEditorActivity"

    const-string/jumbo v2, "unable to retrieve ipsecActivePref or ikePref or authenticationPref"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setUpButtons()V
    .locals 5

    const v0, 0x7f0a0053

    .line 240
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;

    const v1, 0x7f11004b

    .line 241
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    const v1, 0x7f110050

    .line 242
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0096

    .line 243
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a00ee

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 244
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a00eb

    invoke-virtual {v1, v2}, Landroid/view/View;->setNextFocusDownId(I)V

    const v1, 0x7f0a0094

    .line 245
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 246
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 248
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/view/ButtonBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private validate()Z
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetIPsecAuthMode()Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    move-result-object v0

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_GTC:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 223
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetIPsecAuthMode()Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    move-result-object v0

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_MD5:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 224
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetIPsecAuthMode()Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    move-result-object v0

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_MSCHAPv2:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 225
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetIPsecAuthMode()Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    move-result-object v0

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_ECDSA:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetIKEIdentity()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetIsIPsecUsed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "AdvancedConnectionEditorActivity"

    const-string v2, "connection failed validation: required ike identity is not present"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f110337

    .line 230
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public OnTranslationTableChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 414
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mRedrawOptionsMenu:Z

    return-void
.end method

.method public hasOptionsMenu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$setUpButtons$0$com-cisco-anyconnect-vpn-android-ui-AdvancedConnectionEditorActivity(Landroid/view/View;)V
    .locals 2

    const p1, 0x7f0a00ee

    .line 249
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;

    .line 250
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->setText(Ljava/lang/String;)V

    .line 252
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->validate()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 255
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "VpnConnection"

    .line 256
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 257
    invoke-virtual {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 258
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->finish()V

    :cond_0
    return-void
.end method

.method synthetic lambda$setUpButtons$1$com-cisco-anyconnect-vpn-android-ui-AdvancedConnectionEditorActivity(Landroid/view/View;)V
    .locals 0

    .line 262
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    const-string v1, "cert_summary"

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 92
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "VpnConnection"

    .line 96
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 97
    invoke-virtual {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 98
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 105
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mChangeListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;

    .line 106
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "VpnConnection"

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    const-string v0, "AdvancedConnectionEditorActivity"

    if-nez p1, :cond_0

    .line 112
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "error: null connection passed to this activity"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->finish()V

    .line 116
    :cond_0
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$1;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mAdvancedPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 139
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-direct {p1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mPreferences:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

    .line 140
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    invoke-direct {p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    .line 141
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;->LOCAL:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mPreferences:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

    invoke-virtual {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->SetPersistenceManager(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;)V

    .line 142
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mPreferences:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mAdvancedPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const p1, 0x7f0d0020

    .line 144
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->setContentView(I)V

    const p1, 0x7f0a0055

    .line 147
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 148
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 150
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    const/high16 v2, 0x7f140000

    invoke-virtual {v1, p0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->InflatePreferencesFromXml(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    const p1, 0x7f110251

    .line 154
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 158
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 159
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    const-string v1, "app_rules"

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectButtonPreference;

    if-eqz p1, :cond_2

    .line 165
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$2;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;)V

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectButtonPreference;->setCallback(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectButtonPreference$IAnyConnectButtonPreferenceCB;)V

    .line 178
    :cond_2
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    const-string v1, "cert_summary"

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;

    .line 179
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mPreferenceMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;

    const-string v3, "ipsec_auth_mode"

    invoke-virtual {v1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager;->findPreference(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;

    if-eqz p1, :cond_7

    if-nez v1, :cond_3

    goto :goto_3

    .line 185
    :cond_3
    invoke-virtual {p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->setFocusable(Z)V

    .line 186
    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->setFocusable(Z)V

    .line 187
    invoke-virtual {p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCertificatePreference;->SetParentActivity(Landroid/app/Activity;)V

    .line 189
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->getAvailableStringValues()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 190
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->getAvailableStringValues()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 191
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->getAvailableStringValues()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->setEntryDescriptions([Ljava/lang/CharSequence;)V

    .line 193
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->enforceState()V

    const p1, 0x7f0a0057

    .line 196
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 198
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Imported:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetType()Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsMDMImported()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    .line 213
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 200
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsMDMImported()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f110051

    .line 202
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    const v0, 0x7f110052

    .line 206
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 v0, 0x0

    .line 209
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    :goto_2
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->setUpButtons()V

    return-void

    .line 182
    :cond_7
    :goto_3
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo v1, "unable to retrieve certPref or authenticationPref or ikePref or ipsecPref"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->populateOptionsMenu(Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mChangeListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;->Destroy()V

    .line 269
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x7f11002a

    .line 441
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f110033

    .line 442
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f110030

    .line 443
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const v1, 0x7f11002f

    .line 444
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const v1, 0x7f11002e

    .line 445
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const v1, 0x7f11002d

    .line 446
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const v1, 0x7f110032

    .line 447
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const v1, 0x7f110031

    .line 448
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const v1, 0x7f110029

    .line 449
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const v1, 0x7f110028

    .line 450
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const v1, 0x7f110027

    .line 451
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const v1, 0x7f110026

    .line 452
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const v1, 0x7f11002c

    .line 453
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v0, v3

    const v1, 0x7f11002b

    .line 454
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v0, v3

    const-string v1, "<b>%1$s</b><br><br>%2$s<br><br><ol><li>%3$s - %4$s</li><li>%5$s - %6$s</li><li>%7$s - %8$s</li></ol><br><br><b>%9$s</b><br><br>%10$s<br><br><b>%11$s</b><br><br>%12$s<br><br><b>%13$s</b><br><br>%14$s"

    .line 420
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 456
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.cisco.anyconnect.vpn.android.HELP_SHOW_INTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "help_text"

    .line 457
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 463
    :cond_0
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->startActivity(Landroid/content/Intent;)V

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 396
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mRedrawOptionsMenu:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 398
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mRedrawOptionsMenu:Z

    .line 399
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->populateOptionsMenu(Landroid/view/Menu;)V

    .line 402
    :cond_0
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->mChangeListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;->ApplyChanges()V

    :cond_0
    return-void
.end method

.method public populateOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .line 381
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 383
    :goto_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->OPTION_MENU_ITEMS:[Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$ACOptionsMenuItem;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 385
    aget-object v3, v2, v1

    iget v3, v3, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$ACOptionsMenuItem;->titleRes:I

    .line 388
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 385
    invoke-interface {p1, v0, v1, v0, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 389
    aget-object v2, v2, v1

    iget v2, v2, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$ACOptionsMenuItem;->iconRes:I

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

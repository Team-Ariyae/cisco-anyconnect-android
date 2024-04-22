.class public Lcom/cisco/anyconnect/ui/PrimaryActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "PrimaryActivity.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$IActivityChangeListenerCB;
.implements Lcom/cisco/anyconnect/ui/UserAgreementFragment$UserAgreementCallback;


# static fields
.field public static final ACTION_PROMPT_FIPS_RESTART:Ljava/lang/String; = "ACTION_PROMPT_FIPS_RESTART"

.field private static final ACTION_UMBRELLA_FORCE_START:Ljava/lang/String; = "ACTION_UMBRELLA_FORCE_START"

.field private static final ENTITY_NAME:Ljava/lang/String; = "PrimaryActivity"

.field private static final OPTION_MENU_ABOUT_ID:I = 0x2

.field private static final OPTION_MENU_DIAGNOSTICS_ID:I = 0x0

.field private static final OPTION_MENU_EXIT_ID:I = 0x3

.field private static final OPTION_MENU_ITEMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPTION_MENU_SETTINGS_ID:I = 0x1

.field public static final PENDING_INTENT_ACTION:Ljava/lang/String; = "pending_intent"

.field public static final PENDING_INTENT_INNER:Ljava/lang/String; = "inner"

.field private static final POST_NOTIFICATIONS_REQUEST_CODE:I = 0xb

.field private static final READ_PHONE_STATE_REQUEST_CODE:I = 0xa


# instance fields
.field private mEulaFrag:Lcom/cisco/anyconnect/ui/UserAgreementFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/cisco/anyconnect/ui/PrimaryActivity$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/ui/PrimaryActivity$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/cisco/anyconnect/ui/PrimaryActivity;->OPTION_MENU_ITEMS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/cisco/anyconnect/ui/PrimaryActivity;->mEulaFrag:Lcom/cisco/anyconnect/ui/UserAgreementFragment;

    return-void
.end method

.method private createNVMService()V
    .locals 2

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.avf_namonitoraction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.cisco.anyconnect.vpn.android.avf"

    .line 206
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private drawContentView()V
    .locals 3

    const v0, 0x7f0d00b1

    .line 212
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->setContentView(I)V

    .line 213
    invoke-direct {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->updateFragments()V

    .line 214
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "PrimaryActivity"

    const-string v2, "Launched Successfully!"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getEulaFragment(Landroid/content/Context;)Lcom/cisco/anyconnect/ui/UserAgreementFragment;
    .locals 3

    .line 445
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;-><init>()V

    .line 446
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Banner:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    iput-object v1, v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    const/4 v1, 0x1

    .line 447
    iput-boolean v1, v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isVisible:Z

    const v2, 0x7f110191

    .line 448
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    new-array p0, v1, [Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    const/4 v2, 0x0

    aput-object v0, p0, v2

    .line 453
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;-><init>()V

    .line 454
    iput-object p0, v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    .line 455
    sget-object p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->USER_AGREEMENT:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    iput-object p0, v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    const-string p0, ""

    .line 456
    iput-object p0, v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->message:Ljava/lang/String;

    const p0, 0x7f110221

    .line 457
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->submitButtonName:Ljava/lang/String;

    const p0, 0x7f110050

    .line 458
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->cancelButtonLabel:Ljava/lang/String;

    .line 459
    iput-boolean v2, v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->hasEnrollmentCA:Z

    .line 460
    iput-boolean v2, v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->useEnrollmentCA:Z

    .line 461
    iput-boolean v2, v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->isCancelled:Z

    .line 463
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 464
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    invoke-direct {v2, v0}, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V

    const-string v0, "com.cisco.anyconnect.ui.AUTHENTICATION_SHOW_KEY_USER_AGREEMENT"

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "com.cisco.anyconnect.ui.BANNER_IS_HTML"

    .line 465
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 467
    new-instance v0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;

    invoke-direct {v0}, Lcom/cisco/anyconnect/ui/UserAgreementFragment;-><init>()V

    .line 468
    invoke-virtual {v0, p0}, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private getVpnFragment()Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;
    .locals 2

    .line 186
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0305

    .line 187
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    return-object v0
.end method

.method private handlePendingIntent(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_2

    const-string v0, "pending_intent"

    .line 133
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "inner"

    .line 137
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-nez p1, :cond_1

    const-string p1, "Unexpected missing inmner intent"

    .line 139
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 143
    :cond_1
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private loadVpnFragmentIfNeeded()V
    .locals 3

    .line 191
    invoke-direct {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->getVpnFragment()Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-direct {v1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;-><init>()V

    const v2, 0x7f0a0305

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 197
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private promptEula()V
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/cisco/anyconnect/ui/PrimaryActivity;->mEulaFrag:Lcom/cisco/anyconnect/ui/UserAgreementFragment;

    if-eqz v0, :cond_0

    return-void

    .line 433
    :cond_0
    invoke-static {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->getEulaFragment(Landroid/content/Context;)Lcom/cisco/anyconnect/ui/UserAgreementFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/ui/PrimaryActivity;->mEulaFrag:Lcom/cisco/anyconnect/ui/UserAgreementFragment;

    .line 434
    invoke-virtual {v0, p0}, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->setCallback(Lcom/cisco/anyconnect/ui/UserAgreementFragment$UserAgreementCallback;)V

    .line 435
    iget-object v0, p0, Lcom/cisco/anyconnect/ui/PrimaryActivity;->mEulaFrag:Lcom/cisco/anyconnect/ui/UserAgreementFragment;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "user_agreement_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private requestPermissions(Z)V
    .locals 6

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "READ_PHONE_STATE permission: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const v3, 0x7f110221

    const v4, 0x7f1100aa

    const v5, 0x7f120131

    if-ge v0, v2, :cond_1

    .line 496
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 497
    invoke-static {p0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "Requesting READ_PHONE_STATE"

    .line 498
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {p1, p0, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 500
    invoke-virtual {p1, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const v0, 0x7f110234

    .line 501
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    new-instance v0, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda2;-><init>(Lcom/cisco/anyconnect/ui/PrimaryActivity;)V

    .line 502
    invoke-virtual {p1, v3, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    .line 504
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 510
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "POST_NOTIFICATIONS permission: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt p1, v1, :cond_3

    .line 512
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 513
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Requesting POST_NOTIFICATIONS with rationale"

    .line 514
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {p1, p0, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 516
    invoke-virtual {p1, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const v0, 0x7f110233

    .line 517
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    new-instance v0, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda3;-><init>(Lcom/cisco/anyconnect/ui/PrimaryActivity;)V

    .line 518
    invoke-virtual {p1, v3, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    .line 520
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    :cond_2
    const-string p1, "Requesting POST_NOTIFICATIONS"

    .line 523
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/16 v0, 0xb

    .line 524
    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateFragments()V
    .locals 3

    .line 227
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->isEulaAccepted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Skipping fragment update to prompt EULA"

    .line 229
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->promptEula()V

    return-void

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->loadVpnFragmentIfNeeded()V

    const-string v0, "UserPreferences"

    const/4 v1, 0x0

    .line 236
    invoke-virtual {p0, v0, v1}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "HideVpn"

    .line 237
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 239
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 242
    invoke-direct {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->getVpnFragment()Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public OnTranslationTableChanged()V
    .locals 1

    .line 370
    invoke-direct {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->getVpnFragment()Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->OnTranslationTableChanged()V

    .line 375
    :cond_0
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->OnTranslationTableChanged()V

    return-void
.end method

.method public OnUserAgreementSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;Z)V
    .locals 1

    .line 395
    iget-object p1, p0, Lcom/cisco/anyconnect/ui/PrimaryActivity;->mEulaFrag:Lcom/cisco/anyconnect/ui/UserAgreementFragment;

    if-eqz p1, :cond_0

    .line 397
    invoke-virtual {p1}, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->dismiss()V

    const/4 p1, 0x0

    .line 398
    iput-object p1, p0, Lcom/cisco/anyconnect/ui/PrimaryActivity;->mEulaFrag:Lcom/cisco/anyconnect/ui/UserAgreementFragment;

    :cond_0
    if-eqz p2, :cond_2

    const-string p1, "UserPreferences"

    const/4 p2, 0x0

    .line 403
    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 404
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "eula"

    const/4 v0, 0x1

    .line 405
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 406
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p1, "android.permission.READ_PHONE_STATE"

    .line 408
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 410
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->requestPermissions(Z)V

    :cond_1
    const-string p1, "User accepted eula"

    .line 413
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    invoke-direct {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->updateFragments()V

    goto :goto_0

    .line 418
    :cond_2
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->finish()V

    :goto_0
    return-void
.end method

.method public exitEvenIfConnected()V
    .locals 1

    .line 474
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 475
    invoke-direct {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->getVpnFragment()Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->exitEvenIfConnected()V

    :cond_0
    return-void
.end method

.method public getActivityChangeListener()Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;
    .locals 1

    .line 364
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;

    invoke-direct {v0, p0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;-><init>(Landroid/app/Activity;Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$IActivityChangeListenerCB;)V

    return-object v0
.end method

.method synthetic lambda$onCreate$0$com-cisco-anyconnect-ui-PrimaryActivity(Landroid/widget/ImageButton;Landroid/view/View;)V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->openOptionsMenu()V

    .line 118
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->showPopup(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onNewIntent$2$com-cisco-anyconnect-ui-PrimaryActivity(Landroid/content/Intent;)V
    .locals 0

    .line 343
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$onRequestPermissionsResult$5$com-cisco-anyconnect-ui-PrimaryActivity(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    .line 551
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method synthetic lambda$onWindowFocusChanged$1$com-cisco-anyconnect-ui-PrimaryActivity(Landroid/widget/ImageButton;Landroid/view/View;)V
    .locals 0

    .line 153
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->openOptionsMenu()V

    .line 154
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->showPopup(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$requestPermissions$3$com-cisco-anyconnect-ui-PrimaryActivity(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "android.permission.READ_PHONE_STATE"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    .line 503
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method synthetic lambda$requestPermissions$4$com-cisco-anyconnect-ui-PrimaryActivity(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    .line 519
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 384
    invoke-super {p0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onActivityResult(IILandroid/content/Intent;)V

    const p3, 0xffff

    and-int/2addr p1, p3

    const-string p3, "onActivityResult"

    const-string v0, "PrimaryActivity"

    .line 387
    invoke-static {v0, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Spawned Activity finished. RequestCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resultCode: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 485
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "PrimaryActivity"

    const-string v1, "onCreate"

    .line 95
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->isTaskRoot()Z

    move-result p1

    if-nez p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.category.LAUNCHER"

    .line 102
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "PrimaryActivity is not root of the task. Finishing instead of launching."

    .line 104
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->finish()V

    return-void

    .line 110
    :cond_0
    sget-object p1, Lcom/cisco/anyconnect/ui/PrimaryActivity;->OPTION_MENU_ITEMS:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->setOptionsMenu(Ljava/util/List;)V

    .line 111
    invoke-direct {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->drawContentView()V

    const p1, 0x7f0a022f

    .line 114
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    .line 116
    new-instance v0, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/ui/PrimaryActivity;Landroid/widget/ImageButton;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_1
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->isEulaAccepted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 126
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->requestPermissions(Z)V

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->handlePendingIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .line 323
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 324
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "ACTION_PROMPT_FIPS_RESTART"

    .line 325
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v2, 0x7f120131

    invoke-direct {v0, p0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f110159

    .line 327
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v2, 0x7f110158

    .line 328
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v2, 0x7f110221

    .line 329
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cisco/anyconnect/ui/PrimaryActivity$2;

    invoke-direct {v3, p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity$2;-><init>(Lcom/cisco/anyconnect/ui/PrimaryActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 337
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_0
    const-string v0, "ACTION_UMBRELLA_FORCE_START"

    .line 341
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.umbrella.ACTION_UMBRELLA_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda5;-><init>(Lcom/cisco/anyconnect/ui/PrimaryActivity;Landroid/content/Intent;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    :cond_1
    invoke-direct {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->getVpnFragment()Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 349
    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 353
    :cond_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "PrimaryActivity"

    const-string v2, "Unable to find vpn fragment, cannot call its onNewIntent"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_0
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->handlePendingIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 280
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const v2, 0x102002c

    if-eq v0, v2, :cond_0

    .line 315
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    return v1

    .line 295
    :cond_1
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 296
    invoke-direct {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->getVpnFragment()Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 299
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->isInteractiveState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 301
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->exitApplication()V

    goto :goto_0

    .line 305
    :cond_2
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->exitIfConfirmed()V

    :cond_3
    :goto_0
    return v1

    .line 283
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.android.ABOUT_SHOW_INTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 287
    :cond_5
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.android.SETTINGS_SHOW_INTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xd05

    invoke-virtual {p0, p1, v0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v1

    .line 291
    :cond_6
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.android.DIAGNOSTICS_SHOW_INTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->startActivity(Landroid/content/Intent;)V

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x3

    .line 259
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 261
    invoke-direct {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->getVpnFragment()Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->CanExit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 266
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 268
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 269
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0x82

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    :goto_0
    return v1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 532
    invoke-super {p0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0xa

    const/4 v0, 0x0

    if-eq p1, p2, :cond_3

    const/16 p2, 0xb

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 542
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    aget p1, p3, v0

    if-nez p1, :cond_1

    const-string p1, "POST_NOTIFICATIONS permission granted"

    .line 543
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "android.permission.POST_NOTIFICATIONS"

    .line 545
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "POST_NOTIFICATIONS permission denied, requesting again with rationale"

    .line 546
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const p2, 0x7f120131

    invoke-direct {p1, p0, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const p2, 0x7f1100aa

    .line 548
    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const p2, 0x7f110233

    .line 549
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    new-instance p2, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda6;-><init>(Lcom/cisco/anyconnect/ui/PrimaryActivity;)V

    const p3, 0x7f110221

    .line 550
    invoke-virtual {p1, p3, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    .line 552
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    :cond_2
    const-string p1, "POST_NOTIFICATIONS permission denied"

    .line 555
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 537
    :cond_3
    array-length p1, p3

    if-lez p1, :cond_4

    .line 538
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "READ_PHONE_STATE permission request result: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget p2, p3, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 221
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onResume()V

    .line 222
    invoke-direct {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->updateFragments()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 148
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onWindowFocusChanged(Z)V

    const p1, 0x7f0a022f

    .line 151
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 152
    new-instance v0, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda4;-><init>(Lcom/cisco/anyconnect/ui/PrimaryActivity;Landroid/widget/ImageButton;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 159
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->getHitRect(Landroid/graphics/Rect;)V

    .line 160
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x32

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 161
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x32

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 162
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x32

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 163
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x32

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 165
    new-instance v1, Landroid/view/TouchDelegate;

    invoke-direct {v1, v0, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 166
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_0
    return-void
.end method

.method public populateOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 563
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->populateOptionsMenu(Landroid/view/Menu;)V

    .line 564
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    return-void
.end method

.method public showPopup(Landroid/view/View;)V
    .locals 1

    .line 174
    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const p1, 0x800015

    .line 175
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/PopupMenu;->setGravity(I)V

    .line 176
    new-instance p1, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda1;-><init>(Lcom/cisco/anyconnect/ui/PrimaryActivity;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 179
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 180
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 181
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->populateOptionsMenu(Landroid/view/Menu;)V

    .line 182
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return-void
.end method

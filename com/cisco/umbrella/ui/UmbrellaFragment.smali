.class public Lcom/cisco/umbrella/ui/UmbrellaFragment;
.super Landroidx/fragment/app/Fragment;
.source "UmbrellaFragment.java"


# static fields
.field private static final REQUEST_CODE_PICK_ACCOUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UmbrellaFragment"


# instance fields
.field private alertUserDialogFragment:Lcom/cisco/umbrella/ui/AlertUserDialogFragment;

.field private final broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final buttonCancelListen:Landroid/content/DialogInterface$OnClickListener;

.field private final buttonOkListen:Landroid/content/DialogInterface$OnClickListener;

.field private card:Lcom/google/android/material/card/MaterialCardView;

.field private dialogFragment:Lcom/cisco/umbrella/ui/IdentityDialogFragment;

.field private isReceiverRegistered:Z

.field private mMainView:Landroid/view/View;

.field private mShowFragment:Z

.field private mUmbrellaListAdapter:Lcom/cisco/anyconnect/android/ui/util/ACListLayout;

.field private mUmbrellaStatsObserver:Lcom/cisco/umbrella/UmbrellaStatsObserver;

.field private mUmbrellaStatsQuery:Lcom/cisco/umbrella/UmbrellaStatsQuery;

.field private notificationManager:Landroid/app/NotificationManager;

.field private pendingIntent:Landroid/app/PendingIntent;

.field private subtitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->mShowFragment:Z

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->isReceiverRegistered:Z

    .line 92
    new-instance v0, Lcom/cisco/umbrella/UmbrellaStatsObserver;

    new-instance v1, Lcom/cisco/umbrella/ui/UmbrellaFragment$1;

    invoke-direct {v1, p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment$1;-><init>(Lcom/cisco/umbrella/ui/UmbrellaFragment;)V

    invoke-direct {v0, v1}, Lcom/cisco/umbrella/UmbrellaStatsObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->mUmbrellaStatsObserver:Lcom/cisco/umbrella/UmbrellaStatsObserver;

    .line 362
    new-instance v0, Lcom/cisco/umbrella/ui/UmbrellaFragment$4;

    invoke-direct {v0, p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment$4;-><init>(Lcom/cisco/umbrella/ui/UmbrellaFragment;)V

    iput-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 466
    new-instance v0, Lcom/cisco/umbrella/ui/UmbrellaFragment$5;

    invoke-direct {v0, p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment$5;-><init>(Lcom/cisco/umbrella/ui/UmbrellaFragment;)V

    iput-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->buttonOkListen:Landroid/content/DialogInterface$OnClickListener;

    .line 479
    new-instance v0, Lcom/cisco/umbrella/ui/UmbrellaFragment$6;

    invoke-direct {v0, p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment$6;-><init>(Lcom/cisco/umbrella/ui/UmbrellaFragment;)V

    iput-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->buttonCancelListen:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/cisco/umbrella/ui/UmbrellaFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->updateContentView()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cisco/umbrella/ui/UmbrellaFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->createIdentityDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/cisco/umbrella/ui/UmbrellaFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->invokePopup()V

    return-void
.end method

.method static synthetic access$400(Lcom/cisco/umbrella/ui/UmbrellaFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->createNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/cisco/umbrella/ui/UmbrellaFragment;Ljava/lang/String;IZZZ)V
    .locals 0

    .line 72
    invoke-direct/range {p0 .. p5}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->showNotification(Ljava/lang/String;IZZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/cisco/umbrella/ui/UmbrellaFragment;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->alertUserForRegisterationFailure(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/cisco/umbrella/ui/UmbrellaFragment;)Lcom/cisco/umbrella/ui/IdentityDialogFragment;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->dialogFragment:Lcom/cisco/umbrella/ui/IdentityDialogFragment;

    return-object p0
.end method

.method static synthetic access$800(Lcom/cisco/umbrella/ui/UmbrellaFragment;Landroid/content/Intent;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->sendBroadCast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/cisco/umbrella/ui/UmbrellaFragment;)Landroid/app/NotificationManager;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->notificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method private alertUserForRegisterationFailure(Ljava/lang/String;)V
    .locals 3

    .line 226
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/ui/UmbrellaFragment;->TAG:Ljava/lang/String;

    const-string v2, "alertUserForRegistrationFailure invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->alertUserDialogFragment:Lcom/cisco/umbrella/ui/AlertUserDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cisco/umbrella/ui/AlertUserDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->alertUserDialogFragment:Lcom/cisco/umbrella/ui/AlertUserDialogFragment;

    .line 228
    invoke-virtual {v0}, Lcom/cisco/umbrella/ui/AlertUserDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->alertUserDialogFragment:Lcom/cisco/umbrella/ui/AlertUserDialogFragment;

    .line 229
    invoke-virtual {v0}, Lcom/cisco/umbrella/ui/AlertUserDialogFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    new-instance v0, Lcom/cisco/umbrella/ui/AlertUserDialogFragment;

    invoke-direct {v0}, Lcom/cisco/umbrella/ui/AlertUserDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->alertUserDialogFragment:Lcom/cisco/umbrella/ui/AlertUserDialogFragment;

    const/4 v1, 0x0

    .line 233
    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/ui/AlertUserDialogFragment;->setCancelable(Z)V

    .line 235
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SendDataToDialog"

    .line 236
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object p1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->alertUserDialogFragment:Lcom/cisco/umbrella/ui/AlertUserDialogFragment;

    invoke-virtual {p1, v0}, Lcom/cisco/umbrella/ui/AlertUserDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 239
    iget-object p1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->alertUserDialogFragment:Lcom/cisco/umbrella/ui/AlertUserDialogFragment;

    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "UserAlertDialog"

    invoke-virtual {p1, v0, v1}, Lcom/cisco/umbrella/ui/AlertUserDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private checkPermissions()V
    .locals 4

    .line 354
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "6.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/ui/UmbrellaFragment;->TAG:Ljava/lang/String;

    const-string v3, "WRITE_SETTINGS not enabled on Android 6.0. Hiding Umbrella UI."

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->mShowFragment:Z

    :cond_0
    return-void
.end method

.method private configureReceivers()V
    .locals 5

    .line 435
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/ui/UmbrellaFragment;->TAG:Ljava/lang/String;

    const-string v2, "Umbrella Fragment Configure Receivers invoked:"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.cisco.umbrella.android.USER_DOMAINS_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.cisco.umbrella.android.USER_IDENTITY_GET"

    .line 437
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.cisco.umbrella.android.UNMANAGED_REGISTRATION_FAILURE"

    .line 438
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.cisco.anyconnect.vpn.android.avf.permission.SEND_UMBRELLA_BROADCAST_PERMISSION"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 440
    iput-boolean v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->isReceiverRegistered:Z

    return-void
.end method

.method private createIdentityDialog()V
    .locals 4

    .line 212
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/ui/UmbrellaFragment;->TAG:Ljava/lang/String;

    const-string v2, "createIdentityDialog invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->dialogFragment:Lcom/cisco/umbrella/ui/IdentityDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->dialogFragment:Lcom/cisco/umbrella/ui/IdentityDialogFragment;

    .line 214
    invoke-virtual {v0}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->dialogFragment:Lcom/cisco/umbrella/ui/IdentityDialogFragment;

    .line 215
    invoke-virtual {v0}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->buttonOkListen:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->buttonCancelListen:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->getInstance(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/cisco/umbrella/ui/IdentityDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->dialogFragment:Lcom/cisco/umbrella/ui/IdentityDialogFragment;

    const/4 v1, 0x0

    .line 219
    invoke-virtual {v0, v1}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->setCancelable(Z)V

    .line 220
    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->dialogFragment:Lcom/cisco/umbrella/ui/IdentityDialogFragment;

    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "IdentityPopup"

    invoke-virtual {v0, v2, v3}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 222
    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->dialogFragment:Lcom/cisco/umbrella/ui/IdentityDialogFragment;

    invoke-virtual {v0}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private createNotification()V
    .locals 4

    .line 461
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->pendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method private getCurrentStats()Lcom/cisco/umbrella/UmbrellaStats;
    .locals 2

    .line 313
    new-instance v0, Lcom/cisco/umbrella/UmbrellaStats;

    invoke-direct {v0}, Lcom/cisco/umbrella/UmbrellaStats;-><init>()V

    .line 316
    iget-object v1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->mUmbrellaStatsQuery:Lcom/cisco/umbrella/UmbrellaStatsQuery;

    invoke-virtual {v1}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->getAgentStatus()Lcom/cisco/umbrella/ui/states/AgentState;

    move-result-object v1

    iput-object v1, v0, Lcom/cisco/umbrella/UmbrellaStats;->agentState:Lcom/cisco/umbrella/ui/states/AgentState;

    .line 317
    iget-object v1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->mUmbrellaStatsQuery:Lcom/cisco/umbrella/UmbrellaStatsQuery;

    invoke-virtual {v1}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->getDns4ProtectionState()Lcom/cisco/umbrella/ui/states/ProtectionState;

    move-result-object v1

    iput-object v1, v0, Lcom/cisco/umbrella/UmbrellaStats;->dns4Protection:Lcom/cisco/umbrella/ui/states/ProtectionState;

    return-object v0
.end method

.method private invokePopup()V
    .locals 8

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "com.google"

    aput-object v1, v3, v0

    .line 399
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/ui/UmbrellaFragment;->TAG:Ljava/lang/String;

    const-string v2, "InvokePopup method invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x17

    .line 401
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 403
    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v4, Lcom/cisco/umbrella/R$string;->umbrella_domains_missing:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 402
    invoke-static/range {v1 .. v7}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    .line 405
    invoke-virtual {p0, v0, v1}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private sendBroadCast(Landroid/content/Intent;)V
    .locals 2

    .line 431
    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.cisco.anyconnect.vpn.android.avf.permission.SEND_UMBRELLA_BROADCAST_PERMISSION"

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private sendUmbrellaFragmentReady()V
    .locals 4

    .line 165
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/ui/UmbrellaFragment;->TAG:Ljava/lang/String;

    const-string v3, "Send Umbrella Fragment ready"

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.cisco.umbrella.android.UMBRELLA_FRAGMENT_READY"

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-direct {p0, v0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->sendBroadCast(Landroid/content/Intent;)V

    return-void
.end method

.method private setUmbrellaFragmentVisibility(Z)V
    .locals 4

    .line 323
    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 326
    sget v2, Lcom/cisco/umbrella/R$id;->umbrella_main_fragment:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cisco/umbrella/ui/UmbrellaFragment;

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 332
    sget v3, Lcom/cisco/umbrella/R$id;->component_card:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/card/MaterialCardView;

    iput-object v2, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->card:Lcom/google/android/material/card/MaterialCardView;

    const/4 v3, 0x0

    .line 333
    invoke-virtual {v2, v3}, Lcom/google/android/material/card/MaterialCardView;->setClickable(Z)V

    .line 334
    iget-object v2, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->card:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v2, v3}, Lcom/google/android/material/card/MaterialCardView;->setFocusable(Z)V

    if-eqz p1, :cond_0

    .line 337
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 339
    :cond_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/ui/UmbrellaFragment;->TAG:Ljava/lang/String;

    const-string v3, "Hiding the umbrella UI."

    invoke-static {p1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    :goto_0
    return-void
.end method

.method private showNotification(Ljava/lang/String;IZZZ)V
    .locals 3

    .line 444
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/ui/UmbrellaFragment;->TAG:Ljava/lang/String;

    const-string v2, "showNotification invoked:: "

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "IsActive"

    .line 447
    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 448
    new-instance p5, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "default"

    invoke-direct {p5, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 449
    invoke-virtual {p5, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 450
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->pendingIntent:Landroid/app/PendingIntent;

    .line 451
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 452
    invoke-virtual {p1, p4}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 453
    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 454
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 456
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    iget p3, p2, Landroid/app/Notification;->flags:I

    or-int/lit8 p3, p3, 0x10

    iput p3, p2, Landroid/app/Notification;->flags:I

    .line 457
    iget-object p2, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->notificationManager:Landroid/app/NotificationManager;

    const/16 p3, 0x33

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private unregisterReceiver()V
    .locals 3

    .line 252
    iget-boolean v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->isReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 254
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->isReceiverRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/ui/UmbrellaFragment;->TAG:Ljava/lang/String;

    const-string v2, "Receiver is already unregistered"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateContentView()V
    .locals 8

    .line 271
    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->mUmbrellaListAdapter:Lcom/cisco/anyconnect/android/ui/util/ACListLayout;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->clearList()V

    .line 272
    invoke-direct {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->getCurrentStats()Lcom/cisco/umbrella/UmbrellaStats;

    move-result-object v0

    .line 274
    sget-object v1, Lcom/cisco/umbrella/ui/states/AgentState;->NO_ORGINFO:Lcom/cisco/umbrella/ui/states/AgentState;

    iget-object v2, v0, Lcom/cisco/umbrella/UmbrellaStats;->agentState:Lcom/cisco/umbrella/ui/states/AgentState;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->mShowFragment:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 275
    :goto_0
    invoke-direct {p0, v1}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->setUmbrellaFragmentVisibility(Z)V

    if-eqz v1, :cond_3

    .line 279
    invoke-virtual {v0}, Lcom/cisco/umbrella/UmbrellaStats;->getUIResourceValues()[I

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    .line 280
    array-length v2, v0

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->subtitle:Landroid/widget/TextView;

    aget v2, v0, v4

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    new-instance v1, Lcom/cisco/umbrella/ui/UmbrellaFragment$3;

    invoke-direct {v1, p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment$3;-><init>(Lcom/cisco/umbrella/ui/UmbrellaFragment;)V

    .line 294
    new-instance v2, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;

    sget v5, Lcom/cisco/umbrella/R$string;->umbrella_security_statistics:I

    .line 296
    invoke-static {v5}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/cisco/umbrella/R$drawable;->ic_change_log:I

    const-string v7, "Details"

    invoke-direct {v2, v7, v5, v6}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 298
    new-instance v5, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;

    aget v3, v0, v3

    .line 299
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aget v6, v0, v6

    .line 300
    invoke-static {v6}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aget v7, v0, v7

    invoke-direct {v5, v3, v6, v7}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 302
    iget-object v3, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->mUmbrellaListAdapter:Lcom/cisco/anyconnect/android/ui/util/ACListLayout;

    invoke-virtual {v3, v5}, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->putItem(Lcom/cisco/anyconnect/android/ui/util/ACListItem;)Lcom/cisco/anyconnect/android/ui/util/ACListItem;

    .line 303
    iget-object v3, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->mUmbrellaListAdapter:Lcom/cisco/anyconnect/android/ui/util/ACListLayout;

    invoke-virtual {v3, v2}, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->putItem(Lcom/cisco/anyconnect/android/ui/util/ACListItem;)Lcom/cisco/anyconnect/android/ui/util/ACListItem;

    .line 304
    invoke-virtual {v5, v4}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->setEnabled(Z)V

    .line 305
    invoke-virtual {v2, v1}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->card:Lcom/google/android/material/card/MaterialCardView;

    iget-object v2, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->mMainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 281
    :cond_2
    :goto_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/ui/UmbrellaFragment;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected UI resource values."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public getPaddingByHeight()I
    .locals 2

    .line 159
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 160
    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 161
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 411
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 412
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/ui/UmbrellaFragment;->TAG:Ljava/lang/String;

    const-string v2, "onActivityResult::"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "authAccount"

    .line 417
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 418
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Account selected by user is: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v1, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo p3, "userId"

    .line 420
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.cisoc.umbrella.android.USER_IDENTITY_SELECTED"

    .line 421
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    invoke-direct {p0, p2}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->sendBroadCast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 424
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "onActivityResult RESULT_CANCELED:"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-direct {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->invokePopup()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 111
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/ui/UmbrellaFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreate Invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-direct {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->configureReceivers()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 118
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object p3, Lcom/cisco/umbrella/ui/UmbrellaFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreateView Invoked"

    invoke-static {p2, p3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance p2, Lcom/cisco/umbrella/UmbrellaStatsQuery;

    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/cisco/umbrella/UmbrellaStatsQuery;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->mUmbrellaStatsQuery:Lcom/cisco/umbrella/UmbrellaStatsQuery;

    .line 121
    sget p2, Lcom/cisco/umbrella/R$layout;->component_fragment:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->mMainView:Landroid/view/View;

    .line 124
    sget p3, Lcom/cisco/umbrella/R$id;->ll_component:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    .line 125
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 127
    new-instance v0, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;

    invoke-direct {v0, p1, p2}, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;-><init>(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->mUmbrellaListAdapter:Lcom/cisco/anyconnect/android/ui/util/ACListLayout;

    .line 129
    iget-object p1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->mMainView:Landroid/view/View;

    sget p2, Lcom/cisco/umbrella/R$id;->left_drawable:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 131
    iget-object p2, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->mMainView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/cisco/umbrella/R$drawable;->ic_intrusion_policy:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 132
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->mMainView:Landroid/view/View;

    sget p2, Lcom/cisco/umbrella/R$id;->tv_component_header:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 137
    iget-object p2, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->mMainView:Landroid/view/View;

    sget v0, Lcom/cisco/umbrella/R$id;->tv_component_subtitle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->subtitle:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 139
    sget p2, Lcom/cisco/umbrella/R$string;->umbrella_security:I

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->getPaddingByHeight()I

    move-result p2

    .line 143
    div-int/lit8 p2, p2, 0x3f

    invoke-virtual {p1, p3, p2, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 144
    iget-object p1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->checkPermissions()V

    .line 148
    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->notificationManager:Landroid/app/NotificationManager;

    .line 155
    iget-object p1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->mMainView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 4

    .line 264
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/ui/UmbrellaFragment;->TAG:Ljava/lang/String;

    const-string v3, "onDestroy invoked"

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 266
    invoke-direct {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->unregisterReceiver()V

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->dialogFragment:Lcom/cisco/umbrella/ui/IdentityDialogFragment;

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 245
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/ui/UmbrellaFragment;->TAG:Ljava/lang/String;

    const-string v3, "onPause invoked"

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 247
    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->mUmbrellaStatsObserver:Lcom/cisco/umbrella/UmbrellaStatsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 248
    invoke-direct {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->unregisterReceiver()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 174
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/umbrella/ui/UmbrellaFragment;->TAG:Ljava/lang/String;

    const-string v3, "onResume invoked"

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 176
    invoke-direct {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->configureReceivers()V

    .line 177
    invoke-direct {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->updateContentView()V

    .line 178
    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/cisco/umbrella/util/Constant;->UMBRELLA_STATS_PROVIDER_AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->mUmbrellaStatsObserver:Lcom/cisco/umbrella/UmbrellaStatsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 182
    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->dialogFragment:Lcom/cisco/umbrella/ui/IdentityDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->dialogFragment:Lcom/cisco/umbrella/ui/IdentityDialogFragment;

    .line 183
    invoke-virtual {v0}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->dialogFragment:Lcom/cisco/umbrella/ui/IdentityDialogFragment;

    .line 184
    invoke-virtual {v0}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment;->notificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    return-void

    .line 191
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    const/4 v1, 0x0

    .line 192
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 193
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    const/16 v3, 0x33

    if-ne v2, v3, :cond_3

    aget-object v2, v0, v1

    .line 194
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "IsActive"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 197
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 198
    new-instance v1, Lcom/cisco/umbrella/ui/UmbrellaFragment$2;

    invoke-direct {v1, p0}, Lcom/cisco/umbrella/ui/UmbrellaFragment$2;-><init>(Lcom/cisco/umbrella/ui/UmbrellaFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/ui/UmbrellaFragment;->TAG:Ljava/lang/String;

    const-string v2, "Android OS Oreo(8) or above is required to start the Umbrella protection on Unmanaged Devices. Exiting."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

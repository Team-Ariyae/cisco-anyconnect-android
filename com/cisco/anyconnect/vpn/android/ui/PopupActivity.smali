.class public Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "PopupActivity.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "PopupActivity"


# instance fields
.field private mPopupListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$IPopupListener;

.field private final mPopupMgr:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPopupMgr(Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;->mPopupMgr:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 33
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;->mPopupListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$IPopupListener;

    .line 49
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;

    invoke-direct {v1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$IPopupListener;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;->mPopupMgr:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 10

    const-string v0, "com.cisco.anyconnect.vpn.android.POPUP_IS_CANCELABLE"

    const/4 v1, 0x1

    .line 89
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const-string v0, "com.cisco.anyconnect.vpn.android.POPUP_TEXT_KEY"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v0, ""

    .line 92
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.cisco.anyconnect.vpn.android.POPUP_NEUTRAL_BUTTON_LABEL_KEY"

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "com.cisco.anyconnect.vpn.android.POPUP_NEUTRAL_BUTTON_INTENT_KEY"

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.android.POPUP_NEGATIVE_BUTTON_LABEL_KEY"

    .line 102
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "com.cisco.anyconnect.vpn.android.POPUP_POSITIVE_BUTTON_DISABLED"

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const p1, 0x7f11003c

    .line 107
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    .line 109
    invoke-direct/range {v2 .. v9}, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;->showPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZZLjava/lang/String;)V

    return-void

    .line 94
    :cond_1
    :goto_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "PopupActivity"

    const-string v1, "popup intent doesnt contain a message"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZZLjava/lang/String;)V
    .locals 12

    move-object v10, p0

    .line 70
    new-instance v11, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;

    iget-object v1, v10, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;->mPopupMgr:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;

    move-object v0, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object v6, p0

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;ZZLjava/lang/String;)V

    .line 79
    iget-object v0, v10, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;->mPopupMgr:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;

    invoke-virtual {v0, v11}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->addPopup(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;)V

    .line 81
    iget-object v0, v10, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;->mPopupMgr:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->hasPopupToShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, v10, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;->mPopupMgr:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->showNextPopup()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;

    invoke-virtual {p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->acquireResources(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 133
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 134
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;

    invoke-virtual {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->releaseResources(Landroid/content/Context;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 115
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 118
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;->mPopupMgr:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->hasPopupToShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/PopupActivity;->mPopupMgr:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->showNextPopup()V

    :cond_0
    return-void
.end method

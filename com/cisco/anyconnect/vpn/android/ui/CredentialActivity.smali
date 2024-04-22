.class public Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "CredentialActivity.java"

# interfaces
.implements Lcom/cisco/anyconnect/ui/CredentialPromptFragment$CredentialPromptCallback;
.implements Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$ICredentialManagerCB;


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "CredentialActivity"

.field private static final REQUEST_CERT_BANNER:I = 0x1

.field private static final REQUEST_WEBVIEW:I = 0x2


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCachedCredMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedSaveCredentialsCheckbox:Z

.field private mCredentialFrag:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

.field private mCredentialManager:Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;

.field private mHasUserResponded:Z

.field private mHostname:Ljava/lang/String;

.field private mInfoListener:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

.field private mParent:Landroid/content/pm/PackageItemInfo;

.field private mPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

.field private mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

.field private mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

.field private mShowCredFragmentOnResume:Z

.field private mShowSubmitButton:Z

.field private mTunnelGroupChangeDlg:Landroid/app/ProgressDialog;

.field private mUpdateTunnelGroup:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCredentialFrag(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/ui/CredentialPromptFragment;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mCredentialFrag:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCredentialManager(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mCredentialManager:Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHostname(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mHostname:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInfoListener(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mInfoListener:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPromptHandler(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPromptInfo(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceConnMgr(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateTunnelGroup(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mUpdateTunnelGroup:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmHostname(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mHostname:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPromptInfo(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    return-void
.end method

.method static bridge synthetic -$$Nest$monNewUserPrompt(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->onNewUserPrompt(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSSOComplete(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->onSSOComplete(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserSubmit(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->onUserSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryDismissTunnelGroupChangeDialog(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->tryDismissTunnelGroupChangeDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 77
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mCachedCredMap:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mCachedSaveCredentialsCheckbox:Z

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mShowSubmitButton:Z

    .line 88
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    .line 787
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$6;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$6;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mInfoListener:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    return-void
.end method

.method private createTunnelGroupChangeDialog()V
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mTunnelGroupChangeDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 764
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mTunnelGroupChangeDlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 765
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 766
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mTunnelGroupChangeDlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 773
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mTunnelGroupChangeDlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$5;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$5;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method private handleSSOPrompt()V
    .locals 6

    .line 350
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    const-string v1, "sso-token"

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->getEntry(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v1, v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->singleAttributes:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;

    .line 354
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->VPN_SAML:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "singleAttributes: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->singleAttributes:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v2, v3, v4, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/Class;Ljava/lang/String;)V

    .line 356
    iget-boolean v0, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;->ssoIsExternalBrowser:Z

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->showCredentialFragment()V

    .line 359
    iget-object v0, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;->ssoUrl:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/cisco/anyconnect/vpn/android/browser/BrowserUtility;->startBrowser(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f1101d0

    .line 361
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 365
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "url"

    .line 366
    iget-object v3, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;->ssoUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "finalUrl"

    .line 367
    iget-object v3, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;->ssoFinalUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extract_cookie"

    .line 368
    iget-object v3, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;->ssoTokenCookieName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "user_agent"

    .line 369
    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;->ssoUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 370
    invoke-virtual {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 375
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mShowSubmitButton:Z

    .line 376
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->showCredentialFragment()V

    :cond_2
    :goto_0
    return-void
.end method

.method private mapWebviewError(I)Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 710
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;->Unspecified:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    return-object p1

    .line 708
    :pswitch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;->SsoClientCertRequest:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    return-object p1

    .line 706
    :pswitch_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;->SsoGettingCookie:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    return-object p1

    .line 704
    :pswitch_2
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;->BadServerCert:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onCertBannerResponse(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 697
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->onUserCancel(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    :cond_0
    return-void
.end method

.method private onNewUserPrompt(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 341
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mShowSubmitButton:Z

    .line 342
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->SINGLESIGNON:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    if-ne v0, v1, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->handleSSOPrompt()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 345
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->showCredentialFragment()V

    :cond_1
    :goto_0
    return-void
.end method

.method private onSSOCancel()V
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->hasMultipleGroups()Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->onUserCancel(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    goto :goto_0

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->IsVisible()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 594
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mShowCredFragmentOnResume:Z

    goto :goto_0

    .line 596
    :cond_1
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->showCredentialFragment()V

    :goto_0
    return-void
.end method

.method private onSSOComplete(Ljava/lang/String;)V
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    const-string v1, "sso-token"

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->getEntry(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    move-result-object v0

    .line 580
    iput-object p1, v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    .line 581
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->onUserSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    return-void
.end method

.method private onUserCancel(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    .locals 5

    .line 603
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mHasUserResponded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 608
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mHasUserResponded:Z

    .line 611
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->finish()V

    .line 613
    iget-object v1, p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->STATUS:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    if-ne v1, v2, :cond_1

    return-void

    .line 619
    :cond_1
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v1

    const-string v2, "CredentialActivity"

    if-nez v1, :cond_2

    .line 622
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Unexpected NULL VpnService"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 626
    :cond_2
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "User cancelled CredentialActivity"

    invoke-static {v3, v2, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iput-boolean v0, p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->isCancelled:Z

    .line 632
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    invoke-interface {v1, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    .line 633
    invoke-interface {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UserSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 637
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "RemoteException in UserSubmit"

    invoke-static {v0, v2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private onUserSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    .locals 1

    const/4 v0, 0x0

    .line 643
    invoke-direct {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->onUserSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;)V

    return-void
.end method

.method private onUserSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;)V
    .locals 1

    .line 648
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mHasUserResponded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 653
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mHasUserResponded:Z

    .line 655
    iput-object p2, p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->responseError:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    .line 658
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->finish()V

    .line 660
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object p2

    const-string v0, "CredentialActivity"

    if-nez p2, :cond_1

    .line 663
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Unexpected NULL VpnService"

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 669
    :cond_1
    :try_start_0
    invoke-interface {p2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UserSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    iget-boolean p1, p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->isAutoSubmit:Z

    if-nez p1, :cond_2

    .line 683
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Deactivate()V

    :cond_2
    return-void

    .line 673
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "RemoteException occurred on VpnService RemoteException"

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f110139

    .line 674
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private showCredentialFragment()V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mCredentialFrag:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    if-eqz v0, :cond_0

    .line 225
    :try_start_0
    invoke-virtual {v0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :catch_0
    :cond_0
    new-instance v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mCredentialFrag:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    .line 230
    invoke-virtual {v0, p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->setCredentialCallback(Lcom/cisco/anyconnect/ui/CredentialPromptFragment$CredentialPromptCallback;)V

    .line 231
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mCredentialFrag:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mShowSubmitButton:Z

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->setShowSubmitButton(Z)V

    .line 232
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mCredentialFrag:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "credential_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showTunnelGroupChangeDialog()V
    .locals 2

    .line 743
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->createTunnelGroupChangeDialog()V

    .line 744
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mTunnelGroupChangeDlg:Landroid/app/ProgressDialog;

    const v1, 0x7f1102e9

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 745
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mTunnelGroupChangeDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private tryDismissTunnelGroupChangeDialog()V
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mTunnelGroupChangeDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 753
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mTunnelGroupChangeDlg:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method


# virtual methods
.method public OnCredentialCancel(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    .locals 0

    .line 328
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->onUserCancel(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    return-void
.end method

.method public OnCredentialCertRequested(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    .locals 1

    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->useEnrollmentCA:Z

    .line 337
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->onUserSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    return-void
.end method

.method public OnCredentialNeutral(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    .locals 0

    .line 819
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->onUserSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    return-void
.end method

.method public OnCredentialSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    .locals 5

    .line 239
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->SINGLESIGNON:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    iget-object v1, p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    if-ne v0, v1, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->handleSSOPrompt()V

    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v0

    const-string v1, "CredentialActivity"

    if-nez v0, :cond_1

    .line 246
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Failed to submit user credentials due to NULL VpnService"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f110139

    .line 247
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mParent:Landroid/content/pm/PackageItemInfo;

    if-eqz v0, :cond_3

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.cisco.anyconnect.vpn.android.AUTHENTICATION_RESULT_USER_PROMPTS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 257
    invoke-virtual {v3, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 258
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 259
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mParent:Landroid/content/pm/PackageItemInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mParent:Landroid/content/pm/PackageItemInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mParent:Landroid/content/pm/PackageItemInfo;

    instance-of v2, v2, Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_2

    .line 265
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 274
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Failed to send Credential Submission Notification to parent"

    invoke-static {v2, v1, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    :cond_3
    :goto_0
    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->allowSaveCredentials:Z

    if-eqz v0, :cond_5

    .line 280
    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->shouldSaveCredentials:Z

    if-eqz v0, :cond_4

    .line 283
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mCredentialManager:Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mHostname:Ljava/lang/String;

    const-string/jumbo v2, "username"

    .line 284
    invoke-virtual {p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->getEntry(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    const-string v3, "password"

    .line 285
    invoke-virtual {p1, v3}, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->getEntry(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    .line 283
    invoke-virtual {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->saveCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 290
    :cond_4
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mCredentialManager:Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mHostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->deleteCredentials(Ljava/lang/String;)V

    .line 294
    :cond_5
    :goto_1
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->onUserSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    return-void
.end method

.method public OnGroupChange(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;Ljava/lang/String;)V
    .locals 2

    .line 301
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mCredentialFrag:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->dismiss()V

    const/4 p1, 0x0

    .line 302
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mCredentialFrag:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    const/4 p1, 0x1

    .line 303
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mUpdateTunnelGroup:Z

    .line 304
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object p1

    const v0, 0x7f110139

    const-string v1, "CredentialActivity"

    if-nez p1, :cond_0

    .line 306
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Failed to change tunnel group selection due to NULL VpnService"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 313
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->SetNewTunnelGroup(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->showTunnelGroupChangeDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 318
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "RemoteException on VpnService.SetNewTunnelGroup"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 735
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected request: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "CredentialActivity"

    invoke-static {p2, p3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo p1, "user cancelled webview prompt"

    .line 725
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 726
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->onSSOCancel()V

    goto :goto_1

    :cond_1
    if-ne v0, p2, :cond_2

    const-string p1, "extract_cookie"

    .line 728
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 729
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->onSSOComplete(Ljava/lang/String;)V

    goto :goto_1

    .line 731
    :cond_2
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mapWebviewError(I)Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->onUserSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;)V

    goto :goto_1

    :cond_3
    if-ne p2, v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 720
    :goto_0
    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->onCertBannerResponse(Z)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "onCreate"

    const-string v1, "CredentialActivity"

    .line 383
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->Initialize(Landroid/content/Context;)V

    .line 387
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 389
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.cisco.anyconnect.vpn.android.CREDENTIAL_ACTIVITY_CLOSE_INTENT"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "com.cisco.anyconnect.vpn.android.CREDENTIAL_ACTIVITY_SSO_ACTION"

    .line 390
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.cisco.anyconnect.vpn.android.AUTHENTICATION_SHOW_KEY_USER_PROMPTS"

    .line 395
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    const-string v2, "ParentInfo"

    .line 398
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 401
    instance-of v2, v0, Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_1

    instance-of v2, v0, Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Parent Info specified but is of invalid type- must be ActivityInfo or ServiceInfo"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 403
    :cond_1
    :goto_0
    check-cast v0, Landroid/content/pm/PackageItemInfo;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mParent:Landroid/content/pm/PackageItemInfo;

    .line 411
    :cond_2
    :goto_1
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;

    invoke-direct {v0, p0, p0}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;-><init>(Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$ICredentialManagerCB;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mCredentialManager:Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;

    .line 413
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;

    invoke-direct {v2, p0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    .line 514
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Activate()Z

    move-result v0

    if-nez v0, :cond_3

    .line 517
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "ServiceConnMgr.Activate failed"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f110139

    .line 518
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 522
    :cond_3
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    if-eqz v0, :cond_5

    .line 525
    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->SINGLESIGNON:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    if-eq v0, v1, :cond_5

    .line 526
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "credential_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mCredentialFrag:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    if-nez p1, :cond_4

    .line 528
    new-instance p1, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mCredentialFrag:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    .line 529
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 531
    :cond_4
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mCredentialFrag:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-virtual {p1, p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->setCredentialCallback(Lcom/cisco/anyconnect/ui/CredentialPromptFragment$CredentialPromptCallback;)V

    :cond_5
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 565
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mHasUserResponded:Z

    if-nez v0, :cond_0

    const-string v0, "Cancelling prompt in onDestroy"

    .line 566
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->onUserCancel(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    :cond_0
    const-string v0, "CredentialActivity"

    const-string v1, "onDestroy"

    .line 571
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->tryDismissTunnelGroupChangeDialog()V

    .line 573
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Deactivate()V

    .line 574
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 575
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->OnVisibilityChange(Z)V

    .line 559
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->OnVisibilityChange(Z)V

    .line 540
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 542
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mShowCredFragmentOnResume:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 543
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mShowCredFragmentOnResume:Z

    .line 544
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->showCredentialFragment()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->OnVisibilityChange(Z)V

    .line 552
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    return-void
.end method

.method public savedCredentialsCB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 201
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

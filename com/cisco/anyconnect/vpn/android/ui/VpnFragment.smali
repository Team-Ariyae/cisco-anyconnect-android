.class public Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;
.super Landroidx/fragment/app/Fragment;
.source "VpnFragment.java"


# static fields
.field private static final CERT_WARNING_ID:I = 0xc

.field private static final COMPONENT_INSTALL_ID:I = 0xa

.field private static final ENTITY_NAME:Ljava/lang/String; = "VpnFragment"

.field private static final SHOW_SPINNER_MSG:I = 0x1

.field private static final WEBVIEW_ID:I = 0xe


# instance fields
.field private final SPINNER_MAX_INTERVAL:J

.field private header:Landroid/widget/TextView;

.field private mActiveConn:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCanExit:Z

.field private final mCertificateListener:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

.field private mCheckedForBatterySaver:Z

.field private mConnList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

.field private mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

.field private final mConnectionListener:Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

.field private final mDismissProgressDlgTask:Ljava/lang/Runnable;

.field private mErrorToDisplay:Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;

.field private mExitInProgress:Z

.field private mFipsWarningDlg:Landroid/app/Dialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mInfoListener:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

.field private mIsForeground:Z

.field private mIsScepEnrollInProgress:Z

.field private mMainView:Landroid/view/View;

.field private final mNetworkChangeHandler:Ljava/lang/Runnable;

.field private mParentActivity:Landroid/app/Activity;

.field private mPendingConnection:Ljava/lang/String;

.field private mPendingPromptOp:Ljava/lang/Runnable;

.field private final mPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

.field private mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

.field private mServiceReady:Z

.field private mShowBatterySaverPopup:Z

.field private mShutdownAfterDisconnect:Z

.field private mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

.field private mVpnCard:Lcom/google/android/material/card/MaterialCardView;

.field private mVpnConnectionItem:Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;

.field private mVpnListAdapter:Lcom/cisco/anyconnect/android/ui/util/ACListLayout;

.field private mVpnSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field private progressIndicator:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

.field private statusIcon:Landroid/widget/ImageView;

.field private subtitle:Landroid/widget/TextView;

.field private final vpnItemClickListener:Landroid/view/View$OnClickListener;

.field private final vpnItemDisabledClickListener:Landroid/view/View$OnClickListener;

.field private final vpnSwitchCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public static synthetic $r8$lambda$GVCBJhuTANApW1ZeLHJQTP7nhyE(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->tryDismissProgressIndicator()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCertificateListener(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mCertificateListener:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnList(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectionListener(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mConnectionListener:Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInfoListener(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mInfoListener:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkChangeHandler(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mNetworkChangeHandler:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmParentActivity(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceConnMgr(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceReady(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mServiceReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutdownAfterDisconnect(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mShutdownAfterDisconnect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/cisco/anyconnect/vpn/android/service/StateInfo;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVpnCard(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/google/android/material/card/MaterialCardView;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnCard:Lcom/google/android/material/card/MaterialCardView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCanExit(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mCanExit:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConnList(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConnectProgressState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsScepEnrollInProgress(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mIsScepEnrollInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingPromptOp(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mPendingPromptOp:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmServiceReady(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mServiceReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$mConnect(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->Connect()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mDisconnect(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->Disconnect()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mblockUntrustedServers(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->blockUntrustedServers()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcancelProgressDlgTimer(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->cancelProgressDlgTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisplayErrorNotice(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->displayErrorNotice(Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishInitialize(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->finishInitialize()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePrompt(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->handlePrompt(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misMdmControlConn(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->isMdmControlConn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpopulateActiveConnection(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->populateActiveConnection(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowProgressIndicator(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->showProgressIndicator()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartBannerActivity(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Ljava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;[Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->startBannerActivity(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;[Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartCertWarningActivity(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->startCertWarningActivity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryDismissProgressIndicator(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->tryDismissProgressIndicator()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateActiveConnectionState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->updateActiveConnectionState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePausedStateText(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->updatePausedStateText()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateToggleVisualState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->updateToggleVisualState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-wide/32 v0, 0x2bf20

    .line 102
    iput-wide v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->SPINNER_MAX_INTERVAL:J

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mServiceReady:Z

    .line 115
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mExitInProgress:Z

    .line 116
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mShutdownAfterDisconnect:Z

    .line 120
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Initializing:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    const/4 v1, 0x1

    .line 121
    iput-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mCanExit:Z

    .line 132
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mShowBatterySaverPopup:Z

    .line 133
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mCheckedForBatterySaver:Z

    .line 135
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mNetworkChangeHandler:Ljava/lang/Runnable;

    .line 143
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mHandler:Landroid/os/Handler;

    .line 153
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mCertificateListener:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    .line 181
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$4;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$4;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mConnectionListener:Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

    .line 197
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mInfoListener:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    .line 262
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    .line 520
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$8;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$8;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->vpnItemClickListener:Landroid/view/View$OnClickListener;

    .line 544
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$9;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$9;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->vpnItemDisabledClickListener:Landroid/view/View$OnClickListener;

    .line 550
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$$ExternalSyntheticLambda5;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->vpnSwitchCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 769
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$$ExternalSyntheticLambda6;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mDismissProgressDlgTask:Ljava/lang/Runnable;

    .line 856
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$11;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$11;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private Connect()V
    .locals 3

    .line 896
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mActiveConn:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 897
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->Connect(Ljava/lang/String;)V

    goto :goto_0

    .line 899
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.ACTION_SHOW_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x7f1101fd

    .line 900
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.cisco.anyconnect.vpn.android.POPUP_TEXT_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.POPUP_TEXT_IS_ERROR_KEY"

    const/4 v2, 0x1

    .line 901
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 902
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 903
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 904
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setChecked(Z)V

    .line 905
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->vpnSwitchCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method

.method private Connect(Ljava/lang/String;)V
    .locals 6

    const-string v0, "VpnFragment"

    const-string v1, "Failed to get VpnConnection for "

    .line 910
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 912
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    const v0, 0x7f110042

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const v3, 0x7f110138

    .line 917
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->showProgressIndicator()V

    .line 920
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    invoke-interface {v4, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v4

    if-nez v4, :cond_1

    .line 922
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    const v2, 0x7f11018a

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    .line 924
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->tryDismissProgressIndicator()V

    return-void

    .line 928
    :cond_1
    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v1

    const/4 v5, 0x2

    invoke-interface {v1, v4, v5}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->Connect(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;I)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object v1

    .line 929
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    if-eq v1, v4, :cond_3

    .line 930
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo v5, "vpn connection attempt failed"

    invoke-static {v4, v0, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    invoke-interface {v2, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetErrorString(Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 935
    :cond_2
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    .line 936
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->tryDismissProgressIndicator()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 948
    :cond_3
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->updateToggleVisualState()V

    return-void

    .line 941
    :catch_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    .line 942
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->tryDismissProgressIndicator()V

    .line 943
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService::Connect() failed"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private Disconnect()V
    .locals 5

    const-string v0, "VpnFragment"

    .line 952
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 954
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    const v1, 0x7f110042

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 959
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->Disconnect(I)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object v2

    .line 960
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    if-eq v2, v3, :cond_1

    .line 961
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "disconnect failed"

    invoke-static {v3, v0, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->tryDismissProgressIndicator()V

    .line 963
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetErrorString(Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 972
    :cond_1
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->updateToggleVisualState()V

    return-void

    :catch_0
    move-exception v1

    .line 967
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "error: failed to disconnect"

    invoke-static {v2, v0, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private activateServiceConnection()V
    .locals 3

    .line 784
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->showProgressIndicator()V

    .line 786
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Activate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnFragment"

    const-string v2, "ServiceConnMgr.Activate failed"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    const v1, 0x7f110139

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blockUntrustedServers()Z
    .locals 3

    .line 723
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    const-string v1, "UserPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "BlockUntrustedServers"

    const/4 v2, 0x1

    .line 724
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private cancelProgressDlgTimer()V
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mDismissProgressDlgTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkBatterySaver()V
    .locals 7

    const/4 v0, 0x0

    .line 1169
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mShowBatterySaverPopup:Z

    .line 1173
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_6

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    const-string v2, "BatterySaverPopup"

    .line 1174
    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->GetUserPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mIsForeground:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mCheckedForBatterySaver:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 1179
    iput-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mCheckedForBatterySaver:Z

    .line 1181
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    if-eqz v2, :cond_6

    .line 1184
    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    .line 1185
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1189
    :cond_1
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-nez v2, :cond_2

    return-void

    .line 1194
    :cond_2
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_6

    aget-object v4, v2, v0

    .line 1195
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-eqz v5, :cond_3

    if-eq v5, v1, :cond_3

    const/16 v6, 0x9

    if-ne v5, v6, :cond_5

    .line 1202
    :cond_3
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v6, :cond_4

    iget-boolean v5, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mIsForeground:Z

    if-eqz v5, :cond_4

    .line 1203
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->showBatterySaverPopup()V

    return-void

    .line 1205
    :cond_4
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_5

    .line 1206
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnFragment"

    const-string v3, "Network blocked, will show battery saver popup on OnResume()"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    iput-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mShowBatterySaverPopup:Z

    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method private disconnectAndExitApplication()V
    .locals 1

    const/4 v0, 0x1

    .line 1013
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mShutdownAfterDisconnect:Z

    .line 1014
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->Disconnect()V

    return-void
.end method

.method private displayErrorNotice(Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;)V
    .locals 5

    .line 794
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_Error:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->getMessageType()Lcom/cisco/anyconnect/vpn/jni/MessageType;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_Alert:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    .line 795
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->getMessageType()Lcom/cisco/anyconnect/vpn/jni/MessageType;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_UrlError:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    .line 796
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->getMessageType()Lcom/cisco/anyconnect/vpn/jni/MessageType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 817
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_Status:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->getMessageType()Lcom/cisco/anyconnect/vpn/jni/MessageType;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 820
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v3, Lcom/cisco/anyconnect/ui/PrimaryActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 821
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0xc000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 824
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "default"

    invoke-direct {v1, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x7f0800f4

    .line 825
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x7f11003c

    .line 826
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 827
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->getNotice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v4, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 828
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->getNotice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 829
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 830
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 833
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const/16 v0, 0xd0a

    .line 834
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 797
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.ACTION_SHOW_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.cisco.anyconnect.vpn.android.POPUP_TEXT_KEY"

    .line 798
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->getNotice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_UrlError:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->getMessageType()Lcom/cisco/anyconnect/vpn/jni/MessageType;

    move-result-object v3

    if-ne v1, v3, :cond_2

    const v1, 0x7f110223

    .line 801
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.cisco.anyconnect.vpn.android.POPUP_NEUTRAL_BUTTON_LABEL_KEY"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "com.cisco.anyconnect.vpn.android.POPUP_NEUTRAL_BUTTON_INTENT_KEY"

    .line 803
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 806
    :cond_2
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->OnVisibilityChange(Z)V

    .line 807
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->startActivity(Landroid/content/Intent;)V

    .line 809
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$$ExternalSyntheticLambda2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private exitActivity(Ljava/lang/String;)V
    .locals 2

    .line 1087
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mExitInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1091
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mExitInProgress:Z

    if-eqz p1, :cond_1

    .line 1094
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1098
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private finishInitialize()V
    .locals 5

    const-string v0, "finishInitialize"

    .line 318
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v0

    const-string v1, "VpnFragment"

    if-nez v0, :cond_0

    .line 322
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Unexpected null VpnService."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 330
    :cond_0
    :try_start_0
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;

    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->FIPS:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    invoke-direct {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/OperatingMode;)V

    invoke-interface {v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->IsOperatingMode(Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->showFipsWarningDialog()V

    .line 334
    :cond_1
    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v2

    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    .line 335
    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetActive()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->populateActiveConnection(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 337
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Unexpected RemoteException in GetConnectionList"

    invoke-static {v3, v1, v4, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const v2, 0x7f11013c

    :try_start_1
    const-string v3, "registering for handlers and listeners"

    .line 343
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    .line 344
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    invoke-interface {v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 346
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "RegisterPromptHandler failed"

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 351
    :cond_2
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mConnectionListener:Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

    invoke-interface {v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterConnectionListener(Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 353
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "RegisterConnectionListener failed"

    invoke-static {v3, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    invoke-interface {v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    .line 355
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 359
    :cond_3
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mInfoListener:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    invoke-interface {v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 361
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "RegisterInfoListener failed"

    invoke-static {v3, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    invoke-interface {v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    .line 363
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mConnectionListener:Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

    invoke-interface {v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterConnectionListener(Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;)Z

    .line 364
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 368
    :cond_4
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mCertificateListener:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    invoke-interface {v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 370
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "RegisterCertificateListener failed"

    invoke-static {v3, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    invoke-interface {v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    .line 372
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mConnectionListener:Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

    invoke-interface {v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterConnectionListener(Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;)Z

    .line 373
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mInfoListener:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    invoke-interface {v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z

    .line 374
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 383
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mServiceReady:Z

    .line 386
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Initializing:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    if-eq v0, v1, :cond_6

    .line 387
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->tryDismissProgressIndicator()V

    .line 390
    :cond_6
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->tryDismissFipsWarning()V

    .line 392
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mErrorToDisplay:Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;

    if-eqz v0, :cond_7

    .line 393
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->displayErrorNotice(Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;)V

    const/4 v0, 0x0

    .line 394
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mErrorToDisplay:Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;

    .line 397
    :cond_7
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->handlePendingConnection()V

    .line 399
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 378
    :catch_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "exception occurred while registering callbacks"

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private getActiveConn()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 5

    const/4 v0, 0x0

    .line 1130
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 1135
    :cond_0
    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetActive()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    .line 1140
    :cond_1
    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 1142
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "VpnFragment"

    const-string v4, "getActiveConn failed"

    invoke-static {v2, v3, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private handlePendingConnection()V
    .locals 3

    .line 839
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->isEulaAccepted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 840
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnFragment"

    const-string v2, "Unable to process pending connection: EULA has not been accepted"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mPendingConnection:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mServiceReady:Z

    if-eqz v1, :cond_1

    .line 845
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->Connect(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 846
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mPendingConnection:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private handlePrompt(Ljava/lang/Runnable;)V
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$10;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$10;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private hasNetworkConnectivity()Z
    .locals 5

    .line 1148
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1153
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 1154
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private isMdmControlConn()Z
    .locals 2

    .line 1120
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;-><init>(Landroid/content/Context;)V

    const-string v1, "always_on"

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1124
    :cond_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->getActiveConn()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1125
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsMDMControlled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isOnTrustedNetwork()Z
    .locals 5

    const/4 v0, 0x0

    .line 1248
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 1253
    :cond_0
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;

    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->OnTrustedNetwork:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    invoke-direct {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/OperatingMode;)V

    invoke-interface {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->IsOperatingMode(Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1255
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "VpnFragment"

    const-string v4, "Unexpected RemoteException"

    invoke-static {v2, v3, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method static synthetic lambda$exitIfConfirmed$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1114
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private populateActiveConnection(Ljava/lang/String;)V
    .locals 1

    .line 623
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mActiveConn:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 625
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnConnectionItem:Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;

    const v0, 0x7f110202

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->setSubText(Ljava/lang/String;)V

    goto :goto_0

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnConnectionItem:Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->setSubText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showBatterySaverPopup()V
    .locals 5

    const/4 v0, 0x0

    .line 1215
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mShowBatterySaverPopup:Z

    .line 1216
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1219
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 1221
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    .line 1222
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f110170

    .line 1227
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1236
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1239
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;

    .line 1240
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "BatterySaverPopup"

    invoke-direct {v2, v0, v4, v1, v3}, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V

    .line 1243
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;->createAndShowDialog()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private showFipsWarningDialog()V
    .locals 2

    .line 747
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mFipsWarningDlg:Landroid/app/Dialog;

    const v1, 0x7f0d005b

    .line 748
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 749
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mFipsWarningDlg:Landroid/app/Dialog;

    const v1, 0x7f11015a

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 751
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mFipsWarningDlg:Landroid/app/Dialog;

    const v1, 0x7f0a0176

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f11015b

    .line 752
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mFipsWarningDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showMMSImpactPopup()V
    .locals 3

    .line 881
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 882
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->HasUserOptedOutOfServiceImpactWarning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd04

    .line 883
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    .line 887
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.SERVICE_IMPACT_POPUP_ACTIVITY_SHOW_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x7f1102a4

    .line 888
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "service_impact_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f1102a3

    .line 889
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "service_impact_message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "preference_key"

    const-string v2, "mms_service_impact_ack"

    .line 890
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showProgressIndicator()V
    .locals 2

    .line 737
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mIsScepEnrollInProgress:Z

    if-nez v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->progressIndicator:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 739
    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setVisibility(I)V

    .line 741
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->startProgressDlgTimer()V

    :cond_0
    return-void
.end method

.method private startBannerActivity(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;[Ljava/lang/String;Z)V
    .locals 2

    .line 691
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.BANNER_ACTIVITY_SHOW_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "KEY_BANNER_STRING"

    .line 692
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "KEY_BANNER_CERTIFICATE"

    .line 693
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    .line 695
    array-length p1, p3

    if-eqz p1, :cond_0

    const-string p1, "CONFIRM_REASONS"

    .line 696
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p1, "IMPORT_ALLOWED"

    .line 699
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 701
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startCertWarningActivity()V
    .locals 2

    .line 729
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.CERT_WARNING_ACTIVITY_SHOW_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 730
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v1, 0xc

    .line 731
    invoke-virtual {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startProgressDlgTimer()V
    .locals 4

    .line 876
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mDismissProgressDlgTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 877
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mDismissProgressDlgTask:Ljava/lang/Runnable;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private tryDismissFipsWarning()V
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mFipsWarningDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 774
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mFipsWarningDlg:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private tryDismissProgressIndicator()V
    .locals 3

    .line 762
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mIsScepEnrollInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->progressIndicator:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    if-eqz v0, :cond_0

    .line 763
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnFragment"

    const-string v2, "Dismiss spinner! "

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->progressIndicator:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->setVisibility(I)V

    .line 765
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateActiveConnectionState()V
    .locals 5

    .line 1282
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800b4

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1283
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mMainView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800c3

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1284
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mActiveConn:Ljava/lang/String;

    const v3, 0x7f1102ba

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 1291
    :cond_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v4

    if-ne v2, v4, :cond_1

    .line 1292
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->statusIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1294
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->statusIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1298
    :goto_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$12;->$SwitchMap$com$cisco$anyconnect$vpn$jni$VPNState:[I

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x7f1100da

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1324
    :pswitch_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->subtitle:Landroid/widget/TextView;

    const v1, 0x7f1100df

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1320
    :pswitch_1
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->updatePausedStateText()V

    .line 1321
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->checkBatterySaver()V

    goto :goto_1

    .line 1316
    :pswitch_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->subtitle:Landroid/widget/TextView;

    const v1, 0x7f1100de

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1309
    :pswitch_3
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Connecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    if-ne v0, v2, :cond_2

    .line 1310
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->subtitle:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1312
    :cond_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->subtitle:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1306
    :pswitch_4
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->subtitle:Landroid/widget/TextView;

    const v1, 0x7f1100db

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1303
    :pswitch_5
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->subtitle:Landroid/widget/TextView;

    const v1, 0x7f1100d9

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1300
    :pswitch_6
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->subtitle:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    .line 1285
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->subtitle:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1286
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->statusIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePausedStateText()V
    .locals 2

    .line 980
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->hasNetworkConnectivity()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->isOnTrustedNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1100dd

    .line 981
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 982
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f1100dc

    .line 984
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 985
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateToggleVisualState()V
    .locals 5

    .line 1032
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->isMdmControlConn()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnCard:Lcom/google/android/material/card/MaterialCardView;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->vpnItemDisabledClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1036
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 1038
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1039
    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->getDisconnectClientType()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnCard:Lcom/google/android/material/card/MaterialCardView;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->vpnItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1044
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "VpnFragment"

    const-string v4, "error: failed to get disconnect client type"

    invoke-static {v2, v3, v4, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnCard:Lcom/google/android/material/card/MaterialCardView;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->vpnItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1051
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v0

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 1052
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnCard:Lcom/google/android/material/card/MaterialCardView;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mMainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f06027b

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 1053
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mMainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f060038

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1054
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mMainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f06003a

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 1055
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v0, v3}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1056
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v0, v1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setChecked(Z)V

    .line 1057
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->vpnSwitchCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_3

    .line 1060
    :cond_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnCard:Lcom/google/android/material/card/MaterialCardView;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mMainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f060051

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 1061
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mMainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f060082

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1062
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mMainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x1060000

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 1066
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v0, v3}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1067
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v2

    if-eq v0, v2, :cond_4

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    .line 1068
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v2

    if-ne v0, v2, :cond_3

    goto :goto_1

    .line 1071
    :cond_3
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v0, v1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setChecked(Z)V

    goto :goto_2

    .line 1069
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setChecked(Z)V

    .line 1073
    :goto_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->vpnSwitchCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public CanExit()Z
    .locals 1

    .line 1334
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mCanExit:Z

    return v0
.end method

.method public OnTranslationTableChanged()V
    .locals 0

    .line 1330
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->drawContentView()V

    return-void
.end method

.method public drawContentView()V
    .locals 5

    .line 558
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnListAdapter:Lcom/cisco/anyconnect/android/ui/util/ACListLayout;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->clearList()V

    .line 560
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mMainView:Landroid/view/View;

    const v1, 0x7f0a00e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnCard:Lcom/google/android/material/card/MaterialCardView;

    .line 562
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mMainView:Landroid/view/View;

    const v1, 0x7f0a0306

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 563
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->vpnSwitchCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 565
    new-instance v0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;

    const v1, 0x7f1100ce

    .line 566
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f110202

    .line 567
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0800a7

    invoke-direct {v0, v1, v2, v3}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnConnectionItem:Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;

    .line 569
    new-instance v0, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;

    const v1, 0x7f110115

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1102b5

    .line 570
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0800a1

    invoke-direct {v0, v1, v2, v3}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 572
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnListAdapter:Lcom/cisco/anyconnect/android/ui/util/ACListLayout;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnConnectionItem:Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;

    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->putItem(Lcom/cisco/anyconnect/android/ui/util/ACListItem;)Lcom/cisco/anyconnect/android/ui/util/ACListItem;

    .line 573
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnListAdapter:Lcom/cisco/anyconnect/android/ui/util/ACListLayout;

    invoke-virtual {v1, v0}, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;->putItem(Lcom/cisco/anyconnect/android/ui/util/ACListItem;)Lcom/cisco/anyconnect/android/ui/util/ACListItem;

    .line 575
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$$ExternalSyntheticLambda3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    .line 581
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$$ExternalSyntheticLambda4;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    .line 586
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnCard:Lcom/google/android/material/card/MaterialCardView;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->vpnItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnConnectionItem:Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;

    invoke-virtual {v3, v1}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    invoke-virtual {v0, v2}, Lcom/cisco/anyconnect/android/ui/util/ACDoubleListItemWithImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 595
    :try_start_0
    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    .line 596
    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetActive()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->populateActiveConnection(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 598
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnFragment"

    const-string v3, "Unexpected RemoteException in GetConnectionList"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public exitApplication()V
    .locals 3

    .line 1022
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    const v1, 0x7f110217

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Shutdown(Ljava/lang/String;)V

    .line 1025
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/NchsUtils;->ShutdownService(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f110216

    .line 1028
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->exitActivity(Ljava/lang/String;)V

    return-void
.end method

.method public exitEvenIfConnected()V
    .locals 1

    .line 868
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->isInteractiveState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->exitApplication()V

    goto :goto_0

    .line 871
    :cond_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->disconnectAndExitApplication()V

    :goto_0
    return-void
.end method

.method public exitIfConfirmed()V
    .locals 4

    const v0, 0x7f110266

    .line 1103
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mActiveConn:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1104
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    const v3, 0x7f120131

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f110267

    .line 1106
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1107
    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v0, 0x7f110343

    .line 1108
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v0, 0x7f1101fc

    .line 1114
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1116
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public getPaddingByHeight()I
    .locals 2

    .line 515
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 516
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 517
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public isInteractiveState()Z
    .locals 3

    .line 997
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1001
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v2

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->RECONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    .line 1002
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v2

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->PAUSING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    .line 1003
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v2

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->OPENPAUSED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    .line 1004
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v2

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method synthetic lambda$displayErrorNotice$3$com-cisco-anyconnect-vpn-android-ui-VpnFragment()V
    .locals 3

    .line 810
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mIsScepEnrollInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 811
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mIsScepEnrollInProgress:Z

    .line 812
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->progressIndicator:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->setVisibility(I)V

    .line 813
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v1, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$drawContentView$1$com-cisco-anyconnect-vpn-android-ui-VpnFragment(Landroid/view/View;)V
    .locals 2

    .line 576
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    const-class v1, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.cisco.anyconnect.vpn.android.CONNECTION_SELECTOR_SHOW_INTENT"

    .line 577
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$drawContentView$2$com-cisco-anyconnect-vpn-android-ui-VpnFragment(Landroid/view/View;)V
    .locals 1

    .line 582
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.android.DETAILED_STATS_SHOW_INTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$exitIfConfirmed$4$com-cisco-anyconnect-vpn-android-ui-VpnFragment(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1109
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "VpnFragment"

    const-string/jumbo v1, "user choose to disconnect and exit application"

    invoke-static {p2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->disconnectAndExitApplication()V

    .line 1111
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method synthetic lambda$new$0$com-cisco-anyconnect-vpn-android-ui-VpnFragment(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 551
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->performClick()Z

    .line 552
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->isMdmControlConn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->updateToggleVisualState()V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const-string v0, "onActivityResult"

    const-string v1, "VpnFragment"

    .line 662
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Spawned Activity finished. RequestCode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " resultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 p3, 0xc

    if-eq p1, p3, :cond_0

    const/16 p3, 0xd05

    if-eq p1, p3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 p1, 0x25

    if-ne p1, p2, :cond_6

    .line 682
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->exitEvenIfConnected()V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-ne p1, p2, :cond_2

    .line 667
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Component installation successful."

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->activateServiceConnection()V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 669
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "UnsupportedDevice"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 670
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    const p2, 0x7f11011d

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 671
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "DeviceInfoUnavailable"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 672
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    const p2, 0x7f11011b

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    .line 673
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "OperationTimedOut"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 674
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    const p2, 0x7f110185

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 676
    :cond_5
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    const p2, 0x7f11013b

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "VpnFragment"

    const-string v1, "onCreate"

    .line 405
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 408
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    .line 409
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Initializing:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    .line 411
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$7;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$7;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Landroid/content/Context;)V

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    .line 457
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.cisco.anyconnect.vpn.android.CONNECTION_ACTIVITY_CONNECT_KEY"

    .line 458
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mPendingConnection:Ljava/lang/String;

    .line 460
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    const-string v0, "com.cisco.anyconnect.vpn.android.PRIMARY_ACTIVITY_SHOW_MMS_IMPACT_WARNING"

    .line 462
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->showMMSImpactPopup()V

    goto :goto_0

    :cond_0
    const-string v0, "com.cisco.anyconnect.vpn.android.PRIMARY_ACTIVITY_ADD_CONNECTION_ACTION"

    .line 464
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.CONNECTION_EDITOR_SHOW_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->startActivity(Landroid/content/Intent;)V

    .line 471
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->activateServiceConnection()V

    const-string v0, "NoticeInfo"

    .line 480
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mErrorToDisplay:Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0d0036

    const/4 p3, 0x0

    .line 485
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mMainView:Landroid/view/View;

    const p3, 0x7f0a01c2

    .line 487
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 489
    new-instance p3, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;

    invoke-direct {p3, p1, p2}, Lcom/cisco/anyconnect/android/ui/util/ACListLayout;-><init>(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mVpnListAdapter:Lcom/cisco/anyconnect/android/ui/util/ACListLayout;

    .line 491
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mMainView:Landroid/view/View;

    const p2, 0x7f0a024e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->progressIndicator:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 493
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->drawContentView()V

    .line 496
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mMainView:Landroid/view/View;

    const p2, 0x7f0a02ea

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->header:Landroid/widget/TextView;

    .line 497
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mMainView:Landroid/view/View;

    const p2, 0x7f0a02eb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->subtitle:Landroid/widget/TextView;

    .line 498
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mMainView:Landroid/view/View;

    const p2, 0x7f0a01b9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->statusIcon:Landroid/widget/ImageView;

    .line 499
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->header:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 500
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mMainView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0800b4

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 501
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->header:Landroid/widget/TextView;

    const p3, 0x7f11032d

    invoke-static {p3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->subtitle:Landroid/widget/TextView;

    const p3, 0x7f1102ba

    invoke-static {p3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->statusIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->getPaddingByHeight()I

    move-result p1

    .line 507
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->header:Landroid/widget/TextView;

    div-int/lit8 p1, p1, 0x3f

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 508
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p2, p3, p3, p3, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 511
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mMainView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "onDestroy"

    const-string v1, "VpnFragment"

    .line 605
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Deactivate()V

    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 611
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo v2, "unable to unregister broadcast receiver, Receiver may not have been previously registered."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 616
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mExitInProgress:Z

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->Terminate()V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "NoticeInfo"

    .line 1262
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;

    if-eqz v0, :cond_0

    .line 1264
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->displayErrorNotice(Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;)V

    :cond_0
    const-string v0, "com.cisco.anyconnect.vpn.android.PRIMARY_ACTIVITY_ACTION_CONNECT_INTENT"

    .line 1267
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.cisco.anyconnect.vpn.android.CONNECTION_ACTIVITY_CONNECT_KEY"

    .line 1268
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mPendingConnection:Ljava/lang/String;

    .line 1269
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Connecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    .line 1271
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->handlePendingConnection()V

    goto :goto_0

    :cond_1
    const-string v0, "com.cisco.anyconnect.vpn.android.PRIMARY_ACTIVITY_SHOW_MMS_IMPACT_WARNING"

    .line 1272
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1273
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->showMMSImpactPopup()V

    goto :goto_0

    :cond_2
    const-string v0, "com.cisco.anyconnect.vpn.android.PRIMARY_ACTIVITY_ADD_CONNECTION_ACTION"

    .line 1274
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1275
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.android.CONNECTION_EDITOR_SHOW_INTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1277
    :cond_3
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected intent action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VpnFragment"

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 633
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 634
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->OnVisibilityChange(Z)V

    const-string v0, "onPause"

    .line 635
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    .line 636
    iput-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mIsForeground:Z

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 641
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "onResume"

    .line 642
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 643
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mIsForeground:Z

    .line 644
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v1, v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->OnVisibilityChange(Z)V

    .line 646
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->OPENPAUSED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mState:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mShowBatterySaverPopup:Z

    if-eqz v1, :cond_0

    .line 647
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->showBatterySaverPopup()V

    .line 650
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mPendingPromptOp:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 651
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 652
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->cancelProgressDlgTimer()V

    const/4 v1, 0x0

    .line 653
    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mPendingPromptOp:Ljava/lang/Runnable;

    .line 656
    :cond_1
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v1, v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->OnVisibilityChange(Z)V

    return-void
.end method

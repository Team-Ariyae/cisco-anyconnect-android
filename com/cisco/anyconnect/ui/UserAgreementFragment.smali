.class public Lcom/cisco/anyconnect/ui/UserAgreementFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "UserAgreementFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/ui/UserAgreementFragment$UserAgreementCallback;
    }
.end annotation


# static fields
.field static final BANNER_IS_HTML:Ljava/lang/String; = "com.cisco.anyconnect.ui.BANNER_IS_HTML"

.field private static final ENTITY_NAME:Ljava/lang/String; = "UserAgreementFragment"


# instance fields
.field private buttonCancelListen:Landroid/content/DialogInterface$OnClickListener;

.field private buttonOkListen:Landroid/content/DialogInterface$OnClickListener;

.field private mBannerIsHtml:Z

.field private mCallbackHandler:Lcom/cisco/anyconnect/ui/UserAgreementFragment$UserAgreementCallback;

.field private mCredentialContainer:Landroid/widget/LinearLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

.field private mTV_banner:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$monUserSubmit(Lcom/cisco/anyconnect/ui/UserAgreementFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->onUserSubmit(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 75
    new-instance v0, Lcom/cisco/anyconnect/ui/UserAgreementFragment$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/ui/UserAgreementFragment$1;-><init>(Lcom/cisco/anyconnect/ui/UserAgreementFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->buttonOkListen:Landroid/content/DialogInterface$OnClickListener;

    .line 84
    new-instance v0, Lcom/cisco/anyconnect/ui/UserAgreementFragment$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/ui/UserAgreementFragment$2;-><init>(Lcom/cisco/anyconnect/ui/UserAgreementFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->buttonCancelListen:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private genDialog(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)Landroid/view/View;
    .locals 7

    const-string v0, "genDialog"

    const-string v1, "UserAgreementFragment"

    .line 198
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iput-object p1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    .line 201
    iget-object p1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 203
    iget-object p1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d003f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f0a02ed

    .line 206
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 209
    iget-object v3, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v3, v3, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->message:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 214
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    array-length v0, v0

    if-ge p1, v0, :cond_5

    .line 216
    iget-object v0, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    aget-object v0, v0, p1

    .line 217
    iget-boolean v3, v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isVisible:Z

    if-eqz v3, :cond_4

    .line 220
    iget-object v3, v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    sget-object v4, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Banner:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    if-ne v3, v4, :cond_3

    .line 222
    iget-object v3, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mTV_banner:Landroid/widget/TextView;

    const v4, 0x7f0a02e7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f11012d

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v2

    :cond_1
    if-eqz v3, :cond_4

    .line 231
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Banner is html: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mBannerIsHtml:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-boolean v4, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mBannerIsHtml:Z

    if-eqz v4, :cond_2

    .line 235
    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 236
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_1

    :cond_2
    const/16 v4, 0xf

    .line 240
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 241
    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 247
    :cond_3
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected prompt type received: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 252
    :cond_5
    iget-object p1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mTV_banner:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    iget-object p1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mCredentialContainer:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method private onUserSubmit(Z)V
    .locals 3

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.EULA_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "eula_accept"

    .line 68
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "com.cisco.anyconnect.vpn.android.permission.INTERNAL_VPN_STATE"

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mCallbackHandler:Lcom/cisco/anyconnect/ui/UserAgreementFragment$UserAgreementCallback;

    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    invoke-interface {v0, v1, p1}, Lcom/cisco/anyconnect/ui/UserAgreementFragment$UserAgreementCallback;->OnUserAgreementSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "UserAgreementFragment"

    const-string v1, "onCreate"

    .line 96
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->setCancelable(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.cisco.anyconnect.ui.BANNER_IS_HTML"

    const-string v3, "com.cisco.anyconnect.ui.AUTHENTICATION_SHOW_KEY_USER_AGREEMENT"

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iput-object v4, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    .line 112
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mBannerIsHtml:Z

    :cond_0
    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iput-object v1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    .line 118
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mBannerIsHtml:Z

    goto :goto_0

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    if-nez p1, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 124
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iput-object v1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    .line 125
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mBannerIsHtml:Z

    .line 129
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d003e

    const/4 v2, 0x0

    .line 131
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mCredentialContainer:Landroid/widget/LinearLayout;

    .line 132
    iget-object p1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d003d

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mTV_banner:Landroid/widget/TextView;

    .line 135
    iget-object p1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0042

    iget-object v3, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mCredentialContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a0104

    .line 136
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    const v1, 0x7f11012d

    if-nez p1, :cond_3

    .line 139
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v2

    .line 143
    :cond_3
    iget-object v3, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d0040

    invoke-virtual {v3, v4, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v3, 0x7f0a0102

    .line 144
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mLinearLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_4

    .line 147
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v2

    .line 151
    :cond_4
    iget-object p1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->genDialog(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)Landroid/view/View;

    move-result-object p1

    .line 153
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f120131

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 154
    invoke-virtual {v1, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const v1, 0x7f11003c

    .line 155
    invoke-virtual {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    .line 157
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->submitButtonName:Ljava/lang/String;

    if-nez v1, :cond_5

    const v1, 0x7f110221

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->submitButtonName:Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->buttonOkListen:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 160
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->cancelButtonLabel:Ljava/lang/String;

    if-nez v1, :cond_6

    const v1, 0x7f110050

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->cancelButtonLabel:Ljava/lang/String;

    :goto_2
    iget-object v2, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->buttonCancelListen:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 163
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 164
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 171
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 177
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "com.cisco.anyconnect.ui.AUTHENTICATION_SHOW_KEY_USER_AGREEMENT"

    .line 178
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "com.cisco.anyconnect.ui.BANNER_IS_HTML"

    .line 179
    iget-boolean v1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mBannerIsHtml:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCallback(Lcom/cisco/anyconnect/ui/UserAgreementFragment$UserAgreementCallback;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->mCallbackHandler:Lcom/cisco/anyconnect/ui/UserAgreementFragment$UserAgreementCallback;

    return-void
.end method

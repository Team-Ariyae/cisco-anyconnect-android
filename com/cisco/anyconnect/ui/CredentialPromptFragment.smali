.class public Lcom/cisco/anyconnect/ui/CredentialPromptFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "CredentialPromptFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/ui/CredentialPromptFragment$CredentialPromptCallback;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "CredentialPromptFragment"

.field private static final SHOW_PASSWORD:Ljava/lang/String; = "show_password"


# instance fields
.field private autoSpCombo:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

.field private button_cert_enroll_listen:Landroid/view/View$OnClickListener;

.field private button_listen:Landroid/content/DialogInterface$OnClickListener;

.field private button_ok_listen:Landroid/content/DialogInterface$OnClickListener;

.field private comboListSize:I

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

.field private mCallbackHandler:Lcom/cisco/anyconnect/ui/CredentialPromptFragment$CredentialPromptCallback;

.field private mCredHash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCredentialContainer:Landroid/widget/LinearLayout;

.field private mCredentialDisplayProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

.field private mSaveCredentialsCheckbox:Landroid/widget/CheckBox;

.field private mShowPasswordCheckbox:Landroid/widget/CheckBox;

.field private mShowSubmitButton:Z

.field private mSpinnerCreationFlag:I

.field private mTGlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTV_banner:Landroid/widget/TextView;

.field private show_password_listen:Landroid/view/View$OnClickListener;

.field private spinner_select:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetautoSpCombo(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->autoSpCombo:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcomboListSize(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)I
    .locals 0

    iget p0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->comboListSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallbackHandler(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)Lcom/cisco/anyconnect/ui/CredentialPromptFragment$CredentialPromptCallback;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCallbackHandler:Lcom/cisco/anyconnect/ui/CredentialPromptFragment$CredentialPromptCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPromptInfo(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowPasswordCheckbox(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mShowPasswordCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTGlist(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mTGlist:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowPassword(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->showPassword(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 97
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCachedCredMap:Ljava/util/Hashtable;

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mShowSubmitButton:Z

    .line 114
    new-instance v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->button_ok_listen:Landroid/content/DialogInterface$OnClickListener;

    .line 119
    new-instance v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$1;-><init>(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->show_password_listen:Landroid/view/View$OnClickListener;

    .line 334
    new-instance v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$2;-><init>(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->spinner_select:Landroid/widget/AdapterView$OnItemClickListener;

    .line 341
    new-instance v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$3;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$3;-><init>(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->button_listen:Landroid/content/DialogInterface$OnClickListener;

    .line 357
    new-instance v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$4;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$4;-><init>(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->button_cert_enroll_listen:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 97
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCachedCredMap:Ljava/util/Hashtable;

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mShowSubmitButton:Z

    .line 114
    new-instance v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->button_ok_listen:Landroid/content/DialogInterface$OnClickListener;

    .line 119
    new-instance v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$1;-><init>(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->show_password_listen:Landroid/view/View$OnClickListener;

    .line 334
    new-instance v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$2;-><init>(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->spinner_select:Landroid/widget/AdapterView$OnItemClickListener;

    .line 341
    new-instance v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$3;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$3;-><init>(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->button_listen:Landroid/content/DialogInterface$OnClickListener;

    .line 357
    new-instance v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$4;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$4;-><init>(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->button_cert_enroll_listen:Landroid/view/View$OnClickListener;

    .line 107
    iput-object p1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    return-void
.end method

.method private applyDisplayProperties(Landroid/view/View;Ljava/util/Map;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    const-string v0, "editable"

    .line 718
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 721
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 722
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    const-string/jumbo v0, "visible"

    .line 724
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 725
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    const/16 p2, 0x8

    .line 727
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object p1
.end method

.method private genCredDialog(Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "genCredDialog"

    const-string v3, "CredentialPromptFragment"

    .line 412
    invoke-static {v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v2, "com.cisco.anyconnect.vpn.android.AUTHENTICATION_SHOW_KEY_USER_PROMPTS"

    .line 414
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 415
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iput-object v2, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    .line 418
    :cond_0
    iget-object v2, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCredHash:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 419
    iget-object v2, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 421
    iget-object v2, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d003f

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    const v6, 0x7f0a02ed

    .line 424
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 426
    iget-object v7, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v7, v7, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v6, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 432
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 438
    :goto_0
    iget-object v11, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v11, v11, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    array-length v11, v11

    const/4 v12, 0x1

    const v13, 0x7f11012d

    if-ge v8, v11, :cond_21

    .line 439
    iget-object v11, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v11, v11, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    aget-object v11, v11, v8

    .line 440
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 443
    iget-boolean v14, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isVisible:Z

    if-eqz v14, :cond_1f

    .line 444
    iget-object v14, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    sget-object v15, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Combo:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    const-string v4, ""

    if-ne v14, v15, :cond_f

    .line 445
    iget-object v14, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboValues:[Ljava/lang/String;

    array-length v14, v14

    if-nez v14, :cond_2

    .line 448
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v11, "empty combo box"

    invoke-static {v4, v3, v11}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 454
    :cond_2
    iget-object v14, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mInflater:Landroid/view/LayoutInflater;

    new-instance v15, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v15, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d00b4

    invoke-virtual {v14, v6, v15, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    if-nez v6, :cond_3

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v13}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v5

    :cond_3
    const v12, 0x7f0a02e6

    .line 460
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v14, 0x7f0a028d

    .line 461
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v12, :cond_4

    if-nez v14, :cond_5

    .line 463
    :cond_4
    sget-object v15, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "Could not find spHeader or spCombo after inflation."

    invoke-static {v15, v3, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v13}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    .line 468
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    const/4 v15, -0x1

    .line 469
    :goto_1
    iget-object v7, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboValues:[Ljava/lang/String;

    array-length v7, v7

    if-ge v13, v7, :cond_a

    .line 470
    iget-object v7, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboValues:[Ljava/lang/String;

    aget-object v7, v7, v13

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v7, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboKeys:[Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboKeys:[Ljava/lang/String;

    array-length v7, v7

    if-nez v7, :cond_7

    :cond_6
    iget-object v7, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    iget-object v1, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboValues:[Ljava/lang/String;

    aget-object v1, v1, v13

    .line 473
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    iget-object v1, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboKeys:[Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboKeys:[Ljava/lang/String;

    array-length v1, v1

    iget-object v7, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboValues:[Ljava/lang/String;

    array-length v7, v7

    if-ne v1, v7, :cond_9

    iget-object v1, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    iget-object v7, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboKeys:[Ljava/lang/String;

    aget-object v7, v7, v13

    .line 476
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 478
    :cond_8
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v15, "Combo value selected: "

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboValues:[Ljava/lang/String;

    aget-object v15, v15, v13

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v3, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    move v15, v13

    :cond_9
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    goto :goto_1

    .line 481
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->comboListSize:I

    .line 484
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const v13, 0x1090009

    invoke-direct {v1, v7, v13, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 489
    invoke-virtual {v14}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    iput-object v7, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->autoSpCombo:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    if-eqz v7, :cond_c

    .line 491
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 492
    iget-object v7, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->autoSpCombo:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setInputType(I)V

    .line 493
    iget-object v7, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->autoSpCombo:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 495
    invoke-direct/range {p0 .. p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->updateGroupDropdownSelectorSize()V

    .line 499
    :cond_c
    iget-object v4, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->name:Ljava/lang/String;

    const-string v7, "group_list"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    .line 500
    iput v4, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mSpinnerCreationFlag:I

    .line 501
    iput-object v5, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mTGlist:Ljava/util/List;

    .line 503
    iget-object v4, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->autoSpCombo:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    if-eqz v4, :cond_d

    .line 504
    iget-object v7, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->spinner_select:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v7}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_d
    const/4 v4, -0x1

    if-eq v15, v4, :cond_e

    .line 509
    iget-object v4, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->autoSpCombo:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    if-eqz v4, :cond_e

    .line 510
    invoke-virtual {v4, v15}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setListSelection(I)V

    .line 511
    iget-object v4, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->autoSpCombo:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 515
    :cond_e
    invoke-virtual {v11}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->getTrimmedLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v1, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCredHash:Ljava/util/Hashtable;

    iget-object v4, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 519
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 521
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 523
    :cond_f
    iget-object v1, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    sget-object v5, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Input:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    if-ne v1, v5, :cond_13

    .line 525
    iget-object v1, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mInflater:Landroid/view/LayoutInflater;

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d00b5

    invoke-virtual {v1, v6, v5, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-nez v1, :cond_10

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v13}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v5, 0x0

    return-object v5

    :cond_10
    const/4 v5, 0x0

    const v6, 0x7f0a015d

    .line 531
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v6, :cond_11

    .line 533
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Could not find et_input or tv_input after inflation."

    invoke-static {v1, v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v13}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v5

    .line 538
    :cond_11
    invoke-virtual {v11}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->getTrimmedLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 539
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v7, v5

    check-cast v7, Landroid/widget/EditText;

    iget-object v7, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v5, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCredHash:Ljava/util/Hashtable;

    iget-object v7, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->name:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 544
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v10, :cond_12

    .line 547
    iget-boolean v1, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isEnabled:Z

    if-eqz v1, :cond_12

    iget-object v1, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 548
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->requestFocus()Z

    :goto_3
    const/4 v10, 0x1

    :cond_12
    :goto_4
    const v5, 0x7f0d003f

    goto/16 :goto_5

    .line 551
    :cond_13
    iget-object v1, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    sget-object v5, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Password:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    if-ne v1, v5, :cond_17

    .line 553
    iget-object v1, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mInflater:Landroid/view/LayoutInflater;

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d00b6

    invoke-virtual {v1, v6, v5, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-nez v1, :cond_14

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v13}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v5, 0x0

    return-object v5

    :cond_14
    const/4 v5, 0x0

    const v6, 0x7f0a015e

    .line 559
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v6, :cond_15

    .line 561
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Could not find et_password or tv_password after inflation."

    invoke-static {v1, v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v13}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v5

    .line 566
    :cond_15
    invoke-virtual {v11}, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->getTrimmedLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v5, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    if-eqz v5, :cond_16

    iget-object v5, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_16

    .line 570
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v7, v5

    check-cast v7, Landroid/widget/EditText;

    iget-object v7, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 573
    :cond_16
    iget-object v5, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCredHash:Ljava/util/Hashtable;

    iget-object v7, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->name:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 577
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v10, :cond_12

    .line 580
    iget-boolean v1, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isEnabled:Z

    if-eqz v1, :cond_12

    iget-object v1, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 581
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->requestFocus()Z

    goto/16 :goto_3

    .line 584
    :cond_17
    iget-object v1, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    sget-object v4, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Banner:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    if-ne v1, v4, :cond_19

    .line 585
    iget-object v1, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mTV_banner:Landroid/widget/TextView;

    const v4, 0x7f0a02e7

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_18

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v13}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v4, 0x0

    return-object v4

    :cond_18
    const/4 v4, 0x0

    if-eqz v1, :cond_12

    .line 594
    iget-object v5, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_19
    const/4 v4, 0x0

    .line 596
    iget-object v1, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    sget-object v5, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Header:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    if-ne v1, v5, :cond_12

    .line 597
    iget-object v1, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0d003f

    invoke-virtual {v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_1a

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v13}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v4

    .line 603
    :cond_1a
    iget-object v4, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v13, 0x0

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 610
    iget-object v6, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCredentialDisplayProperties:Ljava/util/HashMap;

    if-eqz v6, :cond_1b

    iget-object v7, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 612
    iget-object v6, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCredentialDisplayProperties:Ljava/util/HashMap;

    iget-object v7, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 613
    invoke-direct {v0, v4, v6}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->applyDisplayProperties(Landroid/view/View;Ljava/util/Map;)Landroid/view/View;

    move-result-object v4

    .line 617
    :cond_1b
    iget-boolean v6, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isEnabled:Z

    if-nez v6, :cond_1d

    const/4 v6, 0x0

    .line 618
    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 620
    instance-of v7, v4, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v7, :cond_1d

    move-object v7, v4

    check-cast v7, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v12

    if-eqz v12, :cond_1d

    .line 622
    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 630
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v13, v6, :cond_1c

    .line 631
    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_7

    .line 633
    :cond_1c
    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_1d
    :goto_7
    add-int/lit8 v13, v13, 0x1

    .line 638
    iget-object v6, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 641
    :cond_1e
    iget-object v1, v11, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    sget-object v4, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Password:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    if-ne v1, v4, :cond_20

    .line 642
    iget-object v1, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    goto :goto_9

    :cond_1f
    :goto_8
    const v5, 0x7f0d003f

    :cond_20
    :goto_9
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    const v4, 0x7f0d003f

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 648
    :cond_21
    iget-object v1, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-boolean v1, v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->hasEnrollmentCA:Z

    if-eqz v1, :cond_22

    .line 649
    iget-object v1, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d002e

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_22

    .line 652
    iget-object v2, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->button_cert_enroll_listen:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    iget-object v2, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_22
    const/4 v1, -0x1

    if-eq v1, v9, :cond_27

    .line 660
    iget-object v1, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mInflater:Landroid/view/LayoutInflater;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d00b7

    invoke-virtual {v1, v4, v2, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-nez v1, :cond_23

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v13}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_23
    const v2, 0x7f0a009e

    .line 666
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mShowPasswordCheckbox:Landroid/widget/CheckBox;

    if-nez v2, :cond_24

    .line 668
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Could not find cb_show_password after inflation."

    invoke-static {v1, v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v13}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_24
    const v4, 0x7f1100fb

    .line 673
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v2, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mShowPasswordCheckbox:Landroid/widget/CheckBox;

    iget-object v4, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->show_password_listen:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a009d

    .line 676
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mSaveCredentialsCheckbox:Landroid/widget/CheckBox;

    if-nez v2, :cond_25

    .line 678
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Could not find cb_save_credentials after inflation."

    invoke-static {v1, v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v13}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    .line 683
    :cond_25
    iget-object v2, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-boolean v2, v2, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->allowSaveCredentials:Z

    if-eqz v2, :cond_26

    .line 684
    iget-object v2, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mSaveCredentialsCheckbox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 685
    iget-object v2, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-boolean v2, v2, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->shouldSaveCredentials:Z

    if-eqz v2, :cond_26

    .line 686
    iget-object v2, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mSaveCredentialsCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 690
    :cond_26
    iget-object v2, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    move-object/from16 v1, p1

    if-eqz v1, :cond_27

    const-string v2, "show_password"

    .line 693
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->showPassword(Z)V

    .line 697
    :cond_27
    iget-object v1, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mTV_banner:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 699
    iget-object v1, v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCredentialContainer:Landroid/widget/LinearLayout;

    return-object v1
.end method

.method private showPassword(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 138
    :goto_0
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    aget-object v1, v1, v0

    .line 141
    iget-boolean v2, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isVisible:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Password:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    if-ne v2, v3, :cond_1

    .line 142
    iget-object v2, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCredHash:Ljava/util/Hashtable;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/16 v2, 0x91

    goto :goto_1

    :cond_0
    const/16 v2, 0x81

    .line 151
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private submitCredentials()V
    .locals 5

    .line 302
    iget-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mSaveCredentialsCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mSaveCredentialsCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->shouldSaveCredentials:Z

    :cond_0
    const/4 v0, 0x0

    .line 306
    :goto_0
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 307
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    aget-object v1, v1, v0

    .line 309
    iget-boolean v2, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isVisible:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Input:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    if-ne v2, v3, :cond_1

    .line 310
    iget-object v2, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCredHash:Ljava/util/Hashtable;

    iget-object v3, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    goto/16 :goto_3

    .line 311
    :cond_1
    iget-boolean v2, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isVisible:Z

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Password:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    if-ne v2, v3, :cond_2

    .line 312
    iget-object v2, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCredHash:Ljava/util/Hashtable;

    iget-object v3, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    .line 314
    iput-object v2, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    goto :goto_3

    .line 316
    :cond_2
    iget-boolean v2, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isVisible:Z

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Combo:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    if-ne v2, v3, :cond_5

    iget-object v2, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboValues:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 317
    iget-object v2, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCredHash:Ljava/util/Hashtable;

    iget-object v3, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    const/4 v3, 0x0

    .line 318
    iput-object v3, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    const/4 v3, -0x1

    .line 319
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->getListSelection()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 320
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->getListSelection()I

    move-result v2

    .line 322
    iget-object v3, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboKeys:[Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboKeys:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboKeys:[Ljava/lang/String;

    aget-object v2, v3, v2

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v3, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->comboValues:[Ljava/lang/String;

    aget-object v2, v3, v2

    .line 323
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 324
    iput-object v2, v1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 330
    :cond_6
    iget-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCallbackHandler:Lcom/cisco/anyconnect/ui/CredentialPromptFragment$CredentialPromptCallback;

    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$CredentialPromptCallback;->OnCredentialSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    return-void
.end method

.method private updateGroupDropdownSelectorSize()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->autoSpCombo:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 376
    new-instance v1, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$5;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$5;-><init>(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cacheCredentials(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCredHash:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 267
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 271
    iget-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 272
    iget-boolean v5, v4, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isVisible:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Input:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    iget-object v6, v4, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    if-eq v5, v6, :cond_1

    sget-object v5, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Password:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    iget-object v6, v4, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    if-ne v5, v6, :cond_2

    .line 275
    :cond_1
    iget-object v5, v4, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 276
    iget-object v5, v4, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->name:Ljava/lang/String;

    iget-object v4, v4, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCredHash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 284
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 285
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 286
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 287
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 288
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 293
    :cond_5
    iget-object p1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mSaveCredentialsCheckbox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 294
    iget-object p1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mSaveCredentialsCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    return p1

    :cond_6
    :goto_2
    return v1
.end method

.method synthetic lambda$new$0$com-cisco-anyconnect-ui-CredentialPromptFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "CredentialPromptFragment"

    const-string p2, "onclick"

    .line 115
    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->submitCredentials()V

    return-void
.end method

.method synthetic lambda$onCreateDialog$1$com-cisco-anyconnect-ui-CredentialPromptFragment(Landroid/view/View;)V
    .locals 1

    const-string p1, "CredentialPromptFragment"

    const-string v0, "onclick"

    .line 247
    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->submitCredentials()V

    return-void
.end method

.method synthetic lambda$onCreateDialog$2$com-cisco-anyconnect-ui-CredentialPromptFragment(Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p2, -0x1

    .line 245
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 246
    new-instance p2, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$$ExternalSyntheticLambda1;-><init>(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "CredentialPromptFragment"

    const-string v0, "onCancel"

    .line 129
    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->dismiss()V

    .line 131
    iget-object p1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCallbackHandler:Lcom/cisco/anyconnect/ui/CredentialPromptFragment$CredentialPromptCallback;

    iget-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    invoke-interface {p1, v0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$CredentialPromptCallback;->OnCredentialCancel(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 704
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 707
    invoke-direct {p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->updateGroupDropdownSelectorSize()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "CredentialPromptFragment"

    const-string v1, "onCreate"

    .line 159
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    const-string v0, "CredentialPromptFragment"

    const-string v1, "onCreateDialog"

    .line 169
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.cisco.anyconnect.vpn.android.AUTHENTICATION_SHOW_KEY_USER_PROMPTS"

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iput-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    if-nez p1, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 177
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iput-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    goto :goto_0

    .line 179
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 180
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_0
    const-string v0, "CredentialDisplayPropterties"

    .line 185
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCredentialDisplayProperties:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 188
    iput v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mSpinnerCreationFlag:I

    .line 189
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCredHash:Ljava/util/Hashtable;

    .line 191
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d003e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCredentialContainer:Landroid/widget/LinearLayout;

    .line 193
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d003d

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mTV_banner:Landroid/widget/TextView;

    .line 196
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d0042

    iget-object v4, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCredentialContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0104

    .line 197
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    const v2, 0x7f11012d

    if-nez v1, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v3

    .line 203
    :cond_2
    iget-object v4, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0d0040

    invoke-virtual {v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0a0102

    .line 204
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mLinearLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_3

    .line 206
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v3

    .line 210
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mTGlist:Ljava/util/List;

    .line 212
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->genCredDialog(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 214
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f120131

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 215
    invoke-virtual {v1, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const v1, 0x7f11003c

    .line 216
    invoke-virtual {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    .line 218
    iget-boolean v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mShowSubmitButton:Z

    if-eqz v1, :cond_5

    .line 219
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->submitButtonName:Ljava/lang/String;

    if-nez v1, :cond_4

    const v1, 0x7f110221

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->submitButtonName:Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->button_ok_listen:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 223
    :cond_5
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->cancelButtonLabel:Ljava/lang/String;

    if-nez v1, :cond_6

    const v1, 0x7f110050

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->cancelButtonLabel:Ljava/lang/String;

    .line 224
    :goto_2
    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->STATUS:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    iget-object v3, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v3, v3, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    if-ne v2, v3, :cond_7

    const v1, 0x7f1100e5

    .line 225
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 228
    :cond_7
    iget-object v2, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->button_listen:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 231
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->neutralButtonLabel:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 232
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->neutralButtonLabel:Ljava/lang/String;

    iget-object v2, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->button_listen:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 236
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 237
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 243
    iget-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    iget-boolean v0, v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->isAutoSubmit:Z

    if-eqz v0, :cond_9

    .line 244
    new-instance v0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$$ExternalSyntheticLambda2;-><init>(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_9
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "OnDestroy"

    .line 750
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    .line 751
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "onSaveInstanceState"

    .line 739
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    .line 740
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 741
    iget-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mShowPasswordCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    const-string v1, "show_password"

    .line 742
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const-string v0, "com.cisco.anyconnect.vpn.android.AUTHENTICATION_SHOW_KEY_USER_PROMPTS"

    .line 744
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mPromptInfo:Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CredentialDisplayPropterties"

    .line 745
    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCredentialDisplayProperties:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public setCredentialCallback(Lcom/cisco/anyconnect/ui/CredentialPromptFragment$CredentialPromptCallback;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mCallbackHandler:Lcom/cisco/anyconnect/ui/CredentialPromptFragment$CredentialPromptCallback;

    return-void
.end method

.method public setShowSubmitButton(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->mShowSubmitButton:Z

    return-void
.end method

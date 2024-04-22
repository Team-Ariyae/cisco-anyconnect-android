.class public Lcom/cisco/umbrella/ui/IdentityDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "IdentityDialogFragment.java"


# static fields
.field private static TAG:Ljava/lang/String; = "IdentityDialogFragment"

.field private static buttonCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private static buttonOkListener:Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private alertDialog:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

.field private binding:Lcom/cisco/umbrella/databinding/IdentitypopupBinding;

.field private dialog:Landroidx/appcompat/app/AlertDialog;

.field private final onTextChanged:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 77
    new-instance v0, Lcom/cisco/umbrella/ui/IdentityDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/cisco/umbrella/ui/IdentityDialogFragment$1;-><init>(Lcom/cisco/umbrella/ui/IdentityDialogFragment;)V

    iput-object v0, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->onTextChanged:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/cisco/umbrella/ui/IdentityDialogFragment;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/cisco/umbrella/ui/IdentityDialogFragment;Ljava/lang/String;)Z
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->isValidEmail(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/cisco/umbrella/ui/IdentityDialogFragment;)Lcom/cisco/umbrella/databinding/IdentitypopupBinding;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->binding:Lcom/cisco/umbrella/databinding/IdentitypopupBinding;

    return-object p0
.end method

.method public static getInstance(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/cisco/umbrella/ui/IdentityDialogFragment;
    .locals 0

    .line 41
    sput-object p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->buttonOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 42
    sput-object p1, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->buttonCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 43
    new-instance p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment;

    invoke-direct {p0}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;-><init>()V

    return-object p0
.end method

.method private isValidEmail(Ljava/lang/String;)Z
    .locals 1

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    const/16 v0, 0x32

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private sendBroadCast(Landroid/content/Intent;)V
    .locals 4

    .line 127
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendBroadCast invoked with intent:: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.cisco.anyconnect.vpn.android.avf.permission.SEND_UMBRELLA_BROADCAST_PERMISSION"

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelPop()V
    .locals 3

    .line 119
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->TAG:Ljava/lang/String;

    const-string v2, "cancelPop invoked:: "

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "unmanagedUserId"

    const-string v2, ""

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.cisco.umbrella.android.USER_IDENTITY_UNMANAGED"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-direct {p0, v0}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->sendBroadCast(Landroid/content/Intent;)V

    return-void
.end method

.method public getBinding()Lcom/cisco/umbrella/databinding/IdentitypopupBinding;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->binding:Lcom/cisco/umbrella/databinding/IdentitypopupBinding;

    return-object v0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 114
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 115
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v0, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCancel Fragment Listener"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 49
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v0, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreateDialog invoked::"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/umbrella/databinding/IdentitypopupBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/cisco/umbrella/databinding/IdentitypopupBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->binding:Lcom/cisco/umbrella/databinding/IdentitypopupBinding;

    .line 52
    invoke-virtual {p1}, Lcom/cisco/umbrella/databinding/IdentitypopupBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    .line 54
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/cisco/umbrella/R$style;->MaterialAlertDialog_Rounded:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->alertDialog:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 55
    invoke-virtual {v0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 56
    iget-object p1, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->alertDialog:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    sget v0, Lcom/cisco/umbrella/R$string;->umbrella_dialog_title:I

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 57
    iget-object p1, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->alertDialog:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    sget v0, Lcom/cisco/umbrella/R$string;->ok:I

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->buttonOkListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 58
    iget-object p1, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->alertDialog:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    sget v0, Lcom/cisco/umbrella/R$string;->cancel:I

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->buttonCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 60
    iget-object p1, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->alertDialog:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 63
    iget-object p1, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->binding:Lcom/cisco/umbrella/databinding/IdentitypopupBinding;

    iget-object p1, p1, Lcom/cisco/umbrella/databinding/IdentitypopupBinding;->inputtextview:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v0, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->onTextChanged:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    iget-object p1, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 107
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v0, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView invoked::"

    invoke-static {p3, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget p3, Lcom/cisco/umbrella/R$layout;->identitypopup:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 133
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->TAG:Ljava/lang/String;

    const-string v2, "onDestroyView of identitypopup invoked:: "

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->binding:Lcom/cisco/umbrella/databinding/IdentitypopupBinding;

    return-void
.end method

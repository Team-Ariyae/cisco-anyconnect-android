.class Lcom/cisco/umbrella/ui/IdentityDialogFragment$1;
.super Ljava/lang/Object;
.source "IdentityDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/ui/IdentityDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/ui/IdentityDialogFragment;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/ui/IdentityDialogFragment;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment$1;->this$0:Lcom/cisco/umbrella/ui/IdentityDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment$1;->this$0:Lcom/cisco/umbrella/ui/IdentityDialogFragment;

    invoke-static {v0}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->access$000(Lcom/cisco/umbrella/ui/IdentityDialogFragment;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment$1;->this$0:Lcom/cisco/umbrella/ui/IdentityDialogFragment;

    invoke-static {v1, p1}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->access$100(Lcom/cisco/umbrella/ui/IdentityDialogFragment;Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment$1;->this$0:Lcom/cisco/umbrella/ui/IdentityDialogFragment;

    invoke-static {p1}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->access$200(Lcom/cisco/umbrella/ui/IdentityDialogFragment;)Lcom/cisco/umbrella/databinding/IdentitypopupBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/cisco/umbrella/databinding/IdentitypopupBinding;->inputlayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 94
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment$1;->this$0:Lcom/cisco/umbrella/ui/IdentityDialogFragment;

    invoke-static {p1}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->access$200(Lcom/cisco/umbrella/ui/IdentityDialogFragment;)Lcom/cisco/umbrella/databinding/IdentitypopupBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/cisco/umbrella/databinding/IdentitypopupBinding;->inputlayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 98
    iget-object p1, p0, Lcom/cisco/umbrella/ui/IdentityDialogFragment$1;->this$0:Lcom/cisco/umbrella/ui/IdentityDialogFragment;

    invoke-static {p1}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->access$200(Lcom/cisco/umbrella/ui/IdentityDialogFragment;)Lcom/cisco/umbrella/databinding/IdentitypopupBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/cisco/umbrella/databinding/IdentitypopupBinding;->inputlayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v2, Lcom/cisco/umbrella/R$string;->umbrella_dialog_helper_text:I

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

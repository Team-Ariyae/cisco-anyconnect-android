.class public Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;
.super Landroid/app/DialogFragment;
.source "YubikeyPINFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$YubikeyPINCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$YubikeyPINCallback;

.field private mMessage:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;)Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$YubikeyPINCallback;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;->mCallback:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$YubikeyPINCallback;

    return-object p0
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$YubikeyPINCallback;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;->mCallback:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$YubikeyPINCallback;

    .line 45
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;->mMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 51
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;->setRetainInstance(Z)V

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;->setCancelable(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 58
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d00da

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0317

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120131

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 65
    invoke-virtual {v0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f11003c

    .line 66
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f110050

    .line 67
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$2;

    invoke-direct {v3, p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f110221

    .line 76
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$1;

    invoke-direct {v3, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 87
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

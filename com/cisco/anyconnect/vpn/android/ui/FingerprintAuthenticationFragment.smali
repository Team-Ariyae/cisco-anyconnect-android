.class public Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;
.super Landroid/app/DialogFragment;
.source "FingerprintAuthenticationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$FingerprintAuthenticationCallback;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "FingerprintAuthenticationFragment"


# instance fields
.field private mAuthCallback:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$FingerprintAuthenticationCallback;

.field private mCallback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

.field private mCancellationSignal:Landroidx/core/os/CancellationSignal;

.field private mDescription:Ljava/lang/String;

.field private mFingerprintManager:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

.field private mIcon:Landroid/widget/ImageView;

.field private mIsVisible:Z

.field private mStatusText:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAuthCallback(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;)Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$FingerprintAuthenticationCallback;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mAuthCallback:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$FingerprintAuthenticationCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIcon(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVisible(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mIsVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusText(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mStatusText:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$FingerprintAuthenticationCallback;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mIsVisible:Z

    .line 147
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mCallback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    .line 58
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mFingerprintManager:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    .line 59
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mAuthCallback:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$FingerprintAuthenticationCallback;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "FingerprintAuthenticationFragment"

    const-string v0, "onCancel"

    .line 142
    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mAuthCallback:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$FingerprintAuthenticationCallback;

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$FingerprintAuthenticationCallback;->OnFingerprintAuthFailure()V

    .line 144
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 65
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0059

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0173

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0174

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mStatusText:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    const v0, 0x7f0a0171

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120131

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 82
    invoke-virtual {v0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const v1, 0x7f11003c

    .line 83
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const v1, 0x7f110050

    .line 84
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$1;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;)V

    invoke-virtual {p1, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 93
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 94
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f110146

    .line 97
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$2;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 109
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    const-string v0, "FingerprintAuthenticationFragment"

    const-string v1, "onPause"

    .line 129
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 131
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroidx/core/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mIsVisible:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 8

    const-string v0, "FingerprintAuthenticationFragment"

    const-string v1, "onResume"

    .line 117
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 119
    new-instance v5, Landroidx/core/os/CancellationSignal;

    invoke-direct {v5}, Landroidx/core/os/CancellationSignal;-><init>()V

    iput-object v5, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mIsVisible:Z

    .line 121
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mFingerprintManager:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mCallback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->authenticate(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V

    .line 122
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0800ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f11014a

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007f

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected setDescription(Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->mDescription:Ljava/lang/String;

    return-void
.end method

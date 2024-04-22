.class public Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;
.super Ljava/lang/Object;
.source "PopupWithHide.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMessage:Ljava/lang/String;

.field private mPosClickIntent:Landroid/content/Intent;

.field private mPreferenceKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;->mMessage:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;->mPreferenceKey:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;->mPosClickIntent:Landroid/content/Intent;

    .line 49
    iput-object p4, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public createAndShowDialog()Z
    .locals 9

    .line 61
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;->mContext:Landroid/content/Context;

    const v1, 0x7f11003c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110221

    .line 62
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f110050

    .line 63
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;->mMessage:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v0, "Title or message text was null, cannot show popup"

    .line 67
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return v4

    .line 70
    :cond_0
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;->mPreferenceKey:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v0, "Preference key is missing. Cannot show popup."

    .line 71
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return v4

    .line 76
    :cond_1
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0d00b0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0a023e

    .line 79
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    if-nez v5, :cond_2

    const-string v0, "Unexpected GUI Error"

    .line 81
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return v4

    :cond_2
    const v4, 0x7f110124

    .line 84
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v4, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v5}, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;Landroid/widget/CheckBox;)V

    .line 99
    new-instance v5, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v7, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;->mContext:Landroid/content/Context;

    const v8, 0x7f120131

    invoke-direct {v5, v7, v8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    iget-object v7, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;->mMessage:Ljava/lang/String;

    .line 100
    invoke-virtual {v5, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v5

    .line 101
    invoke-virtual {v5, v1, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 102
    invoke-virtual {v1, v2, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 104
    invoke-virtual {v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Showing Popup With Hide: title= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", message= "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;->mMessage:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$createAndShowDialog$0$com-cisco-anyconnect-vpn-android-ui-view-PopupWithHide(Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 90
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-static {p2, p3, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->SetUserPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 92
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;->mPosClickIntent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Launching finish Intent: action="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;->mPosClickIntent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;->mPosClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.class public Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;
.super Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;
.source "AnyConnectDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference$AnyConnectPreferenceOnClickListener;


# instance fields
.field private mBuilder:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

.field private mContext:Landroid/content/Context;

.field private mDialogLayoutResId:I

.field private mIsDialogShowing:Z

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 56
    iput p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->mDialogLayoutResId:I

    .line 65
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->SetAnyConnectPreferenceOnClickListener(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference$AnyConnectPreferenceOnClickListener;)V

    .line 67
    iput-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->mIsDialogShowing:Z

    return-void
.end method

.method private setSoftKeyboard(Landroid/app/Dialog;)V
    .locals 1

    .line 178
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public UpdateFromPersistenceManager()V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->UpdateSummary()V

    return-void
.end method

.method public getDialogLayoutResource()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->mDialogLayoutResId:I

    return v0
.end method

.method public onAnyConnectPreferenceClick(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;)V
    .locals 2

    .line 113
    iget-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->mIsDialogShowing:Z

    if-nez p1, :cond_0

    .line 115
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "AnyConnectDialogPreference"

    const-string v1, "Onclick"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->mIsDialogShowing:Z

    const/4 p1, 0x0

    .line 117
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->showDialog(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 100
    iput p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->mWhichButtonClicked:I

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .line 185
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->mDialogLayoutResId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 190
    iget v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 p1, 0x0

    .line 105
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->mIsDialogShowing:Z

    .line 106
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->onDialogClosed(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->UpdateSummary()V

    return-void
.end method

.method protected onPrepareDialogBuilder(Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;)V
    .locals 0

    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->mDialogLayoutResId:I

    return-void
.end method

.method protected shouldShowSoftKeyboardOnDialogOpen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, -0x2

    .line 130
    iput v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->mWhichButtonClicked:I

    .line 131
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f120131

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->mBuilder:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 133
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->GetTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 134
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->mBuilder:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f110221

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 135
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->mBuilder:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f110050

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 137
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 141
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->mBuilder:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->mBuilder:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->onPrepareDialogBuilder(Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;)V

    .line 147
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->mBuilder:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 150
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->shouldShowSoftKeyboardOnDialogOpen()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 155
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->setSoftKeyboard(Landroid/app/Dialog;)V

    .line 158
    :cond_2
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 159
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

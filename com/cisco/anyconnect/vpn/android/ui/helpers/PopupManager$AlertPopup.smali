.class public Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;
.super Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;
.source "PopupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertPopup"
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "AlertPopup"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mIsCancelable:Z

.field private final mMsg:Ljava/lang/String;

.field private final mNegativeLabel:Ljava/lang/String;

.field private final mNeutralIntent:Landroid/content/Intent;

.field private final mNeutralLabel:Ljava/lang/String;

.field private final mPositiveLabel:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeutralIntent(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mNeutralIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDialog(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;ZZLjava/lang/String;)V
    .locals 0

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-eqz p6, :cond_1

    .line 114
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mTitle:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mMsg:Ljava/lang/String;

    .line 116
    iput-object p6, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mContext:Landroid/content/Context;

    .line 117
    iput-object p4, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mNeutralLabel:Ljava/lang/String;

    .line 118
    iput-object p5, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mNeutralIntent:Landroid/content/Intent;

    if-eqz p7, :cond_0

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const p1, 0x7f110221

    .line 119
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mPositiveLabel:Ljava/lang/String;

    .line 120
    iput-boolean p8, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mIsCancelable:Z

    .line 121
    iput-object p9, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mNegativeLabel:Ljava/lang/String;

    return-void

    .line 111
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected null input."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected getId()Ljava/lang/Object;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method protected show()V
    .locals 4

    .line 134
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mContext:Landroid/content/Context;

    const v2, 0x7f120131

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 136
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 137
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0d00af

    const/4 v3, 0x0

    .line 138
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 139
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mMsg:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v3, 0xf

    .line 140
    invoke-static {v2, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 141
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 143
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 145
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mIsCancelable:Z

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 147
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mPositiveLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 149
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$1;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mNegativeLabel:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 165
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$2;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 179
    :cond_1
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mIsCancelable:Z

    if-eqz v1, :cond_2

    .line 181
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$3;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->mNeutralLabel:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 197
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$4;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$4;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 223
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

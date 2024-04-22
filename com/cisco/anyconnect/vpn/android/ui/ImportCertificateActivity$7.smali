.class Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$7;
.super Ljava/lang/Object;
.source "ImportCertificateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->ImportAlertCB(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

.field final synthetic val$alertText:Ljava/lang/String;

.field final synthetic val$negativeResponseHandler:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$positiveResponseHandler:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$7;->val$alertText:Ljava/lang/String;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$7;->val$positiveResponseHandler:Landroid/content/DialogInterface$OnClickListener;

    iput-object p4, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$7;->val$negativeResponseHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 582
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    const v2, 0x7f120131

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 584
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$7;->val$alertText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const/4 v1, 0x0

    .line 585
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f110343

    .line 586
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$7;->val$positiveResponseHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f1101fc

    .line 587
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$7;->val$negativeResponseHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 588
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->-$$Nest$fputmDialog(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;Landroidx/appcompat/app/AlertDialog;)V

    .line 589
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->-$$Nest$fgetmDialog(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

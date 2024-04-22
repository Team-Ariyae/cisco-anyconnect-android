.class Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$9;
.super Ljava/lang/Object;
.source "URIHandlerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->ImportAlertCB(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

.field final synthetic val$alertText:Ljava/lang/String;

.field final synthetic val$negativeResponseHandler:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$positiveResponseHandler:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1711
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$9;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$9;->val$alertText:Ljava/lang/String;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$9;->val$positiveResponseHandler:Landroid/content/DialogInterface$OnClickListener;

    iput-object p4, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$9;->val$negativeResponseHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1714
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$9;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    const v2, 0x7f120131

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 1715
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$9;->val$alertText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1716
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f110343

    .line 1717
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$9;->val$positiveResponseHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f1101fc

    .line 1718
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$9;->val$negativeResponseHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1719
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 1720
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$9;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fputmDialog(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;Landroidx/appcompat/app/AlertDialog;)V

    .line 1721
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$9;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fgetmDialog(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

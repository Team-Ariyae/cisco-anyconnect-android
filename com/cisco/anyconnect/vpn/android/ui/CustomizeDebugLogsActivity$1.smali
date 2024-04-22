.class Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1;
.super Ljava/lang/Object;
.source "CustomizeDebugLogsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->setUpButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;

.field final synthetic val$alertDialog:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1;->val$alertDialog:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const p1, 0x7f110221

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->-$$Nest$msaveConfiguration(Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1;->val$alertDialog:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f110109

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1$1;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1;)V

    .line 125
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1;->val$alertDialog:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f110101

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1$2;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1;)V

    .line 139
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_0
    return-void
.end method

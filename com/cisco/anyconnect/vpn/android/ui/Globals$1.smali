.class Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;
.super Ljava/lang/Object;
.source "Globals.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$neutralButtonLaunchIntent:Landroid/content/Intent;

.field final synthetic val$neutralButtonText:Ljava/lang/String;

.field final synthetic val$positiveButtonText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;->val$neutralButtonText:Ljava/lang/String;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;->val$neutralButtonLaunchIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;->val$positiveButtonText:Ljava/lang/String;

    iput-object p5, p0, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 307
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;->val$neutralButtonText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;->val$neutralButtonLaunchIntent:Landroid/content/Intent;

    if-nez v1, :cond_1

    :cond_0
    const v0, 0x7f11019e

    .line 309
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 310
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cisco.anyconnect.vpn.android.LOGGING_SHOW_INTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "LoggingKeyMessage"

    .line 311
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    :cond_1
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;->val$positiveButtonText:Ljava/lang/String;

    if-nez v2, :cond_2

    const v2, 0x7f110221

    .line 324
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 331
    :cond_2
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->-$$Nest$sfgetmTerminalErrorDialogs()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Dialog;

    const-string v4, "Globals"

    if-eqz v3, :cond_3

    .line 336
    :try_start_0
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "Exception on Dialog Disimiss"

    invoke-static {v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_3
    :goto_0
    new-instance v3, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;->val$activity:Landroid/app/Activity;

    const v6, 0x7f120131

    invoke-direct {v3, v5, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const v5, 0x7f11003c

    .line 348
    invoke-static {v5}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 349
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;->val$message:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 351
    new-instance v5, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1$1;

    invoke-direct {v5, p0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;)V

    invoke-virtual {v3, v2, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 361
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1$2;

    invoke-direct {v2, p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;Landroid/content/Intent;)V

    invoke-virtual {v3, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 371
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1$3;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1$3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;)V

    invoke-virtual {v3, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 382
    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 383
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->-$$Nest$sfgetmTerminalErrorDialogs()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 389
    :catch_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Unexpected exception upon showing error dialog."

    invoke-static {v0, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
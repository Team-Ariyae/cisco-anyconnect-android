.class Lcom/cisco/umbrella/ui/UmbrellaFragment$5;
.super Ljava/lang/Object;
.source "UmbrellaFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/ui/UmbrellaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/ui/UmbrellaFragment;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment$5;->this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 469
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POP UP ok pressed "

    invoke-static {p2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 471
    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment$5;->this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;

    invoke-static {v0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->access$700(Lcom/cisco/umbrella/ui/UmbrellaFragment;)Lcom/cisco/umbrella/ui/IdentityDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/umbrella/ui/IdentityDialogFragment;->getBinding()Lcom/cisco/umbrella/databinding/IdentitypopupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/cisco/umbrella/databinding/IdentitypopupBinding;->inputtextview:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unmanagedUserId"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.cisco.umbrella.android.USER_IDENTITY_UNMANAGED"

    .line 472
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment$5;->this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;

    invoke-static {v0, p2}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->access$800(Lcom/cisco/umbrella/ui/UmbrellaFragment;Landroid/content/Intent;)V

    .line 474
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 475
    iget-object p1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment$5;->this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;

    invoke-static {p1}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->access$900(Lcom/cisco/umbrella/ui/UmbrellaFragment;)Landroid/app/NotificationManager;

    move-result-object p1

    const/16 p2, 0x33

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

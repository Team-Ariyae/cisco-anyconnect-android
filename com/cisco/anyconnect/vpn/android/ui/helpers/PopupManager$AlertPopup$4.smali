.class Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$4;
.super Ljava/lang/Object;
.source "PopupManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 201
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->-$$Nest$fgetmNeutralIntent(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 205
    :try_start_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->-$$Nest$fgetmContext(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->-$$Nest$fgetmNeutralIntent(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No Activity found to handle Intent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->-$$Nest$fgetmNeutralIntent(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertPopup"

    invoke-static {p2, v1, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->-$$Nest$fgetmDialog(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 215
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->-$$Nest$fgetmDialog(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 216
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->-$$Nest$fputmDialog(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;Landroid/app/AlertDialog;)V

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->finish()V

    return-void
.end method

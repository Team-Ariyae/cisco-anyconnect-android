.class Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$2;
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

    .line 166
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 169
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->-$$Nest$fgetmDialog(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->-$$Nest$fgetmDialog(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 172
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->-$$Nest$fputmDialog(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;Landroid/app/AlertDialog;)V

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;->finish()V

    return-void
.end method

.class Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$5;
.super Ljava/lang/Object;
.source "URIHandlerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->promptForAction()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 823
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 824
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fputmDialog(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;Landroidx/appcompat/app/AlertDialog;)V

    .line 825
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$mprocessAction(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)V

    return-void
.end method

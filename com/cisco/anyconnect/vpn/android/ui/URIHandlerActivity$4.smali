.class Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$4;
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

    .line 829
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 832
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 833
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fputmDialog(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;Landroidx/appcompat/app/AlertDialog;)V

    .line 834
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "URIHandlerActivity"

    const-string v1, "User declined to continue with the import."

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$mexitActivity(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;ZLjava/lang/String;)V

    return-void
.end method

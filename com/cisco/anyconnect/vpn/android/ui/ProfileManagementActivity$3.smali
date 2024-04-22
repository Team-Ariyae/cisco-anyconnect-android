.class Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$3;
.super Ljava/lang/Object;
.source "ProfileManagementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->importURIpopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

.field final synthetic val$uriStringTV:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$3;->val$uriStringTV:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 253
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$3;->val$uriStringTV:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$3;->val$uriStringTV:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->-$$Nest$msetImportURI(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

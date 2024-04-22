.class Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$2;
.super Ljava/lang/Object;
.source "LocalizationManagementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->onRequestOperation(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$op:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;Landroid/content/Intent;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$2;->val$op:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$2;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 264
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$2;->val$op:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$2;->val$data:Landroid/content/Intent;

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->-$$Nest$mrequestOperation(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;Landroid/content/Intent;)V

    return-void
.end method

.class Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$3;
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


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 273
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 274
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->-$$Nest$fputmDialog(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;Landroidx/appcompat/app/AlertDialog;)V

    return-void
.end method

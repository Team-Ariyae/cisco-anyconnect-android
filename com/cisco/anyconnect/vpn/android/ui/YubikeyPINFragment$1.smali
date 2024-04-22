.class Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$1;
.super Ljava/lang/Object;
.source "YubikeyPINFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;Landroid/view/View;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;)Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$YubikeyPINCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$1;->val$v:Landroid/view/View;

    const v0, 0x7f0a0316

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$YubikeyPINCallback;->setPIN(Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;->dismiss()V

    return-void
.end method

.class Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$2;
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


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;)Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$YubikeyPINCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$YubikeyPINCallback;->onCancel()V

    .line 73
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;->dismiss()V

    return-void
.end method

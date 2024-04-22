.class Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$2;
.super Ljava/lang/Object;
.source "FingerprintAuthenticationFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->-$$Nest$fgetmAuthCallback(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;)Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$FingerprintAuthenticationCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$FingerprintAuthenticationCallback;->ShowBackupAuth()V

    .line 103
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->dismiss()V

    return-void
.end method

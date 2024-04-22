.class Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3$1;
.super Ljava/lang/Object;
.source "FingerprintAuthenticationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;->onAuthenticationSucceeded(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->-$$Nest$fgetmAuthCallback(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;)Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$FingerprintAuthenticationCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$FingerprintAuthenticationCallback;->OnFingerprintAuthSuccess()V

    .line 178
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->dismissAllowingStateLoss()V

    return-void
.end method

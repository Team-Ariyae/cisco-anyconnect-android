.class Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity$1;
.super Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
.source "FingerprintAuthenticationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;

    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Biometric auth error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1, p2}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 75
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->OnFingerprintAuthFailure()V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    const-string v0, "Biometric auth failed"

    .line 90
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-super {p0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationFailed()V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 1

    const-string v0, "Biometric auth succeeded"

    .line 82
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-super {p0, p1}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    .line 84
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->OnFingerprintAuthSuccess()V

    return-void
.end method

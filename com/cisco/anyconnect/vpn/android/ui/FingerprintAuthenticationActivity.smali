.class public Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "FingerprintAuthenticationActivity.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$FingerprintAuthenticationCallback;


# static fields
.field private static final BACKUP_AUTH_REQUEST_CODE:I = 0x7

.field private static final ENTITY_NAME:Ljava/lang/String; = "FingerprintAuthenticationActivity"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mReceiver:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public OnFingerprintAuthFailure()V
    .locals 3

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->setResult(I)V

    .line 136
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->mReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 138
    invoke-virtual {v1, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->finish()V

    return-void
.end method

.method public OnFingerprintAuthSuccess()V
    .locals 3

    const/4 v0, -0x1

    .line 125
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->setResult(I)V

    .line 126
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->mReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 128
    invoke-virtual {v1, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->finish()V

    return-void
.end method

.method public ShowBackupAuth()V
    .locals 3

    const-string v0, "keyguard"

    .line 145
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 148
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "FingerprintAuthenticationActivity"

    const-string v2, "Null KeyguardManager"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->OnFingerprintAuthFailure()V

    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f110147

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const v2, 0x7f11003c

    .line 162
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->OnFingerprintAuthSuccess()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x7

    .line 170
    invoke-virtual {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, 0x7

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p1, p2, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->OnFingerprintAuthSuccess()V

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->OnFingerprintAuthFailure()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "resultReceiver"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->mReceiver:Landroid/os/ResultReceiver;

    .line 55
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->mDescription:Ljava/lang/String;

    .line 57
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p1, v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->OnFingerprintAuthFailure()V

    return-void

    .line 62
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_1

    .line 65
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 66
    new-instance v0, Landroidx/biometric/BiometricPrompt;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity$1;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;)V

    invoke-direct {v0, p0, p1, v1}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    .line 95
    new-instance p1, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    invoke-direct {p1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;-><init>()V

    const v1, 0x7f11003c

    .line 96
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->mDescription:Ljava/lang/String;

    .line 97
    invoke-virtual {p1, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object p1

    const v1, 0x800f

    .line 98
    invoke-virtual {p1, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setAllowedAuthenticators(I)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setConfirmationRequired(Z)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->build()Landroidx/biometric/BiometricPrompt$PromptInfo;

    move-result-object p1

    .line 102
    invoke-virtual {v0, p1}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-static {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 107
    invoke-virtual {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;

    invoke-direct {v0, p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;-><init>(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$FingerprintAuthenticationCallback;)V

    .line 110
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->mDescription:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 112
    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->setDescription(Ljava/lang/String;)V

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v1, "fingerprint_auth_dialog"

    invoke-virtual {v0, p1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_3
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationActivity;->ShowBackupAuth()V

    :goto_0
    return-void
.end method

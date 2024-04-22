.class Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;
.super Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.source "FingerprintAuthenticationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;
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

    .line 147
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;

    invoke-direct {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;-><init>()V

    return-void
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->-$$Nest$fgetmIcon(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0800ac

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->-$$Nest$fgetmStatusText(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->-$$Nest$fgetmStatusText(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060081

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    .line 150
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fingerprint auth error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintAuthenticationFragment"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-super {p0, p1, p2}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->-$$Nest$fgetmIsVisible(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 155
    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;->showError(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .line 185
    invoke-super {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationFailed()V

    const v0, 0x7f11014b

    .line 186
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;->showError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    .line 161
    invoke-super {p0, p1, p2}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 162
    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;->showError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
    .locals 3

    .line 167
    invoke-super {p0, p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationSucceeded(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V

    .line 169
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->-$$Nest$fgetmIcon(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0800ad

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->-$$Nest$fgetmStatusText(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f11014c

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->-$$Nest$fgetmStatusText(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060080

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;->-$$Nest$fgetmIcon(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/FingerprintAuthenticationFragment$3;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

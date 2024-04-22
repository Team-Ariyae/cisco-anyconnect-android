.class Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CredentialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.cisco.anyconnect.vpn.android.CREDENTIAL_ACTIVITY_CLOSE_INTENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->finish()V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.cisco.anyconnect.vpn.android.CREDENTIAL_ACTIVITY_SSO_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "sso_token"

    .line 99
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {p2, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$monSSOComplete(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown intent:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

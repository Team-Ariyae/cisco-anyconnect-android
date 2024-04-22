.class Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$1;
.super Landroid/os/ResultReceiver;
.source "CredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->getSavedCredentials(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;

.field final synthetic val$hostname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$1;->val$hostname:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 228
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$1;->val$hostname:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->-$$Nest$mgetCredentials(Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.class Lcom/cisco/anyconnect/ui/CredentialPromptFragment$3;
.super Ljava/lang/Object;
.source "CredentialPromptFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/ui/CredentialPromptFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$3;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x3

    if-eq p2, v0, :cond_1

    const/4 v0, -0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "CredentialPromptFragment"

    const-string v1, "Canceling..."

    invoke-static {p2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    .line 350
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$3;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->dismiss()V

    .line 351
    iget-object p1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$3;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->-$$Nest$fgetmCallbackHandler(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)Lcom/cisco/anyconnect/ui/CredentialPromptFragment$CredentialPromptCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$3;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-static {p2}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->-$$Nest$fgetmPromptInfo(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$CredentialPromptCallback;->OnCredentialNeutral(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    :goto_0
    return-void
.end method

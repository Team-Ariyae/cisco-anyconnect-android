.class Lcom/cisco/anyconnect/ui/CredentialPromptFragment$4;
.super Ljava/lang/Object;
.source "CredentialPromptFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 357
    iput-object p1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$4;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 360
    iget-object p1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$4;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->-$$Nest$fgetmPromptInfo(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->useEnrollmentCA:Z

    .line 361
    iget-object p1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$4;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->-$$Nest$fgetmCallbackHandler(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)Lcom/cisco/anyconnect/ui/CredentialPromptFragment$CredentialPromptCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$4;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->-$$Nest$fgetmPromptInfo(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$CredentialPromptCallback;->OnCredentialCertRequested(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    return-void
.end method

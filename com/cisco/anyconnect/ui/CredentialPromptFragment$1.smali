.class Lcom/cisco/anyconnect/ui/CredentialPromptFragment$1;
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

    .line 119
    iput-object p1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$1;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$1;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->-$$Nest$fgetmShowPasswordCheckbox(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 122
    iget-object p1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$1;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->-$$Nest$fgetmShowPasswordCheckbox(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->-$$Nest$mshowPassword(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;Z)V

    :cond_0
    return-void
.end method

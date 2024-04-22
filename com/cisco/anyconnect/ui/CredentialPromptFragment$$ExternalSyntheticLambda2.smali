.class public final synthetic Lcom/cisco/anyconnect/ui/CredentialPromptFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

.field public final synthetic f$1:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$$ExternalSyntheticLambda2;->f$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    iput-object p2, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$$ExternalSyntheticLambda2;->f$1:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$$ExternalSyntheticLambda2;->f$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    iget-object v1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$$ExternalSyntheticLambda2;->f$1:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1, p1}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->lambda$onCreateDialog$2$com-cisco-anyconnect-ui-CredentialPromptFragment(Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

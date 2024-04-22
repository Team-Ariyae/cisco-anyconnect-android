.class Lcom/cisco/anyconnect/ui/CredentialPromptFragment$2;
.super Ljava/lang/Object;
.source "CredentialPromptFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 334
    iput-object p1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$2;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 337
    iget-object p1, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$2;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->-$$Nest$fgetmCallbackHandler(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)Lcom/cisco/anyconnect/ui/CredentialPromptFragment$CredentialPromptCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$2;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-static {p2}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->-$$Nest$fgetmPromptInfo(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    move-result-object p2

    iget-object p4, p0, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$2;->this$0:Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    invoke-static {p4}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->-$$Nest$fgetmTGlist(Lcom/cisco/anyconnect/ui/CredentialPromptFragment;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment$CredentialPromptCallback;->OnGroupChange(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/cisco/anyconnect/ui/UserAgreementFragment$2;
.super Ljava/lang/Object;
.source "UserAgreementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/ui/UserAgreementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/ui/UserAgreementFragment;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/ui/UserAgreementFragment;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment$2;->this$0:Lcom/cisco/anyconnect/ui/UserAgreementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/cisco/anyconnect/ui/UserAgreementFragment$2;->this$0:Lcom/cisco/anyconnect/ui/UserAgreementFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->-$$Nest$monUserSubmit(Lcom/cisco/anyconnect/ui/UserAgreementFragment;Z)V

    return-void
.end method

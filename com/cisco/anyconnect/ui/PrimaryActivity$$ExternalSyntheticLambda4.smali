.class public final synthetic Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/cisco/anyconnect/ui/PrimaryActivity;

.field public final synthetic f$1:Landroid/widget/ImageButton;


# direct methods
.method public synthetic constructor <init>(Lcom/cisco/anyconnect/ui/PrimaryActivity;Landroid/widget/ImageButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda4;->f$0:Lcom/cisco/anyconnect/ui/PrimaryActivity;

    iput-object p2, p0, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda4;->f$1:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda4;->f$0:Lcom/cisco/anyconnect/ui/PrimaryActivity;

    iget-object v1, p0, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda4;->f$1:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1, p1}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->lambda$onWindowFocusChanged$1$com-cisco-anyconnect-ui-PrimaryActivity(Landroid/widget/ImageButton;Landroid/view/View;)V

    return-void
.end method

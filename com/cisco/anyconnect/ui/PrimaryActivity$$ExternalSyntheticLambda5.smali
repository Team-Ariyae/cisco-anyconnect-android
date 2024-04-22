.class public final synthetic Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/cisco/anyconnect/ui/PrimaryActivity;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/cisco/anyconnect/ui/PrimaryActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda5;->f$0:Lcom/cisco/anyconnect/ui/PrimaryActivity;

    iput-object p2, p0, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda5;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda5;->f$0:Lcom/cisco/anyconnect/ui/PrimaryActivity;

    iget-object v1, p0, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda5;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->lambda$onNewIntent$2$com-cisco-anyconnect-ui-PrimaryActivity(Landroid/content/Intent;)V

    return-void
.end method

.class public final synthetic Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/cisco/anyconnect/ui/PrimaryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/cisco/anyconnect/ui/PrimaryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda2;->f$0:Lcom/cisco/anyconnect/ui/PrimaryActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda2;->f$0:Lcom/cisco/anyconnect/ui/PrimaryActivity;

    invoke-virtual {v0, p1, p2}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->lambda$requestPermissions$3$com-cisco-anyconnect-ui-PrimaryActivity(Landroid/content/DialogInterface;I)V

    return-void
.end method

.class public final synthetic Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/cisco/anyconnect/ui/PrimaryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/cisco/anyconnect/ui/PrimaryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda1;->f$0:Lcom/cisco/anyconnect/ui/PrimaryActivity;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/cisco/anyconnect/ui/PrimaryActivity$$ExternalSyntheticLambda1;->f$0:Lcom/cisco/anyconnect/ui/PrimaryActivity;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

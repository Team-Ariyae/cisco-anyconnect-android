.class Lcom/cisco/umbrella/ui/UmbrellaFragment$3;
.super Ljava/lang/Object;
.source "UmbrellaFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/umbrella/ui/UmbrellaFragment;->updateContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/ui/UmbrellaFragment;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment$3;->this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 290
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.cisco.umbrella.UMBRELLA_STATISTICS_SHOW_INTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment$3;->this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;

    invoke-virtual {v0, p1}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

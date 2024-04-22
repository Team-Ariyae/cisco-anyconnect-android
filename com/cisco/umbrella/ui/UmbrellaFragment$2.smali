.class Lcom/cisco/umbrella/ui/UmbrellaFragment$2;
.super Ljava/lang/Object;
.source "UmbrellaFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/umbrella/ui/UmbrellaFragment;->onResume()V
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

    .line 198
    iput-object p1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment$2;->this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment$2;->this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;

    invoke-static {v0}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->access$200(Lcom/cisco/umbrella/ui/UmbrellaFragment;)V

    return-void
.end method

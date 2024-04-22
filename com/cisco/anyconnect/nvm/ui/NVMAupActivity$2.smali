.class Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity$2;
.super Ljava/lang/Object;
.source "NVMAupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity$2;->this$0:Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity$2;->this$0:Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->finish()V

    return-void
.end method

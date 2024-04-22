.class Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity$1;
.super Ljava/lang/Object;
.source "NVMAupActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 67
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity$1;->this$0:Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 70
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    sget v0, Lcom/cisco/anyconnect/nvm/R$id;->export_control_checkbox:I

    if-ne p1, v0, :cond_0

    .line 71
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "userpref_exportonmobiledata"

    .line 72
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    iget-object p2, p0, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity$1;->this$0:Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;

    invoke-static {p2, p1}, Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;->access$000(Lcom/cisco/anyconnect/nvm/ui/NVMAupActivity;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

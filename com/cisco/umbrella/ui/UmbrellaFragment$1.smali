.class Lcom/cisco/umbrella/ui/UmbrellaFragment$1;
.super Landroid/os/Handler;
.source "UmbrellaFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/ui/UmbrellaFragment;
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

    .line 93
    iput-object p1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment$1;->this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Handler received message.what that was unknown: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/cisco/umbrella/ui/UmbrellaFragment$1;->this$0:Lcom/cisco/umbrella/ui/UmbrellaFragment;

    invoke-static {p1}, Lcom/cisco/umbrella/ui/UmbrellaFragment;->access$000(Lcom/cisco/umbrella/ui/UmbrellaFragment;)V

    :goto_0
    return-void
.end method

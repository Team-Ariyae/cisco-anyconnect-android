.class Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;
.super Ljava/lang/Object;
.source "URIHandlerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->exitActivity(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

.field final synthetic val$launchIntent:Landroid/content/Intent;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$neutralButtonText:Ljava/lang/String;

.field final synthetic val$positiveButtonText:Ljava/lang/String;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 1445
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->val$msg:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->val$result:Z

    iput-object p4, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->val$positiveButtonText:Ljava/lang/String;

    iput-object p5, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->val$neutralButtonText:Ljava/lang/String;

    iput-object p6, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->val$launchIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1448
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fgetmExitInProgress(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1450
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fputmExitInProgress(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;Z)V

    .line 1451
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->val$msg:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1453
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->val$result:Z

    if-eqz v1, :cond_1

    .line 1455
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.ACTION_SHOW_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.cisco.anyconnect.vpn.android.POPUP_TEXT_KEY"

    .line 1456
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.POPUP_TEXT_IS_ERROR_KEY"

    .line 1457
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1458
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fgetmAllowAppExits(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x10008000

    .line 1463
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1469
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1473
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-virtual {v1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1475
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->finish()V

    goto :goto_3

    .line 1479
    :cond_1
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->val$positiveButtonText:Ljava/lang/String;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->val$neutralButtonText:Ljava/lang/String;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->val$launchIntent:Landroid/content/Intent;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_3

    .line 1485
    :cond_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->CONNECT:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fgetmAction(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    move-result-object v3

    if-eq v0, v3, :cond_4

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->DISCONNECT:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fgetmAction(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    move-result-object v3

    if-ne v0, v3, :cond_3

    goto :goto_1

    .line 1491
    :cond_3
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-virtual {v0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->setResult(I)V

    goto :goto_2

    .line 1487
    :cond_4
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "back_to_primary_activity"

    .line 1488
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1489
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-virtual {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->setResult(ILandroid/content/Intent;)V

    .line 1493
    :goto_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->finish()V

    :cond_5
    :goto_3
    return-void
.end method

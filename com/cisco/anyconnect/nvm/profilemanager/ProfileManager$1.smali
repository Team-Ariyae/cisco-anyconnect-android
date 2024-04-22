.class Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager$1;
.super Ljava/lang/Object;
.source "ProfileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager$1;->this$0:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager$1;->this$0:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->isNVMEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager$1;->this$0:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->access$002(Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;I)I

    .line 60
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager$1;->this$0:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->access$100(Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.cisco.anyconnect.nvm.NPA_PROFILE_AVAILABLE"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager$1;->this$0:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    invoke-static {v1}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->access$100(Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager$1;->this$0:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    invoke-static {v1}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->access$100(Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 66
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v1, "ProfileManager"

    const-string v2, "Profile found during rescan"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager$1;->this$0:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->access$000(Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;)I

    move-result v0

    const/4 v1, 0x3

    if-le v1, v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager$1;->this$0:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->access$008(Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;)I

    .line 69
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager$1;->this$0:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->access$300(Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager$1;->this$0:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    invoke-static {v1}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->access$200(Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

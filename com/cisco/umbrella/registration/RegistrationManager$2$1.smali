.class Lcom/cisco/umbrella/registration/RegistrationManager$2$1;
.super Ljava/lang/Object;
.source "RegistrationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/umbrella/registration/RegistrationManager$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/umbrella/registration/RegistrationManager$2;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/registration/RegistrationManager$2;Landroid/content/Intent;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager$2$1;->this$1:Lcom/cisco/umbrella/registration/RegistrationManager$2;

    iput-object p2, p0, Lcom/cisco/umbrella/registration/RegistrationManager$2$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 79
    invoke-static {}, Lcom/cisco/umbrella/util/ConfigHelper;->isCros()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager$2$1;->val$intent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager$2$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.cisoc.umbrella.android.USER_IDENTITY_SELECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager$2$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.cisco.umbrella.android.UMBRELLA_FRAGMENT_READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager$2$1;->this$1:Lcom/cisco/umbrella/registration/RegistrationManager$2;

    iget-object v0, v0, Lcom/cisco/umbrella/registration/RegistrationManager$2;->this$0:Lcom/cisco/umbrella/registration/RegistrationManager;

    invoke-static {v0}, Lcom/cisco/umbrella/registration/RegistrationManager;->access$200(Lcom/cisco/umbrella/registration/RegistrationManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager$2$1;->this$1:Lcom/cisco/umbrella/registration/RegistrationManager$2;

    iget-object v0, v0, Lcom/cisco/umbrella/registration/RegistrationManager$2;->this$0:Lcom/cisco/umbrella/registration/RegistrationManager;

    iget-object v1, p0, Lcom/cisco/umbrella/registration/RegistrationManager$2$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/umbrella/registration/RegistrationManager;->access$302(Lcom/cisco/umbrella/registration/RegistrationManager;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/registration/RegistrationManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Data received in Umbrella Service : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/umbrella/registration/RegistrationManager$2$1;->this$1:Lcom/cisco/umbrella/registration/RegistrationManager$2;

    iget-object v3, v3, Lcom/cisco/umbrella/registration/RegistrationManager$2;->this$0:Lcom/cisco/umbrella/registration/RegistrationManager;

    invoke-static {v3}, Lcom/cisco/umbrella/registration/RegistrationManager;->access$300(Lcom/cisco/umbrella/registration/RegistrationManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager$2$1;->this$1:Lcom/cisco/umbrella/registration/RegistrationManager$2;

    iget-object v0, v0, Lcom/cisco/umbrella/registration/RegistrationManager$2;->this$0:Lcom/cisco/umbrella/registration/RegistrationManager;

    invoke-static {v0}, Lcom/cisco/umbrella/registration/RegistrationManager;->access$300(Lcom/cisco/umbrella/registration/RegistrationManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/umbrella/util/ValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager$2$1;->this$1:Lcom/cisco/umbrella/registration/RegistrationManager$2;

    iget-object v0, v0, Lcom/cisco/umbrella/registration/RegistrationManager$2;->this$0:Lcom/cisco/umbrella/registration/RegistrationManager;

    iget-object v1, p0, Lcom/cisco/umbrella/registration/RegistrationManager$2$1;->this$1:Lcom/cisco/umbrella/registration/RegistrationManager$2;

    iget-object v1, v1, Lcom/cisco/umbrella/registration/RegistrationManager$2;->this$0:Lcom/cisco/umbrella/registration/RegistrationManager;

    invoke-static {v1}, Lcom/cisco/umbrella/registration/RegistrationManager;->access$300(Lcom/cisco/umbrella/registration/RegistrationManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "umbrella_user_domains"

    invoke-static {v2}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/umbrella/registration/RegistrationManager;->access$400(Lcom/cisco/umbrella/registration/RegistrationManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager$2$1;->this$1:Lcom/cisco/umbrella/registration/RegistrationManager$2;

    iget-object v0, v0, Lcom/cisco/umbrella/registration/RegistrationManager$2;->this$0:Lcom/cisco/umbrella/registration/RegistrationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cisco/umbrella/registration/RegistrationManager;->access$202(Lcom/cisco/umbrella/registration/RegistrationManager;Z)Z

    .line 90
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager$2$1;->this$1:Lcom/cisco/umbrella/registration/RegistrationManager$2;

    iget-object v0, v0, Lcom/cisco/umbrella/registration/RegistrationManager$2;->this$0:Lcom/cisco/umbrella/registration/RegistrationManager;

    invoke-static {v0}, Lcom/cisco/umbrella/registration/RegistrationManager;->access$600(Lcom/cisco/umbrella/registration/RegistrationManager;)Lcom/cisco/umbrella/registration/RegistrationScheduler;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cisco/umbrella/registration/RegistrationScheduler;->schedule(J)V

    :cond_3
    return-void

    .line 86
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager$2$1;->this$1:Lcom/cisco/umbrella/registration/RegistrationManager$2;

    iget-object v0, v0, Lcom/cisco/umbrella/registration/RegistrationManager$2;->this$0:Lcom/cisco/umbrella/registration/RegistrationManager;

    invoke-static {v0}, Lcom/cisco/umbrella/registration/RegistrationManager;->access$500(Lcom/cisco/umbrella/registration/RegistrationManager;)V

    :cond_5
    :goto_1
    return-void
.end method

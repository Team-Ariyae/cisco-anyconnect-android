.class Lcom/cisco/anyconnect/nvm/services/NVMService$1$1;
.super Ljava/lang/Object;
.source "NVMService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/nvm/services/NVMService$1;->onDeactivateProfile(Ljava/lang/String;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/nvm/services/NVMService$1;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/nvm/services/NVMService$1;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$1$1;->this$1:Lcom/cisco/anyconnect/nvm/services/NVMService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$1$1;->this$1:Lcom/cisco/anyconnect/nvm/services/NVMService$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/nvm/services/NVMService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->access$000(Lcom/cisco/anyconnect/nvm/services/NVMService;)Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$1$1;->this$1:Lcom/cisco/anyconnect/nvm/services/NVMService$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/nvm/services/NVMService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->access$000(Lcom/cisco/anyconnect/nvm/services/NVMService;)Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->isNVMEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$1$1;->this$1:Lcom/cisco/anyconnect/nvm/services/NVMService$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/nvm/services/NVMService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->access$100(Lcom/cisco/anyconnect/nvm/services/NVMService;)Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$1$1;->this$1:Lcom/cisco/anyconnect/nvm/services/NVMService$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/nvm/services/NVMService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->access$100(Lcom/cisco/anyconnect/nvm/services/NVMService;)Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;->setMeteredNetworkUserControllable(Z)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$1$1;->this$1:Lcom/cisco/anyconnect/nvm/services/NVMService$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/nvm/services/NVMService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->access$000(Lcom/cisco/anyconnect/nvm/services/NVMService;)Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->reset()V

    .line 123
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$1$1;->this$1:Lcom/cisco/anyconnect/nvm/services/NVMService$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/nvm/services/NVMService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->access$200(Lcom/cisco/anyconnect/nvm/services/NVMService;)Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->stopNVMAgent()Z

    .line 124
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$1$1;->this$1:Lcom/cisco/anyconnect/nvm/services/NVMService$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/nvm/services/NVMService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isBackgroundExecutionLimited(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$1$1;->this$1:Lcom/cisco/anyconnect/nvm/services/NVMService$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/nvm/services/NVMService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "serviceInitiatedCancel"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 127
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$1$1;->this$1:Lcom/cisco/anyconnect/nvm/services/NVMService$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/nvm/services/NVMService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x3e9

    invoke-static {v0, v2}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->cancelJob(Landroid/content/Context;I)V

    .line 128
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$1$1;->this$1:Lcom/cisco/anyconnect/nvm/services/NVMService$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/nvm/services/NVMService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0xdbba0

    const/16 v3, 0x3eb

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->schedulePeriodicJob(Landroid/content/Context;II)V

    .line 129
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$1$1;->this$1:Lcom/cisco/anyconnect/nvm/services/NVMService$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/nvm/services/NVMService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x3ea

    invoke-static {v0, v2}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->cancelJob(Landroid/content/Context;I)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$1$1;->this$1:Lcom/cisco/anyconnect/nvm/services/NVMService$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/nvm/services/NVMService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->access$300(Lcom/cisco/anyconnect/nvm/services/NVMService;)Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->setDisabled(Z)V

    .line 132
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$1$1;->this$1:Lcom/cisco/anyconnect/nvm/services/NVMService$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/nvm/services/NVMService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->stopSelf()V

    :cond_2
    return-void
.end method

.class Lcom/cisco/anyconnect/nvm/services/jni/FlowController$1;
.super Ljava/lang/Object;
.source "FlowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/nvm/services/jni/FlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$1;->this$0:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$1;->this$0:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$000(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)I

    move-result v0

    const/16 v1, -0x13

    if-ne v1, v0, :cond_0

    .line 111
    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$1;->this$0:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-static {v2}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$100(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 112
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$1;->this$0:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$108(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)I

    .line 113
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$1;->this$0:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->stopFlow()I

    .line 114
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$1;->this$0:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$300(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$1;->this$0:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-static {v1}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$200(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$1;->this$0:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->stopFlow()I

    .line 118
    invoke-static {}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isForegroundServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$1;->this$0:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$400(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isBackgroundExecutionLimited(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$1;->this$0:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$400(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "serviceInitiatedCancel"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 122
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$1;->this$0:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$400(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)Landroid/content/Context;

    move-result-object v0

    const v1, 0xea60

    const/16 v4, 0x3e9

    invoke-static {v0, v2, v3, v1, v4}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->scheduleNVMServiceRestart(Landroid/content/Context;ZZII)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, -0x8

    if-ne v1, v0, :cond_3

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$1;->this$0:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$500(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)V

    .line 129
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$1;->this$0:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-static {v0, v2}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$102(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;I)I

    :goto_1
    return-void
.end method

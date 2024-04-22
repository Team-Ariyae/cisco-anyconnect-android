.class Lcom/cisco/anyconnect/nvm/services/jni/FlowController$2;
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

    .line 154
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$2;->this$0:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 157
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v1, "FlowController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Executing native state runnable prevState : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$600()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " curNativeState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$700()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-class v0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    monitor-enter v0

    .line 161
    :try_start_0
    invoke-static {}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$600()I

    move-result v1

    invoke-static {}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$700()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 162
    sget-object v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->COLLECTION_OFF:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->getValue()I

    move-result v1

    invoke-static {}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$700()I

    move-result v2

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_0

    .line 168
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$2;->this$0:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-static {v1}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$400(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "serviceInitiatedCancel"

    invoke-static {v1, v2, v5}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 169
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$2;->this$0:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-static {v1}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$400(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0xea60

    invoke-static {v1, v4, v5, v2, v3}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->scheduleNVMServiceRestart(Landroid/content/Context;ZZII)V

    .line 171
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$2;->this$0:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-static {v1}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$400(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0xdbba0

    const/16 v3, 0x3ea

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->schedulePeriodicJob(Landroid/content/Context;II)V

    goto :goto_1

    .line 172
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->COLLECTION_OFF_EXPORTING:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->getValue()I

    move-result v1

    invoke-static {}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$700()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 189
    sget-object v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->COLLECTION_ON:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->getValue()I

    move-result v1

    invoke-static {}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$600()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 190
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$2;->this$0:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-static {v1}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$400(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "serviceInitiatedCancel"

    invoke-static {v1, v2, v4}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$2;->this$0:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-static {v1}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$400(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "serviceInitiatedCancel"

    invoke-static {v1, v2, v5}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 194
    :goto_0
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$2;->this$0:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-static {v1}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$400(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v5, v5, v3}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->scheduleNVMServiceRestart(Landroid/content/Context;ZZII)V

    .line 198
    :cond_2
    :goto_1
    invoke-static {}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$700()I

    move-result v1

    invoke-static {v1}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$602(I)I

    .line 199
    sget-object v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->UNKNOWN:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->getValue()I

    move-result v1

    invoke-static {v1}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->access$702(I)I

    .line 201
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

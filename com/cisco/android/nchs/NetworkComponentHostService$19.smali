.class Lcom/cisco/android/nchs/NetworkComponentHostService$19;
.super Ljava/lang/Object;
.source "NetworkComponentHostService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/android/nchs/NetworkComponentHostService;->startExternalActivity(Ljava/lang/String;ZLandroid/content/Intent;Landroid/content/Intent;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

.field final synthetic val$activityIntent:Landroid/content/Intent;

.field final synthetic val$intentAction:Ljava/lang/String;

.field final synthetic val$isInProc:Z

.field final synthetic val$resultAction:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;Landroid/content/Intent;ZLandroid/content/Intent;)V
    .locals 0

    .line 2698
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$19;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iput-object p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$19;->val$intentAction:Ljava/lang/String;

    iput-object p3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$19;->val$activityIntent:Landroid/content/Intent;

    iput-boolean p4, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$19;->val$isInProc:Z

    iput-object p5, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$19;->val$resultAction:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "NetworkComponentHostService"

    .line 2703
    :try_start_0
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$19;->val$intentAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$19;->val$activityIntent:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 2705
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "intentAction was null or empty, failure"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$19;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$19;->val$isInProc:Z

    invoke-static {v1, v2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 2710
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$19;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    const-class v3, Lcom/cisco/android/nchs/NCHSProxyActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2711
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$19;->val$intentAction:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v3, "intent_action"

    .line 2713
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2715
    :cond_2
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$19;->val$activityIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    const-string v3, "intent_key"

    .line 2717
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    const-string v2, "proxy_action"

    const-string v3, "start_activity"

    .line 2719
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 2720
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "KEY_IPC_TARGET_SERVER"

    const-string v3, "com.cisco.android.nchs"

    .line 2721
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2722
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$19;->val$resultAction:Landroid/content/Intent;

    if-eqz v2, :cond_4

    const-string v3, "KEY_RECEIVER"

    .line 2724
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2726
    :cond_4
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$19;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-virtual {v2, v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->startActivity(Landroid/content/Intent;)V

    .line 2728
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Activity Started"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$19;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$19;->val$isInProc:Z

    invoke-static {v1, v2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 2735
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Exception thrown in getNetworkComponentProperty()"

    invoke-static {v2, v0, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2736
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$19;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$19;->val$isInProc:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void
.end method

.class Lcom/cisco/android/nchs/NetworkComponentHostService$18;
.super Ljava/lang/Object;
.source "NetworkComponentHostService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/android/nchs/NetworkComponentHostService;->uninstallApplicationAPK(Landroid/net/Credentials;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

.field final synthetic val$isInProc:Z

.field final synthetic val$packageID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;Z)V
    .locals 0

    .line 2640
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$18;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iput-object p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$18;->val$packageID:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$18;->val$isInProc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "NetworkComponentHostService"

    .line 2645
    :try_start_0
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$18;->val$packageID:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2652
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$18;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    const-class v3, Lcom/cisco/android/nchs/NCHSProxyActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "package"

    .line 2653
    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$18;->val$packageID:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "packageID"

    .line 2654
    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$18;->val$packageID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "proxy_action"

    const-string v3, "delete"

    .line 2655
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 2656
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "KEY_IPC_TARGET_SERVER"

    const-string v3, "com.cisco.android.nchs"

    .line 2657
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2658
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$18;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-virtual {v2, v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->startActivity(Landroid/content/Intent;)V

    .line 2660
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Activity Started"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2662
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$18;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$18;->val$isInProc:Z

    invoke-static {v1, v2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 2647
    :cond_1
    :goto_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "PackageName was null or empty, failure"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2648
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$18;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$18;->val$isInProc:Z

    invoke-static {v1, v2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 2667
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Exception thrown in getNetworkComponentProperty()"

    invoke-static {v2, v0, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2668
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$18;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$18;->val$isInProc:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void
.end method

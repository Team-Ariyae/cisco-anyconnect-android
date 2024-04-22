.class Lcom/cisco/android/nchs/NetworkComponentHostService$11;
.super Ljava/lang/Object;
.source "NetworkComponentHostService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/android/nchs/NetworkComponentHostService;->stopNativeService(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

.field final synthetic val$creds:Landroid/net/Credentials;

.field final synthetic val$isInProc:Z

.field final synthetic val$packageID:Ljava/lang/String;

.field final synthetic val$serviceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 2028
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$11;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iput-object p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$11;->val$creds:Landroid/net/Credentials;

    iput-object p3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$11;->val$packageID:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$11;->val$isInProc:Z

    iput-object p5, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$11;->val$serviceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "NetworkComponentHostService"

    const-string v1, "UID: "

    .line 2033
    :try_start_0
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$11;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$11;->val$creds:Landroid/net/Credentials;

    iget-object v4, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$11;->val$packageID:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misCallerAuthorizedForPackage(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2035
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$11;->val$creds:Landroid/net/Credentials;

    invoke-virtual {v1}, Landroid/net/Credentials;->getUid()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not authorized to access package: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$11;->val$packageID:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$11;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_PERMISSION_DENIED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$11;->val$isInProc:Z

    invoke-static {v1, v2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 2040
    :cond_0
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$11;->val$packageID:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2047
    :cond_1
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$11;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$11;->val$packageID:Ljava/lang/String;

    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$11;->val$serviceName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$mstopNativeService(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v2

    iget-boolean v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$11;->val$isInProc:Z

    invoke-static {v1, v2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 2042
    :cond_2
    :goto_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "PackageName was null or empty, failure"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$11;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$11;->val$isInProc:Z

    invoke-static {v1, v2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 2052
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Exception thrown in getNetworkComponentProperty()"

    invoke-static {v2, v0, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2053
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$11;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$11;->val$isInProc:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void
.end method

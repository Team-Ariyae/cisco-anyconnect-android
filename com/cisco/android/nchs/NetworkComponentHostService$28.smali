.class Lcom/cisco/android/nchs/NetworkComponentHostService$28;
.super Ljava/lang/Object;
.source "NetworkComponentHostService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/android/nchs/NetworkComponentHostService;->registerListener(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

.field final synthetic val$callbackList:Landroid/os/RemoteCallbackList;

.field final synthetic val$creds:Landroid/net/Credentials;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$isInProc:Z

.field final synthetic val$listener:Landroid/os/IInterface;

.field final synthetic val$opName:Ljava/lang/String;

.field final synthetic val$packageID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/NetworkComponentHostService;ZLjava/lang/String;Ljava/lang/String;Landroid/net/Credentials;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;)V
    .locals 0

    .line 4111
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iput-boolean p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$isInProc:Z

    iput-object p3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$packageID:Ljava/lang/String;

    iput-object p4, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$description:Ljava/lang/String;

    iput-object p5, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$creds:Landroid/net/Credentials;

    iput-object p6, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$callbackList:Landroid/os/RemoteCallbackList;

    iput-object p7, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$listener:Landroid/os/IInterface;

    iput-object p8, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$opName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 4115
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmShutdownInProgress(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result v0

    const-string v1, "NetworkComponentHostService"

    if-eqz v0, :cond_0

    .line 4117
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "cannot register due to pending shutdown"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4118
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$isInProc:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 4122
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$packageID:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 4131
    :cond_1
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$packageID:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misNetworkComponentInstalled(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4133
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$packageID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not installed, cannot continue with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " register"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4134
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$isInProc:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 4138
    :cond_2
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$creds:Landroid/net/Credentials;

    invoke-virtual {v0}, Landroid/net/Credentials;->getUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$creds:Landroid/net/Credentials;

    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$packageID:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misCallerAuthorizedForPackage(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4140
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$creds:Landroid/net/Credentials;

    invoke-virtual {v3}, Landroid/net/Credentials;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not authorized to access package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$packageID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4141
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_PERMISSION_DENIED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$isInProc:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 4145
    :cond_3
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$callbackList:Landroid/os/RemoteCallbackList;

    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$listener:Landroid/os/IInterface;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4148
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "callback could not be registered"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4149
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$isInProc:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 4153
    :cond_4
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "success for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$opName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4154
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$isInProc:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 4124
    :cond_5
    :goto_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "PackageName was null or empty, failure"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4125
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$28;->val$isInProc:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void
.end method

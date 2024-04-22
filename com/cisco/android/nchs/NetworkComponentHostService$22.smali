.class Lcom/cisco/android/nchs/NetworkComponentHostService$22;
.super Ljava/lang/Object;
.source "NetworkComponentHostService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/android/nchs/NetworkComponentHostService;->getNativeServiceState(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

.field final synthetic val$isInProc:Z

.field final synthetic val$packageID:Ljava/lang/String;

.field final synthetic val$serviceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 3007
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$22;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iput-object p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$22;->val$packageID:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$22;->val$isInProc:Z

    iput-object p4, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$22;->val$serviceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3010
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$22;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$22;->val$packageID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$mgetManifestForPackage(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "NetworkComponentHostService"

    if-nez v0, :cond_0

    .line 3013
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Package : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$22;->val$packageID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not an installed component"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3014
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$22;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$22;->val$isInProc:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 3018
    :cond_0
    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$22;->val$serviceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/cisco/android/nchs/ComponentManifest;->getServiceByID(Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest$ComponentService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3021
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Service: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$22;->val$serviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not exist for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$22;->val$packageID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3022
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$22;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$22;->val$isInProc:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 3026
    :cond_1
    invoke-virtual {v0}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->getState()Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    move-result-object v0

    .line 3027
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$22;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$22;->val$isInProc:Z

    invoke-static {v1, v0, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void
.end method

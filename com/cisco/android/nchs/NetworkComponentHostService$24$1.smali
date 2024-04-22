.class Lcom/cisco/android/nchs/NetworkComponentHostService$24$1;
.super Ljava/lang/Object;
.source "NetworkComponentHostService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/android/nchs/NetworkComponentHostService$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/android/nchs/NetworkComponentHostService$24;

.field final synthetic val$finalCertAlias:Ljava/lang/String;

.field final synthetic val$finalCertHash:[B

.field final synthetic val$finalRetCode:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/NetworkComponentHostService$24;Lcom/cisco/android/nchs/aidl/NCHSReturnCode;[BLjava/lang/String;)V
    .locals 0

    .line 3531
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24$1;->this$1:Lcom/cisco/android/nchs/NetworkComponentHostService$24;

    iput-object p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24$1;->val$finalRetCode:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iput-object p3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24$1;->val$finalCertHash:[B

    iput-object p4, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24$1;->val$finalCertAlias:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "NetworkComponentHostService"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3536
    :try_start_0
    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24$1;->this$1:Lcom/cisco/android/nchs/NetworkComponentHostService$24;

    iget-object v3, v3, Lcom/cisco/android/nchs/NetworkComponentHostService$24;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmImportClientCertCallback(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/aidl/IImportClientCertCB;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3538
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "No callback to receive cert import result."

    invoke-static {v3, v0, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3551
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24$1;->this$1:Lcom/cisco/android/nchs/NetworkComponentHostService$24;

    iget-object v0, v0, Lcom/cisco/android/nchs/NetworkComponentHostService$24;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmHandler(Lcom/cisco/android/nchs/NetworkComponentHostService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3552
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24$1;->this$1:Lcom/cisco/android/nchs/NetworkComponentHostService$24;

    iget-object v0, v0, Lcom/cisco/android/nchs/NetworkComponentHostService$24;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0, v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fputmImportClientCertCallback(Lcom/cisco/android/nchs/NetworkComponentHostService;Lcom/cisco/android/nchs/aidl/IImportClientCertCB;)V

    return-void

    .line 3542
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24$1;->this$1:Lcom/cisco/android/nchs/NetworkComponentHostService$24;

    iget-object v3, v3, Lcom/cisco/android/nchs/NetworkComponentHostService$24;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmImportClientCertCallback(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/aidl/IImportClientCertCB;

    move-result-object v3

    new-instance v4, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    iget-object v5, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24$1;->val$finalRetCode:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-direct {v4, v5}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    iget-object v5, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24$1;->val$finalCertHash:[B

    iget-object v6, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24$1;->val$finalCertAlias:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Lcom/cisco/android/nchs/aidl/IImportClientCertCB;->OnImportCompleted(Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;[BLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 3547
    :try_start_2
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "OnImportCompleted failed."

    invoke-static {v4, v0, v5, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3551
    :goto_0
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24$1;->this$1:Lcom/cisco/android/nchs/NetworkComponentHostService$24;

    iget-object v0, v0, Lcom/cisco/android/nchs/NetworkComponentHostService$24;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmHandler(Lcom/cisco/android/nchs/NetworkComponentHostService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3552
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24$1;->this$1:Lcom/cisco/android/nchs/NetworkComponentHostService$24;

    iget-object v0, v0, Lcom/cisco/android/nchs/NetworkComponentHostService$24;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0, v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fputmImportClientCertCallback(Lcom/cisco/android/nchs/NetworkComponentHostService;Lcom/cisco/android/nchs/aidl/IImportClientCertCB;)V

    return-void

    .line 3551
    :goto_1
    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24$1;->this$1:Lcom/cisco/android/nchs/NetworkComponentHostService$24;

    iget-object v3, v3, Lcom/cisco/android/nchs/NetworkComponentHostService$24;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmHandler(Lcom/cisco/android/nchs/NetworkComponentHostService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3552
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24$1;->this$1:Lcom/cisco/android/nchs/NetworkComponentHostService$24;

    iget-object v2, v2, Lcom/cisco/android/nchs/NetworkComponentHostService$24;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v2, v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fputmImportClientCertCallback(Lcom/cisco/android/nchs/NetworkComponentHostService;Lcom/cisco/android/nchs/aidl/IImportClientCertCB;)V

    .line 3553
    throw v0
.end method

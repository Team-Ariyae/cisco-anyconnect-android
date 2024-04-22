.class Lcom/cisco/android/nchs/NetworkComponentHostService$24;
.super Ljava/lang/Object;
.source "NetworkComponentHostService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/android/nchs/NetworkComponentHostService;->onCertImportFinished(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/content/Intent;)V
    .locals 0

    .line 3495
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iput-object p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 3498
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24;->val$intent:Landroid/content/Intent;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    if-nez v0, :cond_0

    .line 3499
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v0

    .line 3500
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCertImportFinished "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 3506
    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-ne v2, v0, :cond_3

    .line 3508
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24;->val$intent:Landroid/content/Intent;

    const-string v2, "cert_alias"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3509
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmCertMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/CertificateManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/cisco/android/nchs/support/CertificateManager;->importCertFromSystem(Ljava/lang/String;)[B

    move-result-object v2

    .line 3511
    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24;->val$intent:Landroid/content/Intent;

    const-string v4, "cert_group"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3512
    iget-object v4, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24;->val$intent:Landroid/content/Intent;

    const-string v5, "cert_category"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 3515
    iget-object v5, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v5}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmCertMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/CertificateManager;

    move-result-object v5

    invoke-virtual {v5, v1, v3, v4}, Lcom/cisco/android/nchs/support/CertificateManager;->mapCertAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3518
    :cond_1
    array-length v3, v2

    if-nez v3, :cond_2

    .line 3520
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "NetworkComponentHostService"

    const-string v4, "importCertFromSystem failed"

    invoke-static {v0, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3521
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :cond_2
    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 3530
    :goto_1
    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$24;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmHandler(Lcom/cisco/android/nchs/NetworkComponentHostService;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/cisco/android/nchs/NetworkComponentHostService$24$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService$24$1;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService$24;Lcom/cisco/android/nchs/aidl/NCHSReturnCode;[BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

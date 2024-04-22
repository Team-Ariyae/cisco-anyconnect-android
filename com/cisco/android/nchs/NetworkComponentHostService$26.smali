.class Lcom/cisco/android/nchs/NetworkComponentHostService$26;
.super Ljava/lang/Object;
.source "NetworkComponentHostService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/android/nchs/NetworkComponentHostService;->importClientCertFromKeyChain(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/IImportClientCertCB;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

.field final synthetic val$alias:Ljava/lang/String;

.field final synthetic val$callback:Lcom/cisco/android/nchs/aidl/IImportClientCertCB;

.field final synthetic val$category:Ljava/lang/String;

.field final synthetic val$group:Ljava/lang/String;

.field final synthetic val$isInProc:Z


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/NetworkComponentHostService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/IImportClientCertCB;)V
    .locals 0

    .line 3727
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$26;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iput-boolean p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$26;->val$isInProc:Z

    iput-object p3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$26;->val$alias:Ljava/lang/String;

    iput-object p4, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$26;->val$group:Ljava/lang/String;

    iput-object p5, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$26;->val$category:Ljava/lang/String;

    iput-object p6, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$26;->val$callback:Lcom/cisco/android/nchs/aidl/IImportClientCertCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3731
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$26;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmImportClientCertCallback(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/aidl/IImportClientCertCB;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3733
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "NetworkComponentHostService"

    const-string v2, "Another import is in progress."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3734
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$26;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_BLOCKED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$26;->val$isInProc:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    :cond_0
    const-string v0, "Starting ImportCertFromSystemActivity"

    .line 3749
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3750
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$26;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    const-class v2, Lcom/cisco/android/nchs/ImportCertFromSystemActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3751
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "cert_alias"

    .line 3752
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$26;->val$alias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cert_group"

    .line 3753
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$26;->val$group:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cert_category"

    .line 3754
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$26;->val$category:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3755
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$26;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-virtual {v1, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->startActivity(Landroid/content/Intent;)V

    .line 3758
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$26;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmHandler(Lcom/cisco/android/nchs/NetworkComponentHostService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3760
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$26;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$26;->val$callback:Lcom/cisco/android/nchs/aidl/IImportClientCertCB;

    invoke-static {v0, v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fputmImportClientCertCallback(Lcom/cisco/android/nchs/NetworkComponentHostService;Lcom/cisco/android/nchs/aidl/IImportClientCertCB;)V

    .line 3762
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$26;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$26;->val$isInProc:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void
.end method

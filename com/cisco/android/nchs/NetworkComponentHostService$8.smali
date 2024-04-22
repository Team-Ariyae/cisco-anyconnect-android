.class Lcom/cisco/android/nchs/NetworkComponentHostService$8;
.super Ljava/lang/Object;
.source "NetworkComponentHostService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/android/nchs/NetworkComponentHostService;->installNetworkComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

.field final synthetic val$archive:Ljava/io/File;

.field final synthetic val$installDir:Ljava/io/File;

.field final synthetic val$isInProc:Z

.field final synthetic val$packageComponentArchivePath:Ljava/lang/String;

.field final synthetic val$packageID:Ljava/lang/String;

.field final synthetic val$signatureFile:Ljava/io/File;

.field final synthetic val$signaturePath:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 1646
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iput-object p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$packageID:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$isInProc:Z

    iput-object p4, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$packageComponentArchivePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$signaturePath:Ljava/lang/String;

    iput p6, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$uid:I

    iput-object p7, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$archive:Ljava/io/File;

    iput-object p8, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$signatureFile:Ljava/io/File;

    iput-object p9, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$installDir:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, ""

    const-string v1, "NetworkComponentHostService"

    const-string v2, "Component "

    const-string v3, "installNetworkComponent failed due to invalid uid: "

    .line 1651
    :try_start_0
    iget-object v4, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$packageID:Ljava/lang/String;

    if-eqz v4, :cond_b

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 1658
    :cond_0
    iget-object v4, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$packageComponentArchivePath:Ljava/lang/String;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    .line 1665
    :cond_1
    iget-object v4, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$signaturePath:Ljava/lang/String;

    if-eqz v4, :cond_9

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 1672
    :cond_2
    iget v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$uid:I

    if-gez v0, :cond_3

    .line 1674
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$isInProc:Z

    invoke-static {v0, v2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 1681
    :cond_3
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$packageID:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misNetworkComponentInstalled(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1683
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$packageID:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already installed"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$isInProc:Z

    invoke-static {v0, v2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 1689
    :cond_4
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$archive:Ljava/io/File;

    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$signatureFile:Ljava/io/File;

    invoke-static {v0, v2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misArchiveTrusted(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1691
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Component is not trusted, will not install"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$isInProc:Z

    invoke-static {v0, v2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 1697
    :cond_5
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$archive:Ljava/io/File;

    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$installDir:Ljava/io/File;

    invoke-static {v0, v2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$minstallNetworkComponentFiles(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_6

    .line 1699
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Component could not be installed"

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$installDir:Ljava/io/File;

    invoke-static {v0, v3, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$mdeleteDirectory(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/io/File;I)Z

    .line 1701
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$isInProc:Z

    invoke-static {v0, v2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 1706
    :cond_6
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$packageID:Ljava/lang/String;

    iget v4, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$uid:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$mparseComponentManifest(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1709
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Component Manifest could not be parsed"

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$installDir:Ljava/io/File;

    invoke-static {v0, v3, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$mdeleteDirectory(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/io/File;I)Z

    .line 1711
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$isInProc:Z

    invoke-static {v0, v2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 1715
    :cond_7
    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v3, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$mstartComponent(Lcom/cisco/android/nchs/NetworkComponentHostService;Lcom/cisco/android/nchs/ComponentManifest;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v3

    .line 1717
    sget-object v4, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v3, v4, :cond_8

    sget-object v4, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_WAIT_FOR_COMPONENT_START:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v3, v4, :cond_8

    .line 1720
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Component could not be started"

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$installDir:Ljava/io/File;

    invoke-static {v0, v3, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$mdeleteDirectory(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/io/File;I)Z

    .line 1722
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$isInProc:Z

    invoke-static {v0, v2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 1726
    :cond_8
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmComponents(Lcom/cisco/android/nchs/NetworkComponentHostService;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1728
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$isInProc:Z

    invoke-static {v0, v3, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 1667
    :cond_9
    :goto_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "signaturePath was null or empty, failure"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$isInProc:Z

    invoke-static {v0, v2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 1660
    :cond_a
    :goto_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "packageComponentArchivePath was null or empty, failure"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$isInProc:Z

    invoke-static {v0, v2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 1653
    :cond_b
    :goto_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "PackageName was null or empty, failure"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$isInProc:Z

    invoke-static {v0, v2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1733
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Exception thrown in getNetworkComponentProperty()"

    invoke-static {v2, v1, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1734
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$8;->val$isInProc:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void
.end method

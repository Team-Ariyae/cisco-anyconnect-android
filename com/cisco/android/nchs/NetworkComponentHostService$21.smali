.class Lcom/cisco/android/nchs/NetworkComponentHostService$21;
.super Ljava/lang/Object;
.source "NetworkComponentHostService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/android/nchs/NetworkComponentHostService;->getNCHSState(Landroid/net/Credentials;Lcom/cisco/android/nchs/aidl/NCHSStateParcel;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

.field final synthetic val$creds:Landroid/net/Credentials;

.field final synthetic val$isInProc:Z

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/content/pm/PackageManager;Landroid/net/Credentials;Z)V
    .locals 0

    .line 2905
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$21;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iput-object p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$21;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$21;->val$creds:Landroid/net/Credentials;

    iput-boolean p4, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$21;->val$isInProc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "NetworkComponentHostService"

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-array v5, v1, [Ljava/lang/Object;

    .line 2914
    iget-object v6, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$21;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$21;->val$creds:Landroid/net/Credentials;

    invoke-virtual {v7}, Landroid/net/Credentials;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 2917
    sget-object v6, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v7, "caller is not associated with any packages in android, denied"

    invoke-static {v6, v0, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2918
    sget-object v6, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_PERMISSION_DENIED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    aput-object v6, v5, v4

    aput-object v2, v5, v3

    .line 2920
    iget-object v6, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$21;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-boolean v7, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$21;->val$isInProc:Z

    invoke-static {v6, v5, v7}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 2926
    :cond_0
    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 2928
    iget-object v10, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$21;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v10, v9}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misNetworkComponentInstalled(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_3

    .line 2937
    sget-object v6, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v7, "caller is not associated with any packages which NCHS manages"

    invoke-static {v6, v0, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2938
    sget-object v6, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_PERMISSION_DENIED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    aput-object v6, v5, v4

    aput-object v2, v5, v3

    .line 2940
    iget-object v6, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$21;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-boolean v7, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$21;->val$isInProc:Z

    invoke-static {v6, v5, v7}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 2944
    :cond_3
    sget-object v6, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    aput-object v6, v5, v4

    .line 2945
    iget-object v6, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$21;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v6}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$mgetNCHSOverallState(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/aidl/NCHSState;

    move-result-object v6

    aput-object v6, v5, v3

    .line 2946
    iget-object v6, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$21;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-boolean v7, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$21;->val$isInProc:Z

    invoke-static {v6, v5, v7}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    new-array v1, v1, [Ljava/lang/Object;

    .line 2952
    sget-object v6, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    aput-object v6, v1, v4

    aput-object v2, v1, v3

    .line 2954
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Exception thrown while in getNCHSState()"

    invoke-static {v2, v0, v3, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2955
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$21;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$21;->val$isInProc:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void
.end method

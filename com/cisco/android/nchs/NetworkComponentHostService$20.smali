.class Lcom/cisco/android/nchs/NetworkComponentHostService$20;
.super Ljava/lang/Object;
.source "NetworkComponentHostService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/android/nchs/NetworkComponentHostService;->getAllComponentInfo(Z)[Lcom/cisco/android/nchs/aidl/NativeComponentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

.field final synthetic val$isInProc:Z


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Z)V
    .locals 0

    .line 2757
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$20;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iput-boolean p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$20;->val$isInProc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2762
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$20;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$mgetFullComponentList(Lcom/cisco/android/nchs/NetworkComponentHostService;)Ljava/util/List;

    move-result-object v0

    .line 2763
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/cisco/android/nchs/aidl/NativeComponentInfo;

    .line 2764
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2765
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$20;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$20;->val$isInProc:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2770
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "NetworkComponentHostService"

    const-string v3, "Exception thrown while in getAllComponentInfo()"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2771
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$20;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/cisco/android/nchs/aidl/NativeComponentInfo;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$20;->val$isInProc:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void
.end method

.class Lcom/cisco/android/nchs/NetworkComponentHostService$25;
.super Ljava/lang/Object;
.source "NetworkComponentHostService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/android/nchs/NetworkComponentHostService;->isDeviceInfoAvailable(Z)Z
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

    .line 3680
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$25;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iput-boolean p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$25;->val$isInProc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "NetworkComponentHostService"

    const-string v1, "isDeviceInfoAvailable"

    .line 3683
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 3684
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$25;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$misDeviceInfoAvailable(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$25;->val$isInProc:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void
.end method

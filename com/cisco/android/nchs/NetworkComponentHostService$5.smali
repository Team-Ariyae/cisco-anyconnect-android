.class Lcom/cisco/android/nchs/NetworkComponentHostService$5;
.super Ljava/lang/Object;
.source "NetworkComponentHostService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/android/nchs/NetworkComponentHostService;->onServiceReady(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

.field final synthetic val$isInProc:Z

.field final synthetic val$packageId:Ljava/lang/String;

.field final synthetic val$serviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1040
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$5;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iput-object p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$5;->val$packageId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$5;->val$isInProc:Z

    iput-object p4, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$5;->val$serviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1043
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$5;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$5;->val$packageId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$mgetManifestForPackage(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$5;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$5;->val$isInProc:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 1050
    :cond_0
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$5;->val$serviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/cisco/android/nchs/ComponentManifest;->getServiceByID(Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest$ComponentService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1053
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$5;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$5;->val$isInProc:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void

    .line 1057
    :cond_1
    invoke-virtual {v0}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->onSignalReady()V

    .line 1058
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$5;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$5;->val$isInProc:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V

    return-void
.end method

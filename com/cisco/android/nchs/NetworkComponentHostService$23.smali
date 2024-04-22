.class Lcom/cisco/android/nchs/NetworkComponentHostService$23;
.super Ljava/lang/Object;
.source "NetworkComponentHostService.java"

# interfaces
.implements Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/NetworkComponentHostService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/NetworkComponentHostService;)V
    .locals 0

    .line 3236
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$23;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIPCServerStarted()V
    .locals 1

    .line 3240
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService$23;->this$0:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-static {v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->-$$Nest$fgetmServicesLatch(Lcom/cisco/android/nchs/NetworkComponentHostService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

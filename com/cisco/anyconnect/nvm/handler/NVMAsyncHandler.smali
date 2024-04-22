.class public final Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;
.super Ljava/lang/Object;
.source "NVMAsyncHandler.java"


# static fields
.field private static instance:Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;


# instance fields
.field private sHandler:Landroid/os/Handler;

.field private sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NVMAsyncHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;->sHandlerThread:Landroid/os/HandlerThread;

    .line 36
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;
    .locals 2

    const-class v0, Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;->instance:Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;

    invoke-direct {v1}, Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;-><init>()V

    sput-object v1, Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;->instance:Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;

    .line 44
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;->instance:Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reset()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;->sHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 57
    :cond_1
    sput-object v1, Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;->instance:Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;

    return-void
.end method

.class Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;
.super Ljava/lang/Object;
.source "NetworkInterceptor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "ddx agent connected"

    .line 400
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$fgetmExecutor(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10$2;

    invoke-direct {v0, p0, p2}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10$2;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;Landroid/os/IBinder;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 390
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    const-string v0, "VpnAgentService disconnected"

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$fgetmExecutor(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10$1;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

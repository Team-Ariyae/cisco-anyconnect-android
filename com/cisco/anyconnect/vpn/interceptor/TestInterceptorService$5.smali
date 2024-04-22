.class Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$5;
.super Ljava/lang/Object;
.source "TestInterceptorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->onChannelReconnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$5;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$5;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;

    const-string v1, "channel reconnected; reprotecting"

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$5;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->-$$Nest$mprotectChannel(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$5;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;

    const-string v1, "failed to reprotect channel"

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

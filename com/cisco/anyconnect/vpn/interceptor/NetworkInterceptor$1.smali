.class Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkInterceptor.java"


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

    .line 37
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$1;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.cisco.android.nchs.VPN_REVOKED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$1;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    const-string p2, "ddx8 VPN revoked"

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$1;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$fgetmExecutor(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$1$1;

    invoke-direct {p2, p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$1$1;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$1;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "received unexpected intent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

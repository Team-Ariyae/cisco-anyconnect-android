.class Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10$2;
.super Ljava/lang/Object;
.source "NetworkInterceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;Landroid/os/IBinder;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10$2;->this$1:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10$2;->val$service:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10$2;->this$1:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10$2;->val$service:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$fputmVpnAgentService(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;)V

    .line 405
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10$2;->this$1:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$monAgentConnected(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)V

    return-void
.end method

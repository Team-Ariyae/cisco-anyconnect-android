.class Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10$1;
.super Ljava/lang/Object;
.source "NetworkInterceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10$1;->this$1:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10$1;->this$1:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$10;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$fputmVpnAgentService(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;)V

    return-void
.end method

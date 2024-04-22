.class Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4$1;
.super Ljava/lang/Object;
.source "TestInterceptorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4;->handleStateChange(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4;

.field final synthetic val$newState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

.field final synthetic val$prevState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4$1;->this$1:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4$1;->val$prevState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4$1;->val$newState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4$1;->this$1:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4$1;->val$prevState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4$1;->val$newState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->-$$Nest$mhandleInterceptorStateChange(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V

    return-void
.end method

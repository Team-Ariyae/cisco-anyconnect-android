.class Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$2;
.super Ljava/lang/Object;
.source "TestInterceptorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;
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

    .line 78
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$2;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$2;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->-$$Nest$mdoConfigure(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;)V

    return-void
.end method

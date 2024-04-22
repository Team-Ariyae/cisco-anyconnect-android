.class Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$4;
.super Ljava/lang/Object;
.source "NetworkInterceptor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->getActiveConfig()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$4;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$4;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$fgetmActiveConfig(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$4;->call()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    move-result-object v0

    return-object v0
.end method

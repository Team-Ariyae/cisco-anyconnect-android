.class Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$1$1;
.super Ljava/lang/Object;
.source "NetworkInterceptor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$1;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$1;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$1$1;->this$1:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$1$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$1$1;->this$1:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$1;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    sget-object v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;->REVOKED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$mhandleFailure(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;)V

    const/4 v0, 0x0

    return-object v0
.end method

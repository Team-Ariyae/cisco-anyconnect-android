.class Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$7;
.super Ljava/lang/Object;
.source "NetworkInterceptor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->disable()V
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
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$7;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

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

    .line 163
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$7;->call()Ljava/lang/Void;

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

    .line 166
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$7;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$fputmLastFailureCode(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;)V

    .line 167
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$7;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$mhandleDisable(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)V

    return-object v1
.end method

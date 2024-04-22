.class Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$8;
.super Ljava/lang/Object;
.source "NetworkInterceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->onConfigureResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Z)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$8;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    iput-boolean p2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$8;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 223
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$8;->val$result:Z

    if-nez v0, :cond_0

    const-string v0, "configure failed"

    .line 224
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$8;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    sget-object v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;->CONFIGURE_FAILURE:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$mhandleFailure(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;)V

    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$8;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    sget-object v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->CONFIGURED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$mtransitionState(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V

    .line 230
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$8;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$fgetmPendingConfig(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Unexpected null pending config. Not updating active config"

    .line 231
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$8;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$fgetmPendingConfig(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$fputmActiveConfig(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;)V

    :goto_0
    return-void
.end method

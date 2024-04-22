.class Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$13;
.super Ljava/lang/Object;
.source "NetworkInterceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->onIPCReadShutdown()V
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

    .line 584
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$13;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$13;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$fgetmState(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    move-result-object v0

    sget-object v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->DISABLED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "IPC read shutdown"

    .line 591
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$13;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    sget-object v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;->IPC_ERROR:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$mhandleFailure(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;)V

    return-void
.end method

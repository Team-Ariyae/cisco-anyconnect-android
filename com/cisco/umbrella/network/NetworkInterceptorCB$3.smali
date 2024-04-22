.class Lcom/cisco/umbrella/network/NetworkInterceptorCB$3;
.super Ljava/lang/Object;
.source "NetworkInterceptorCB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/umbrella/network/NetworkInterceptorCB;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$3;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 230
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Reconfiguring network interceptor."

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$3;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    invoke-static {v0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$600(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$700(Lcom/cisco/umbrella/network/NetworkInterceptorCB;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;Z)V

    return-void
.end method

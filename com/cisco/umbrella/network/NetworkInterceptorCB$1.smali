.class Lcom/cisco/umbrella/network/NetworkInterceptorCB$1;
.super Ljava/lang/Object;
.source "NetworkInterceptorCB.java"

# interfaces
.implements Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/network/NetworkInterceptorCB;
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

    .line 147
    iput-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$1;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkUpdate(Z)V
    .locals 4

    .line 150
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received onNetworkUpdate - in NICB - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$1;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    invoke-static {v0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$100(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 152
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$1;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$202(Lcom/cisco/umbrella/network/NetworkInterceptorCB;I)I

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$1;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    invoke-static {p1}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$300(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)Lcom/cisco/umbrella/registration/RegistrationData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$1;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    new-instance v0, Lcom/cisco/umbrella/EDNSData;

    iget-object v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$1;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    invoke-static {v1}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$300(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)Lcom/cisco/umbrella/registration/RegistrationData;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cisco/umbrella/EDNSData;-><init>(Lcom/cisco/umbrella/registration/RegistrationData;)V

    invoke-static {p1, v0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$402(Lcom/cisco/umbrella/network/NetworkInterceptorCB;Lcom/cisco/umbrella/EDNSData;)Lcom/cisco/umbrella/EDNSData;

    :cond_0
    return-void
.end method

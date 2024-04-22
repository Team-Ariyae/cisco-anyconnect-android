.class Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$5;
.super Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
.source "KnoxInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Landroid/content/Context;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$5;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public OnServiceConnected(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 3

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$5;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$fgetmInfoListener(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 404
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "KnoxInteractionService"

    const-string v1, "Failed to register info listener"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$5;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    monitor-enter p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$5;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 410
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 414
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "KnoxInteractionService"

    const-string v2, "OnServiceConnected failed"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public OnServiceWillDisconnect(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;ZLjava/lang/String;)V
    .locals 3

    const-string p3, "KnoxInteractionService"

    const-string v0, "VpnService will disconnect forceShutdown="

    .line 422
    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$5;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$fgetmInfoListener(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 428
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Failed to unregister info listener"

    invoke-static {p1, p3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 434
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$5;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->stopSelf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 437
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "OnServiceWillDisconnect failed"

    invoke-static {p2, p3, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

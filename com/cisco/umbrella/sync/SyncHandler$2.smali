.class Lcom/cisco/umbrella/sync/SyncHandler$2;
.super Ljava/lang/Object;
.source "SyncHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/umbrella/sync/SyncHandler;->sync(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/sync/SyncHandler;

.field final synthetic val$isNewRegistration:Z


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/sync/SyncHandler;Z)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/cisco/umbrella/sync/SyncHandler$2;->this$0:Lcom/cisco/umbrella/sync/SyncHandler;

    iput-boolean p2, p0, Lcom/cisco/umbrella/sync/SyncHandler$2;->val$isNewRegistration:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "Got the Sync Response as :"

    .line 112
    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/sync/SyncHandler;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Sync started"

    invoke-static {v1, v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 115
    iget-object v1, p0, Lcom/cisco/umbrella/sync/SyncHandler$2;->this$0:Lcom/cisco/umbrella/sync/SyncHandler;

    invoke-static {v1}, Lcom/cisco/umbrella/sync/SyncHandler;->access$100(Lcom/cisco/umbrella/sync/SyncHandler;)Lcom/cisco/umbrella/registration/IRegistrationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/umbrella/registration/IRegistrationManager;->getRegistrationData()Lcom/cisco/umbrella/registration/RegistrationData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cisco/umbrella/sync/SyncHandler;->access$200(Lcom/cisco/umbrella/sync/SyncHandler;Lcom/cisco/umbrella/registration/RegistrationData;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cisco/umbrella/sync/SyncHandler;->access$300(Lcom/cisco/umbrella/sync/SyncHandler;Lorg/json/JSONObject;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/client/http/HttpResponse;

    invoke-static {v1, v2}, Lcom/cisco/umbrella/sync/SyncHandler;->access$400(Lcom/cisco/umbrella/sync/SyncHandler;Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/cisco/umbrella/sync/SyncHandler$2;->this$0:Lcom/cisco/umbrella/sync/SyncHandler;

    invoke-static {v2, v1}, Lcom/cisco/umbrella/sync/SyncHandler;->access$500(Lcom/cisco/umbrella/sync/SyncHandler;Ljava/lang/String;)Lcom/cisco/umbrella/sync/SyncResponseData;

    move-result-object v2

    if-nez v2, :cond_0

    .line 119
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/sync/SyncHandler;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Syncing with Umbrella Cloud failed"

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler$2;->this$0:Lcom/cisco/umbrella/sync/SyncHandler;

    iget-boolean v1, p0, Lcom/cisco/umbrella/sync/SyncHandler$2;->val$isNewRegistration:Z

    invoke-static {v0, v1}, Lcom/cisco/umbrella/sync/SyncHandler;->access$600(Lcom/cisco/umbrella/sync/SyncHandler;Z)V

    return-void

    .line 123
    :cond_0
    iget-object v3, p0, Lcom/cisco/umbrella/sync/SyncHandler$2;->this$0:Lcom/cisco/umbrella/sync/SyncHandler;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/cisco/umbrella/sync/SyncHandler;->access$702(Lcom/cisco/umbrella/sync/SyncHandler;Lcom/cisco/umbrella/registration/FibonacciBackOff;)Lcom/cisco/umbrella/registration/FibonacciBackOff;

    .line 124
    iget-object v3, p0, Lcom/cisco/umbrella/sync/SyncHandler$2;->this$0:Lcom/cisco/umbrella/sync/SyncHandler;

    invoke-static {v3, v2}, Lcom/cisco/umbrella/sync/SyncHandler;->access$802(Lcom/cisco/umbrella/sync/SyncHandler;Lcom/cisco/umbrella/sync/SyncResponseData;)Lcom/cisco/umbrella/sync/SyncResponseData;

    .line 125
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/sync/SyncHandler;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler$2;->this$0:Lcom/cisco/umbrella/sync/SyncHandler;

    invoke-static {v0}, Lcom/cisco/umbrella/sync/SyncHandler;->access$800(Lcom/cisco/umbrella/sync/SyncHandler;)Lcom/cisco/umbrella/sync/SyncResponseData;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v4, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler$2;->this$0:Lcom/cisco/umbrella/sync/SyncHandler;

    invoke-static {v0, v1}, Lcom/cisco/umbrella/sync/SyncHandler;->access$900(Lcom/cisco/umbrella/sync/SyncHandler;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler$2;->this$0:Lcom/cisco/umbrella/sync/SyncHandler;

    invoke-static {v0}, Lcom/cisco/umbrella/sync/SyncHandler;->access$1000(Lcom/cisco/umbrella/sync/SyncHandler;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 139
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/sync/SyncHandler;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception occurred in sync "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 137
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/sync/SyncHandler;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to read sync response. Umbrella sync failed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 135
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/sync/SyncHandler;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sync failed. Umbrella sync failed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 131
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/sync/SyncHandler;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sync was interrupted. Umbrella sync failed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler$2;->this$0:Lcom/cisco/umbrella/sync/SyncHandler;

    iget-boolean v1, p0, Lcom/cisco/umbrella/sync/SyncHandler$2;->val$isNewRegistration:Z

    invoke-static {v0, v1}, Lcom/cisco/umbrella/sync/SyncHandler;->access$600(Lcom/cisco/umbrella/sync/SyncHandler;Z)V

    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncHandler$2;->this$0:Lcom/cisco/umbrella/sync/SyncHandler;

    iget-boolean v1, p0, Lcom/cisco/umbrella/sync/SyncHandler$2;->val$isNewRegistration:Z

    invoke-static {v0, v1}, Lcom/cisco/umbrella/sync/SyncHandler;->access$600(Lcom/cisco/umbrella/sync/SyncHandler;Z)V

    return-void
.end method

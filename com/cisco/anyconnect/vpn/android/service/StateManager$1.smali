.class Lcom/cisco/anyconnect/vpn/android/service/StateManager$1;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 83
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "StateManager"

    const-string v2, "Initialization timed out."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Initializing:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetConnectProgressState()Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->-$$Nest$mupdateConnectProgressState(Lcom/cisco/anyconnect/vpn/android/service/StateManager;Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V

    :cond_0
    return-void
.end method

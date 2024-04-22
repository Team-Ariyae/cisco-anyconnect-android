.class Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;
.super Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;
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
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ConnectInProgressCB(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$fgetmMainHandler(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$3;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$3;-><init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public NoticeCB(Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$fgetmMainHandler(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$2;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$2;-><init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public StateCB(Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$fgetmMainHandler(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$1;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$1;-><init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 314
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mscheduleAutoRetry(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Lcom/cisco/anyconnect/vpn/jni/VPNState;)V

    return-void
.end method

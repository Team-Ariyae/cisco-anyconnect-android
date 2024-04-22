.class Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2;
.super Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;
.source "ConnectionSummaryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ConnectInProgressCB(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public NoticeCB(Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public StateCB(Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2;Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

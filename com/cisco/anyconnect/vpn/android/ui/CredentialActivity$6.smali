.class Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$6;
.super Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;
.source "CredentialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notice:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->getNotice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public StateCB(Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 797
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 798
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object p1

    if-ne v0, p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmUpdateTunnelGroup(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 800
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$6$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$6$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$6;)V

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

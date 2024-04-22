.class Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$1;
.super Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;
.source "ConnectionSelectorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

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

    .line 81
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$1;Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$StateCB$0$com-cisco-anyconnect-vpn-android-ui-ConnectionSelectorFragment$1(Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V
    .locals 2

    const-string v0, "ConnectionSelectorFragment"

    const-string v1, "StateCB"

    .line 82
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->-$$Nest$fputmState(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V

    return-void
.end method

.class Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$2;
.super Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener$Stub;
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

    .line 91
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ConnectionUpdateCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V
    .locals 2

    const-string v0, "ConnectionSelectorFragment"

    const-string v1, "ConnectionUpdateCB"

    .line 93
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$2$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$2;Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$ConnectionUpdateCB$0$com-cisco-anyconnect-vpn-android-ui-ConnectionSelectorFragment$2(Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;->-$$Nest$mpopulateConnections(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSelectorFragment;Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V

    return-void
.end method

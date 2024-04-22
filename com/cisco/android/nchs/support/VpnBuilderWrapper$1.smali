.class Lcom/cisco/android/nchs/support/VpnBuilderWrapper$1;
.super Ljava/lang/Object;
.source "VpnBuilderWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/support/VpnBuilderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/support/VpnBuilderWrapper;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper$1;->this$0:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "VpnBuilderWrapper"

    const-string v0, "onServiceConnected"

    .line 54
    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper$1;->this$0:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-static {p2}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->-$$Nest$fputmService(Lcom/cisco/android/nchs/support/VpnBuilderWrapper;Lcom/cisco/android/nchs/aidl/IICSSupportService;)V

    .line 56
    iget-object p1, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper$1;->this$0:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    invoke-static {p1}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->-$$Nest$fgetmIPCServer(Lcom/cisco/android/nchs/support/VpnBuilderWrapper;)Lcom/cisco/android/nchs/ipc/IPCServerThread;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCServerThread;->signalRequestedOperationCompleted(Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper$1;->this$0:Lcom/cisco/android/nchs/support/VpnBuilderWrapper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->-$$Nest$fputmService(Lcom/cisco/android/nchs/support/VpnBuilderWrapper;Lcom/cisco/android/nchs/aidl/IICSSupportService;)V

    return-void
.end method

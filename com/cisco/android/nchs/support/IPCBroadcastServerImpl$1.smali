.class Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$1;
.super Ljava/lang/Object;
.source "IPCBroadcastServerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$1;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 108
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportPackageEvent: added="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$1;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {v2}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmAddedApps(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " removed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$1;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {v2}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmRemovedApps(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " replaced="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$1;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {v2}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmReplacedApps(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IPCBroadcastServerBase"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$1;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    new-instance v1, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage;

    iget-object v2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$1;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {v2}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmAddedApps(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$1;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {v3}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmRemovedApps(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$1;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {v4}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmReplacedApps(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v0, v1}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->access$101(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;)V

    .line 110
    iget-object v0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$1;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmAddedApps(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 111
    iget-object v0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$1;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmRemovedApps(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 112
    iget-object v0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$1;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmReplacedApps(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.class Lcom/cisco/android/nchs/support/SystemPrivProxy$1;
.super Ljava/lang/Object;
.source "SystemPrivProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/android/nchs/support/SystemPrivProxy;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/support/SystemPrivProxy;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/support/SystemPrivProxy;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy$1;->this$0:Lcom/cisco/android/nchs/support/SystemPrivProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "SystemPrivProxy"

    const-string v0, "onServiceConnected"

    .line 107
    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy$1;->this$0:Lcom/cisco/android/nchs/support/SystemPrivProxy;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/android/nchs/support/SystemPrivProxy;->-$$Nest$fputmSystemSupportService(Lcom/cisco/android/nchs/support/SystemPrivProxy;Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;)V

    .line 109
    iget-object p1, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy$1;->this$0:Lcom/cisco/android/nchs/support/SystemPrivProxy;

    monitor-enter p1

    .line 111
    :try_start_0
    iget-object p2, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy$1;->this$0:Lcom/cisco/android/nchs/support/SystemPrivProxy;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/cisco/android/nchs/support/SystemPrivProxy;->-$$Nest$fputmServiceConnected(Lcom/cisco/android/nchs/support/SystemPrivProxy;Z)V

    .line 112
    iget-object p2, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy$1;->this$0:Lcom/cisco/android/nchs/support/SystemPrivProxy;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 113
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "SystemPrivProxy"

    const-string v0, "onServiceDisconnected"

    .line 118
    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/cisco/android/nchs/ComponentStatusActivity$2;
.super Ljava/lang/Object;
.source "ComponentStatusActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/ComponentStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/ComponentStatusActivity;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/ComponentStatusActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/cisco/android/nchs/ComponentStatusActivity$2;->this$0:Lcom/cisco/android/nchs/ComponentStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "ComponentStatusActivity"

    const-string v0, "onServiceConnected"

    .line 70
    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/cisco/android/nchs/ComponentStatusActivity$2;->this$0:Lcom/cisco/android/nchs/ComponentStatusActivity;

    invoke-static {p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/android/nchs/ComponentStatusActivity;->-$$Nest$fputmService(Lcom/cisco/android/nchs/ComponentStatusActivity;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    .line 73
    iget-object p1, p0, Lcom/cisco/android/nchs/ComponentStatusActivity$2;->this$0:Lcom/cisco/android/nchs/ComponentStatusActivity;

    invoke-static {p1}, Lcom/cisco/android/nchs/ComponentStatusActivity;->-$$Nest$minitGUI(Lcom/cisco/android/nchs/ComponentStatusActivity;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "ComponentStatusActivity"

    const-string v0, "onServiceDisconnected"

    .line 80
    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/cisco/android/nchs/ComponentStatusActivity$2;->this$0:Lcom/cisco/android/nchs/ComponentStatusActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/android/nchs/ComponentStatusActivity;->-$$Nest$fputmService(Lcom/cisco/android/nchs/ComponentStatusActivity;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    .line 82
    iget-object p1, p0, Lcom/cisco/android/nchs/ComponentStatusActivity$2;->this$0:Lcom/cisco/android/nchs/ComponentStatusActivity;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ComponentStatusActivity;->finish()V

    return-void
.end method

.class Lcom/cisco/anyconnect/vpn/android/service/VpnService$3$1;
.super Ljava/lang/Object;
.source "VpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnService$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/service/VpnService$3;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService$3;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$3$1;->this$1:Lcom/cisco/anyconnect/vpn/android/service/VpnService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$3$1;->this$1:Lcom/cisco/anyconnect/vpn/android/service/VpnService$3;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 314
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cisco.anyconnect.vpn.android.UPDATE_WIDGET_CONFIG_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$3$1;->this$1:Lcom/cisco/anyconnect/vpn/android/service/VpnService$3;

    iget-object v2, v2, Lcom/cisco/anyconnect/vpn/android/service/VpnService$3;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-virtual {v2, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.class Lcom/cisco/anyconnect/vpn/android/service/VpnService$16;
.super Ljava/lang/Object;
.source "VpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnService;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4662
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$16;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$16;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$16;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 4665
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$16;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 4667
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$16;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$16;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$16;->val$value:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mbroadcastSettingChange(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/lang/String;Ljava/lang/String;)V

    .line 4668
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

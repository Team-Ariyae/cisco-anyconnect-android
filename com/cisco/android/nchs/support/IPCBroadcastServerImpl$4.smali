.class Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "IPCBroadcastServerImpl.java"


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

    .line 137
    iput-object p1, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$4;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 141
    invoke-static {p1}, Lcom/cisco/android/nchs/permissions/Prerequisites;->hasKnoxVpn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0xbb8

    .line 143
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "IPCBroadcastServerBase"

    if-eqz v0, :cond_1

    .line 145
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Received new network change intent."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$4;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {v0, p2}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fputmLastInterfaceEvent(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;Landroid/content/Intent;)V

    .line 147
    iget-object p2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$4;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {p2}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmHandler(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$4;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmReportNetworkEvent(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    iget-object p2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$4;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {p2}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmHandler(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$4;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmReportNetworkEvent(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Ljava/lang/Runnable;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 150
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$4;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmContext(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 157
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_5

    .line 158
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 160
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Battery saver turned off. Sending network change broadcast."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$4;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {v0, p2}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fputmLastInterfaceEvent(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;Landroid/content/Intent;)V

    .line 162
    iget-object p2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$4;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {p2}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmHandler(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$4;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmReportNetworkEvent(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    iget-object p2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$4;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {p2}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmHandler(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$4;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmReportNetworkEvent(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Ljava/lang/Runnable;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 166
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 168
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Received new locale changed intent."

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object p1, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$4;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {p1}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$monLocaleChanged(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)V

    goto :goto_1

    .line 171
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.cisco.android.nchs.VPN_REVOKED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 173
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Received VPN REVOKED intent"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$4;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    new-instance v0, Lcom/cisco/android/nchs/support/VpnRevokedIPCBroadcastMessage;

    invoke-direct {v0, p2}, Lcom/cisco/android/nchs/support/VpnRevokedIPCBroadcastMessage;-><init>(Landroid/content/Intent;)V

    invoke-static {p1, v0}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$mbroadcastMessage(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;)V

    goto :goto_1

    .line 177
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown intent: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

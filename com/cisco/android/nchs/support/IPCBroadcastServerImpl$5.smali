.class Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$5;
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

    .line 183
    iput-object p1, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$5;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 188
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-direct {v0, p1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->getVpnAllowedApps()Ljava/util/List;

    move-result-object p1

    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 194
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ddx Package added intent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IPCBroadcastServerBase"

    invoke-static {v1, v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Reporting installation of VPN allowed app:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "android.intent.extra.UID"

    const/4 v1, -0x1

    .line 201
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 202
    iget-object p2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$5;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {p2}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmAddedApps(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Ljava/util/Set;

    move-result-object p2

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/util/MultiUserUtils;->getUserFreeAppId(I)I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;-><init>(Ljava/lang/String;IZ)V

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object p1, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$5;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {p1}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmHandler(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$5;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {p2}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmReportPackageEvent(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    iget-object p1, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$5;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {p1}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmHandler(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$5;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {p2}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmReportPackageEvent(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

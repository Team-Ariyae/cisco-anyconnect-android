.class Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$7;
.super Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
.source "VpnFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Landroid/content/Context;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public OnServiceConnected(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 1

    const-string p1, "VpnFragment"

    const-string v0, "OnServiceConnected"

    .line 414
    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mfinishInitialize(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    return-void
.end method

.method public OnServiceDisconnected()V
    .locals 2

    const-string v0, "VpnFragment"

    const-string v1, "OnServiceDisconnected"

    .line 452
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fputmServiceReady(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Z)V

    return-void
.end method

.method public OnServiceWillDisconnect(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;ZLjava/lang/String;)V
    .locals 3

    const-string v0, "VpnFragment"

    .line 421
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmConnectionListener(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterConnectionListener(Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "UnregisterConnectionListener failed"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmInfoListener(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 428
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "UnregisterInfoListener failed"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmCertificateListener(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 433
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "UnregisterCertificateListener failed"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "RemoteException occurred while unregistering callbacks"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    .line 440
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 441
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p1, v0, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmParentActivity(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 444
    :cond_3
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$7;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmParentActivity(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_1
    return-void
.end method

.class Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;
.super Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V
    .locals 0

    .line 2526
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public Connect(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;I)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2529
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2531
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mconnect(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;ZI)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2532
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Disconnect(I)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2537
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2539
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mdisconnect(Lcom/cisco/anyconnect/vpn/android/service/VpnService;I)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2540
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public GetActiveConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 1

    .line 2723
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mgetActiveConnection(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v0

    return-object v0
.end method

.method public GetSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2545
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$misCallerPriviledged(Lcom/cisco/anyconnect/vpn/android/service/VpnService;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2547
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "VpnService"

    const-string v1, "GetSetting failed: caller is not privileged."

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 2551
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2553
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmSettingMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2554
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ImportServerCert([B)V
    .locals 2

    .line 2709
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$misCallerPriviledged(Lcom/cisco/anyconnect/vpn/android/service/VpnService;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2711
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "VpnService"

    const-string v1, "ImportServerCert failed: caller is not privileged."

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2715
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2717
    :try_start_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->ImportServerCert([B)V

    .line 2718
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public IsRevocationEnabled()Z
    .locals 4

    .line 2640
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2642
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->getCallingUid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$misCallerPriviledged(Lcom/cisco/anyconnect/vpn/android/service/VpnService;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2644
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnService"

    const-string v3, "Cannot get the revocation status since caller is not priviledged."

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2645
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 2647
    :cond_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->IsRevocationEnabled()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2648
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public IsSettingUserControllable(Ljava/lang/String;)Z
    .locals 3

    .line 2559
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$misCallerPriviledged(Lcom/cisco/anyconnect/vpn/android/service/VpnService;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2561
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "VpnService"

    const-string v1, "IsSettingEnabled failed: caller is not privileged."

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 2565
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2567
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmSettingMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "PREFERENCE_ENABLED_KEY"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "true"

    invoke-virtual {v1, p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2568
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2569
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public RegisterSettingListener(Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;)Z
    .locals 5

    .line 2666
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$misCallerPriviledged(Lcom/cisco/anyconnect/vpn/android/service/VpnService;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2668
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "VpnService"

    const-string v2, "RegisterSettingListener failed: caller is not privileged."

    invoke-static {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2672
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2674
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmSettingListenerList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    const-string v4, "setting"

    invoke-static {v2, v3, p1, v4, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mregisterListener(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2675
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public SetDefaultSetting(Ljava/lang/String;)Z
    .locals 2

    .line 2603
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$misCallerPriviledged(Lcom/cisco/anyconnect/vpn/android/service/VpnService;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2605
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "VpnService"

    const-string v1, "SetSetting failed: caller is not privileged."

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 2609
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2611
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmSettingMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->setDefaultSetting(Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2612
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public SetRevocationEnabled(Z)Z
    .locals 3

    .line 2627
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2629
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->getCallingUid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$misCallerPriviledged(Lcom/cisco/anyconnect/vpn/android/service/VpnService;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2631
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    const-string v2, "Not setting certificate revocation because caller is not priviledged."

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 2634
    :cond_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->SetRevocationEnabled(Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2635
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public SetSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 2574
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$misCallerPriviledged(Lcom/cisco/anyconnect/vpn/android/service/VpnService;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2576
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "VpnService"

    const-string v0, "SetSetting failed: caller is not privileged."

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 2580
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2582
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmSettingMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2583
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public SetSettingUserControllable(Ljava/lang/String;Z)Z
    .locals 3

    .line 2588
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$misCallerPriviledged(Lcom/cisco/anyconnect/vpn/android/service/VpnService;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2590
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "VpnService"

    const-string v0, "SetSettingUserControllable failed: caller is not privileged."

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 2594
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2596
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mbroadcastSettingUserControllableChange(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/lang/String;Z)V

    .line 2597
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmSettingMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "PREFERENCE_ENABLED_KEY"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2598
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public SetStrictMode(Z)Z
    .locals 3

    .line 2653
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2655
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->getCallingUid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$misCallerPriviledged(Lcom/cisco/anyconnect/vpn/android/service/VpnService;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2657
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    const-string v2, "Not setting strict certificate trust mode because caller is not priviledged."

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2658
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 2660
    :cond_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->SetStrictMode(Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2661
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ShowKnoxReconnectNotification(Z)V
    .locals 3

    .line 2701
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2703
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mshowVPNConnectionRequiredNotification(Lcom/cisco/anyconnect/vpn/android/service/VpnService;ZZ)V

    .line 2704
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public UnregisterSettingListener(Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;)Z
    .locals 5

    .line 2680
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2682
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmSettingListenerList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    const-string v3, "setting"

    const/4 v4, 0x1

    invoke-static {v1, v2, p1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mregisterListener(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2683
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBlockedApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2622
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmBlockedApps(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectClientType()I
    .locals 1

    .line 2696
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmDisconnectClientType(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)I

    move-result v0

    return v0
.end method

.method public getTunneledApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2617
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmTunneledApps(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isDisconnected()Z
    .locals 3

    .line 2688
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2690
    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmStateMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmStateMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetConnectProgressState()Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2691
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

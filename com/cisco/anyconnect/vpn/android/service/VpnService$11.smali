.class Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;
.super Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;
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

    .line 2731
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ClearAppMessages()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3099
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3101
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmRecentNotices(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3103
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmRecentNotices(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;->clear()V

    .line 3105
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public Connect(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2925
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2927
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, p1, v3, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mconnect(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;ZI)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    .line 2928
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    if-ne p1, v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    .line 2929
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ConnectWithPrefill(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;)Z
    .locals 4

    .line 2934
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2936
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, p1, v3, p2, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mconnect(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;ZLcom/cisco/anyconnect/vpn/jni/JniHashMap;I)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    .line 2937
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    if-ne p1, p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    .line 2938
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public DeleteCertificates(ILjava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3231
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    if-nez p2, :cond_0

    .line 3235
    :try_start_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "VpnService"

    const-string v1, "Unexpected null certificate list"

    invoke-static {p1, p2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3236
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 3239
    :cond_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->DeleteCertificates(ILjava/util/List;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3240
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public DeleteCurrentProfile()Z
    .locals 2

    .line 3188
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3190
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mdeleteCurrentProfile(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3191
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public Disconnect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2943
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2945
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mdisconnect(Lcom/cisco/anyconnect/vpn/android/service/VpnService;I)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 2946
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 2947
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public EnableStateNotifications(Z)V
    .locals 2

    .line 3131
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3133
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$menableStateNotifications(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Z)V

    .line 3134
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public EnumerateCertificates(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3214
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3216
    :try_start_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->EnumerateCertificates(I)Ljava/util/List;

    move-result-object p1

    .line 3217
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3218
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;

    .line 3220
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;

    invoke-direct {v3, v2}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;-><init>(Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;)V

    .line 3221
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3224
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 3225
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public GetActiveLocale()Ljava/lang/String;
    .locals 2

    .line 3307
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3309
    :try_start_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->GetActiveLocale()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3310
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public GetAnyConnectVersion()Ljava/lang/String;
    .locals 3

    .line 3261
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3263
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const v2, 0x7f11010d

    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getString(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3264
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public GetAppMessages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3084
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3086
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmRecentNotices(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3088
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmRecentNotices(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3092
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3094
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public GetAvailableLocales()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3299
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3301
    :try_start_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->GetAvailableLocales()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3302
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public GetClientCertificates()Z
    .locals 2

    .line 3123
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3125
    :try_start_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->GetClientCertificates()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3126
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3110
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3112
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmConnList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3113
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public GetCurrentProfileContents()Ljava/lang/String;
    .locals 3

    .line 3196
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3198
    :try_start_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    const-string v2, "profile.xml"

    invoke-interface {v1, v2}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->GetProfileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3199
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public GetDefaultHostname()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2958
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2960
    :try_start_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->GetDefaultHostname()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2961
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public GetErrorString(Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2952
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mgetErrorString(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetHostnames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2967
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2969
    :try_start_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->GetHostnames()Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2970
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public GetLastStats()Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;
    .locals 2

    .line 3139
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3141
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmLastStats(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3142
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public GetPreferences()Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2975
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2977
    :try_start_0
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->GetPreferences()Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2978
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;
    .locals 2

    .line 3329
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$misCallerPriviledged(Lcom/cisco/anyconnect/vpn/android/service/VpnService;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3334
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmPrivateVpnServiceImpl(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;

    move-result-object v0

    return-object v0
.end method

.method public GetVpnLogger()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public GetVpnServiceVersion()I
    .locals 2

    .line 3249
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3251
    :try_start_0
    monitor-exit v0

    const/4 v0, 0x3

    return v0

    :catchall_0
    move-exception v1

    .line 3252
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ImportPKCS12WithPassword([BLjava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 3

    .line 3166
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 3168
    :try_start_0
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3174
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mrequestImportPKCS12(Lcom/cisco/anyconnect/vpn/android/service/VpnService;[BZLjava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3170
    :cond_1
    :goto_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "VpnService"

    const-string v1, "Unexpected null or empty data"

    invoke-static {p1, p2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3171
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->OPERATION_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3175
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ImportProfile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3205
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3207
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mimportProfileToApi(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3208
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ImportServerL10nData(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 2

    .line 3277
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3285
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mimportServerL10nData(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3281
    :cond_1
    :goto_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "VpnService"

    const-string v1, "Unexpected null input."

    invoke-static {p1, p2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3282
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->OPERATION_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3286
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public IsConnected()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2983
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2985
    :try_start_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->IsConnected()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2986
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public IsOperatingMode(Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;)Z
    .locals 2

    .line 3291
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3293
    :try_start_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;->getOperatingMode()Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->IsOperatingMode(Lcom/cisco/anyconnect/vpn/jni/OperatingMode;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3294
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public IsVpnServiceAvailable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2992
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2994
    :try_start_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->IsVpnServiceAvailable()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2995
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public RegisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2829
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2831
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmCertListenerList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    const-string v3, "certificates"

    const/4 v4, 0x0

    invoke-static {v1, v2, p1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mregisterListener(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2832
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public RegisterConnectionListener(Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;)Z
    .locals 5

    .line 2813
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2815
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmConnectionListenerList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    const-string v3, "connection"

    const/4 v4, 0x0

    invoke-static {v1, v2, p1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mregisterListener(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2816
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public RegisterImportListener(Lcom/cisco/anyconnect/vpn/android/service/IImportListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2845
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2847
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmImportListener(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    const-string v3, "import"

    const/4 v4, 0x0

    invoke-static {v1, v2, p1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mregisterListener(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2848
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public RegisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z
    .locals 5

    .line 2861
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2863
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmInfoListenerList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    const-string v3, "info"

    const/4 v4, 0x0

    invoke-static {v1, v2, p1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mregisterListener(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;Z)Z

    move-result v1

    .line 2865
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmStateMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->UnicastClient(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)V

    .line 2867
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 2868
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public RegisterLogListener(Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;)Z
    .locals 5

    .line 2797
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2799
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmLogListenerList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    const-string v3, "logging"

    const/4 v4, 0x0

    invoke-static {v1, v2, p1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mregisterListener(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2800
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public RegisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z
    .locals 4

    .line 2881
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 2885
    :try_start_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    const-string/jumbo v2, "unexpected NULL IPromptHandler"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2886
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 2889
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmPromptHandlerMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->registerPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2892
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnService"

    const-string v3, "prompt handler registration failed"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    :cond_1
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2899
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2900
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public RegisterServiceStateListener(Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;)Z
    .locals 6

    .line 2734
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2736
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmServiceStateListenerList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    const-string v3, "shutdown"

    const/4 v4, 0x0

    invoke-static {v1, v2, p1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mregisterListener(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2739
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$misShuttingDown(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 2743
    :try_start_1
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmShutDownMsg(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;->ServiceShutdownCB(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2747
    :try_start_2
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "VpnService"

    const-string v5, "ServiceShutdownCB failed."

    invoke-static {v3, v4, v5, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 2754
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmIsAttached(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 2758
    :try_start_3
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;->ServiceReadyCB()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 2762
    :try_start_4
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "VpnService"

    const-string v4, "RemoteException when trying to call ServiceReadyCB"

    invoke-static {v2, v3, v4, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2767
    :cond_1
    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 2768
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public RegisterStatsListener(Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;)Z
    .locals 5

    .line 2781
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2783
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmStatsListenerList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    const-string v3, "statistics"

    const/4 v4, 0x0

    invoke-static {v1, v2, p1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mregisterListener(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2784
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public RequestImportPKCS12([B)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 4

    .line 3152
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3154
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mrequestImportPKCS12(Lcom/cisco/anyconnect/vpn/android/service/VpnService;[BZLjava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public RestoreDefaultL10nData()Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3269
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3271
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mrestoreDefaultL10n(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Z)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3272
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public SavePreferences(Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3000
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3002
    :try_start_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->SavePreferences(Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3003
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public SetBannerResponse(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3009
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3011
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mclearCurrentPrompt(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V

    .line 3013
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mshowVPNConnectionRequiredNotification(Lcom/cisco/anyconnect/vpn/android/service/VpnService;ZZ)V

    if-nez p1, :cond_1

    .line 3016
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmStateMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->onInitiateConnectCancelled()V

    .line 3019
    :cond_1
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmStateMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->ClearConnectingPrompt(Z)V

    .line 3021
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->SetBannerResponse(Z)V

    if-nez p1, :cond_2

    .line 3024
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmOnFailureUriList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mprocessUriParams(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/util/List;)V

    .line 3026
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public SetCertBannerResponse(ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3032
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 3034
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->getCallingUid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$misCallerPriviledged(Lcom/cisco/anyconnect/vpn/android/service/VpnService;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3036
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnService"

    const-string v3, "Not importing server certificate because client is not priviledged."

    invoke-static {p2, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 3040
    :cond_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mclearCurrentPrompt(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V

    .line 3042
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    if-nez p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mshowVPNConnectionRequiredNotification(Lcom/cisco/anyconnect/vpn/android/service/VpnService;ZZ)V

    if-nez p1, :cond_2

    .line 3045
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmStateMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->onInitiateConnectCancelled()V

    .line 3048
    :cond_2
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmStateMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->ClearConnectingPrompt(Z)V

    .line 3049
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->SetCertBannerResponse(ZZ)V

    if-nez p1, :cond_3

    .line 3050
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;->CONNECT:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmCurrentlyProcessingUri(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    move-result-object p2

    if-ne p1, p2, :cond_3

    .line 3052
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmOnFailureUriList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mprocessUriParams(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/util/List;)V

    .line 3054
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public SetFipsMode(Z)Z
    .locals 3

    .line 3315
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3317
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->getCallingUid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$misCallerPriviledged(Lcom/cisco/anyconnect/vpn/android/service/VpnService;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3319
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    const-string v2, "Not setting FIPS mode because caller is not priviledged."

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3320
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 3323
    :cond_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->SetFipsMode(Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3324
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public SetNewTunnelGroup(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3069
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set new tunnel group: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3070
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 3074
    :try_start_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    const-string v2, "Unexpected null group name"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3075
    monitor-exit v0

    return-void

    .line 3078
    :cond_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->SetNewTunnelGroup(Ljava/lang/String;)V

    .line 3079
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ShutdownService(Ljava/lang/String;)V
    .locals 3

    .line 3180
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3182
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$minitiateShutdown(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/lang/String;Z)V

    .line 3183
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public UnregisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2837
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2839
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmCertListenerList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    const-string v3, "certificates"

    const/4 v4, 0x1

    invoke-static {v1, v2, p1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mregisterListener(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2840
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public UnregisterConnectionListener(Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;)Z
    .locals 5

    .line 2821
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2823
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmConnectionListenerList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    const-string v3, "connection"

    const/4 v4, 0x1

    invoke-static {v1, v2, p1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mregisterListener(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2824
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public UnregisterImportListener(Lcom/cisco/anyconnect/vpn/android/service/IImportListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2853
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2855
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmImportListener(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    const-string v3, "import"

    const/4 v4, 0x1

    invoke-static {v1, v2, p1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mregisterListener(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2856
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public UnregisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z
    .locals 5

    .line 2873
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2875
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmInfoListenerList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    const-string v3, "info"

    const/4 v4, 0x1

    invoke-static {v1, v2, p1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mregisterListener(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2876
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public UnregisterLogListener(Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;)Z
    .locals 5

    .line 2805
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2807
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmLogListenerList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    const-string v3, "logging"

    const/4 v4, 0x1

    invoke-static {v1, v2, p1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mregisterListener(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2808
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public UnregisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z
    .locals 4

    .line 2905
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 2909
    :try_start_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    const-string/jumbo v2, "unexpected NULL IPromptHandler"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2910
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 2913
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmPromptHandlerMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->unregisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2916
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnService"

    const-string v3, "prompt handler unregistration failed"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2919
    :cond_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2920
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public UnregisterServiceStateListener(Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;)Z
    .locals 5

    .line 2773
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2775
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmServiceStateListenerList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    const-string v3, "shutdown"

    const/4 v4, 0x1

    invoke-static {v1, v2, p1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mregisterListener(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2776
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public UnregisterStatsListener(Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;)Z
    .locals 5

    .line 2789
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 2791
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmStatsListenerList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    const-string v3, "statistics"

    const/4 v4, 0x1

    invoke-static {v1, v2, p1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mregisterListener(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2792
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public UserSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3060
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 3062
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$muserSubmit(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V

    .line 3063
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method synthetic lambda$RegisterPromptHandler$0$com-cisco-anyconnect-vpn-android-service-VpnService$11()V
    .locals 1

    .line 2896
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->applyRestrictions()V

    return-void
.end method

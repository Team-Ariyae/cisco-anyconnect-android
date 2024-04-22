.class public Lcom/cisco/android/nchs/support/VpnBuilderWrapper;
.super Ljava/lang/Object;
.source "VpnBuilderWrapper.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "VpnBuilderWrapper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIPCServer:Lcom/cisco/android/nchs/ipc/IPCServerThread;

.field private mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIPCServer(Lcom/cisco/android/nchs/support/VpnBuilderWrapper;)Lcom/cisco/android/nchs/ipc/IPCServerThread;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mIPCServer:Lcom/cisco/android/nchs/ipc/IPCServerThread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/cisco/android/nchs/support/VpnBuilderWrapper;Lcom/cisco/android/nchs/aidl/IICSSupportService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cisco/android/nchs/ipc/IPCServerThread;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper$1;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper$1;-><init>(Lcom/cisco/android/nchs/support/VpnBuilderWrapper;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 67
    iput-object p1, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mIPCServer:Lcom/cisco/android/nchs/ipc/IPCServerThread;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid null args passed to vpnbuilderwrapper"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public Destroy()V
    .locals 5

    const-string v0, "VpnBuilderWrapper"

    .line 401
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->isVpnServiceStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cisco.anyconnect.vpn.android.support.ics.ICSSupportService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    iget-object v2, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    iget-object v2, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 406
    iget-object v2, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "stopService failed for ICSSupportService"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 415
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to stop ICSSupportService: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public addAddress(Ljava/lang/String;I)Z
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addAddress: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VpnBuilderWrapper"

    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    invoke-interface {v0, p1, p2}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->addAddress(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 85
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "RemoteException"

    invoke-static {p2, v1, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public addAppIds(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    invoke-interface {v0, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->addAppIds(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 466
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnBuilderWrapper"

    const-string v2, "addAppRules failed"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public addDnsServer(Ljava/lang/String;)Z
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addDnsServer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VpnBuilderWrapper"

    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    invoke-interface {v0, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->addDnsServer(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 99
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RemoteException"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public addRoute(Ljava/lang/String;IZ)Z
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addRoute "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VpnBuilderWrapper"

    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    invoke-interface {v0, p1, p2, p3}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->addRoute(Ljava/lang/String;IZ)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 126
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "RemoteException"

    invoke-static {p2, v1, p3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public addSearchDomain(Ljava/lang/String;)Z
    .locals 3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addSearchDomain "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VpnBuilderWrapper"

    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    invoke-interface {v0, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->addSearchDomain(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 140
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RemoteException"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public allowFamily(I)Z
    .locals 3

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    invoke-interface {v0, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->allowFamily(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 112
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnBuilderWrapper"

    const-string v2, "RemoteException"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public establish()Landroid/os/ParcelFileDescriptor;
    .locals 4

    const-string v0, "establish"

    const-string v1, "VpnBuilderWrapper"

    .line 152
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    invoke-interface {v0}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 159
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "RemoteException"

    invoke-static {v2, v1, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isIPv4SplitExcludeFailed()Z
    .locals 4

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    invoke-interface {v0}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->isIPv4SplitExcludeFailed()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 171
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnBuilderWrapper"

    const-string v3, "RemoteException"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isIPv6SplitExcludeFailed()Z
    .locals 4

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    invoke-interface {v0}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->isIPv6SplitExcludeFailed()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 183
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnBuilderWrapper"

    const-string v3, "RemoteException"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isKnoxManagedAppTunnel()Z
    .locals 4

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    invoke-interface {v0}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->isKnoxManagedAppTunnel()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 454
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnBuilderWrapper"

    const-string v3, "isKnoxManagedAppTunnel failed"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isKnoxMetaEnabled()Z
    .locals 4

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    invoke-interface {v0}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->isKnoxMetaEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 441
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnBuilderWrapper"

    const-string v3, "isKnoxMetaEnabled failed"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isVpnServiceStarted()Z
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepare(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    const-string p1, "prepare"

    const-string v0, "VpnBuilderWrapper"

    .line 199
    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :try_start_0
    iget-object p1, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    invoke-interface {p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->prepare()Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 206
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RemoteException"

    invoke-static {v1, v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public protect(Ljava/io/FileDescriptor;)Z
    .locals 4

    const-string v0, "protect"

    const-string v1, "VpnBuilderWrapper"

    .line 231
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {p1}, Lcom/cisco/android/nchs/support/reflection/ICSApiReflection$ParcelFileDescriptorReflector;->dupFD(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 235
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "dup failed"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 242
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    invoke-interface {v3, v0}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->protect(Landroid/os/ParcelFileDescriptor;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 251
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to close duped fd"

    .line 253
    invoke-static {p0, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 259
    :try_start_2
    invoke-static {p1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "Failed to close marshalled fd"

    .line 261
    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return v1

    :catch_2
    move-exception p1

    .line 245
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "RemoteException"

    invoke-static {v0, v1, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public restore()V
    .locals 4

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    invoke-interface {v0}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->restore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 219
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnBuilderWrapper"

    const-string v3, "RemoteException"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setConfigureIntent(Landroid/app/PendingIntent;)Z
    .locals 3

    const-string v0, "setConfigureIntent"

    const-string v1, "VpnBuilderWrapper"

    .line 276
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    invoke-interface {v0, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->setConfigureIntent(Landroid/app/PendingIntent;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 283
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RemoteException"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setDirectProxy(Ljava/lang/String;ILjava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "setDirectProxy"

    const-string v1, "VpnBuilderWrapper"

    .line 334
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    invoke-interface {v0, p1, p2, p3}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->setDirectProxy(Ljava/lang/String;ILjava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 341
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "RemoteException"

    invoke-static {p2, v1, p3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setKnoxParams(Ljava/lang/String;Z)V
    .locals 2

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    invoke-interface {v0, p1, p2}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->setKnoxParams(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 428
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "VpnBuilderWrapper"

    const-string v1, "setRequestKnoxMeta failed"

    invoke-static {p2, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setMtu(I)Z
    .locals 3

    const-string v0, "setMtu"

    const-string v1, "VpnBuilderWrapper"

    .line 295
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    invoke-interface {v0, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->setMtu(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 302
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RemoteException"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setPACProxy(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "setPACProxy"

    const-string v1, "VpnBuilderWrapper"

    .line 348
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    invoke-interface {v0, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->setPACProxy(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 355
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RemoteException"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setSession(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "setSession"

    const-string v1, "VpnBuilderWrapper"

    .line 314
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    invoke-interface {v0, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->setSession(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 321
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RemoteException"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public startVpnService()Z
    .locals 6

    const-string v0, "startVpnService"

    const-string v1, "VpnBuilderWrapper"

    .line 362
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mService:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mIPCServer:Lcom/cisco/android/nchs/ipc/IPCServerThread;

    invoke-virtual {v0, v2}, Lcom/cisco/android/nchs/ipc/IPCServerThread;->signalRequestedOperationCompleted(Z)V

    return v2

    .line 371
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.cisco.anyconnect.vpn.android.support.ics.ICSSupportService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    iget-object v3, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mContext:Landroid/content/Context;

    const-class v4, Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    iget-object v3, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 375
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "could not start support service"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 379
    :cond_1
    iget-object v3, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cisco/android/nchs/support/VpnBuilderWrapper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v0, v5, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 381
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "could not bind to support service"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_2
    return v2
.end method

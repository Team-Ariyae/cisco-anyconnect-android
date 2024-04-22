.class public Lcom/cisco/anyconnect/nvm/observers/NetworkStateObserver;
.super Landroid/database/ContentObserver;
.source "NetworkStateObserver.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NetworkStateObserver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNetUtils:Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/observers/NetworkStateObserver;->mContext:Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/observers/NetworkStateObserver;->mNetUtils:Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;

    if-eqz p2, :cond_0

    .line 52
    iput-object p2, p0, Lcom/cisco/anyconnect/nvm/observers/NetworkStateObserver;->mContext:Landroid/content/Context;

    .line 53
    new-instance p1, Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;

    invoke-direct {p1, p2}, Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/observers/NetworkStateObserver;->mNetUtils:Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context is required for NetworkStateObserver"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/cisco/anyconnect/nvm/observers/NetworkStateObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 8

    .line 64
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v0, "NetworkStateObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URI : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Encoded Query : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p2}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Encoded Path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/observers/NetworkStateObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 p1, 0x2

    new-array v2, p1, [Ljava/lang/String;

    const-string p1, "tnd_state"

    const/4 v6, 0x0

    aput-object p1, v2, v6

    const-string/jumbo p1, "vpn_state"

    const/4 v7, 0x1

    aput-object p1, v2, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string p2, "Undefined"

    const-string v0, "Undefined"

    if-eqz p1, :cond_3

    .line 74
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    :cond_0
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_0
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    .line 80
    :goto_1
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "NetworkStateObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TND State : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ---  VPN STATE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    :cond_3
    invoke-static {}, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->getInstance()Lcom/cisco/anyconnect/nvm/common/VPNSharedState;

    move-result-object p1

    .line 87
    const-class v1, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;

    monitor-enter v1

    .line 89
    :try_start_0
    invoke-virtual {p1}, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->getNetworkType()Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    move-result-object v2

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;->getByType(Ljava/lang/String;)Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    move-result-object v3

    if-eq v2, v3, :cond_4

    .line 90
    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;->getByType(Ljava/lang/String;)Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->setNetworkType(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;)V

    const/4 v6, 0x1

    .line 94
    :cond_4
    invoke-virtual {p1}, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->getVpnConfig()Lcom/cisco/anyconnect/nvm/common/VpnConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/common/VpnConfig;->getState()Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    move-result-object v0

    invoke-static {p2}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->getByState(Ljava/lang/String;)Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    move-result-object v2

    if-eq v0, v2, :cond_5

    .line 95
    new-instance v0, Lcom/cisco/anyconnect/nvm/common/VpnConfig;

    invoke-direct {v0}, Lcom/cisco/anyconnect/nvm/common/VpnConfig;-><init>()V

    .line 96
    invoke-static {p2}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->getByState(Ljava/lang/String;)Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cisco/anyconnect/nvm/common/VpnConfig;->setState(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;)V

    .line 97
    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->setVpnConfig(Lcom/cisco/anyconnect/nvm/common/VpnConfig;)V

    .line 98
    sget-object v2, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->STATE_CONNECTED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    invoke-static {p2}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->getByState(Ljava/lang/String;)Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    move-result-object p2

    if-ne v2, p2, :cond_6

    .line 99
    iget-object p2, p0, Lcom/cisco/anyconnect/nvm/observers/NetworkStateObserver;->mNetUtils:Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->getVpnConfig()Lcom/cisco/anyconnect/nvm/common/VpnConfig;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;->setVpnAddress(Lcom/cisco/anyconnect/nvm/common/VpnConfig;)V

    .line 100
    iget-object p2, p0, Lcom/cisco/anyconnect/nvm/observers/NetworkStateObserver;->mNetUtils:Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;

    invoke-virtual {p2, v0}, Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;->populateDNSAddressesForVPNNetwork(Lcom/cisco/anyconnect/nvm/common/VpnConfig;)V

    goto :goto_2

    :cond_5
    move v7, v6

    :cond_6
    :goto_2
    if-nez v7, :cond_7

    .line 107
    monitor-exit v1

    return-void

    .line 109
    :cond_7
    sget-object p2, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;->NIFCHANGE_NONE:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->setNetworkInterfaceChange(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NetworkInterfaceChange;)V

    .line 110
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :try_start_1
    invoke-static {}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->getInstance()Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->notifyStateChange(Lcom/cisco/anyconnect/nvm/common/VPNSharedState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 114
    sget-object p2, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v0, "NetworkStateObserver"

    const-string v1, "Error Occured while notifiying state change "

    invoke-static {p2, v0, v1, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :catchall_0
    move-exception p1

    .line 110
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

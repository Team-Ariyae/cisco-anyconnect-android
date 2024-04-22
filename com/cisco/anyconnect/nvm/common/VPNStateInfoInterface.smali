.class public Lcom/cisco/anyconnect/nvm/common/VPNStateInfoInterface;
.super Ljava/lang/Object;
.source "VPNStateInfoInterface.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "VPNStateInfoInterface"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNetUtils:Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/common/VPNStateInfoInterface;->mContext:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/common/VPNStateInfoInterface;->mNetUtils:Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;

    if-eqz p1, :cond_0

    .line 42
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/VPNStateInfoInterface;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;

    invoke-direct {v0, p1}, Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/common/VPNStateInfoInterface;->mNetUtils:Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Context is required for VPNStateInfoInterface"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clean()I
    .locals 4

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/common/VPNStateInfoInterface;->unregisterVPNStateInfoInterface()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 72
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "VPNStateInfoInterface"

    const-string v3, " Error while unregistering Vpn State info interface "

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public init()I
    .locals 4

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/common/VPNStateInfoInterface;->registerVPNStateInfoInterface()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "VPNStateInfoInterface"

    const-string v3, " Error while registering Vpn State info interface "

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public readVPNState()Lcom/cisco/anyconnect/nvm/common/VPNSharedState;
    .locals 9

    .line 84
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/common/VPNStateInfoInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://com.cisco.android.nchs.networkstateprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "tnd_state"

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const-string/jumbo v0, "vpn_state"

    const/4 v8, 0x1

    aput-object v0, v3, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "Undefined"

    const-string v2, "Undefined"

    if-eqz v0, :cond_3

    .line 91
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    :cond_0
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    :goto_0
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    :goto_1
    sget-object v3, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v4, "VPNStateInfoInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "TND State : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ---  VPN STATE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    :cond_3
    invoke-static {}, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->getInstance()Lcom/cisco/anyconnect/nvm/common/VPNSharedState;

    move-result-object v0

    .line 103
    const-class v3, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;

    monitor-enter v3

    .line 104
    :try_start_0
    invoke-static {v2}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;->getByType(Ljava/lang/String;)Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->setNetworkType(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NETWORK_TYPE;)V

    .line 105
    new-instance v2, Lcom/cisco/anyconnect/nvm/common/VpnConfig;

    invoke-direct {v2}, Lcom/cisco/anyconnect/nvm/common/VpnConfig;-><init>()V

    .line 106
    invoke-static {v1}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->getByState(Ljava/lang/String;)Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cisco/anyconnect/nvm/common/VpnConfig;->setState(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;)V

    .line 107
    invoke-virtual {v0, v2}, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->setVpnConfig(Lcom/cisco/anyconnect/nvm/common/VpnConfig;)V

    .line 108
    invoke-static {v1}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->getByState(Ljava/lang/String;)Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    move-result-object v1

    sget-object v4, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;->STATE_CONNECTED:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$STATE;

    if-ne v1, v4, :cond_4

    .line 109
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/common/VPNStateInfoInterface;->mNetUtils:Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/common/VPNSharedState;->getVpnConfig()Lcom/cisco/anyconnect/nvm/common/VpnConfig;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;->setVpnAddress(Lcom/cisco/anyconnect/nvm/common/VpnConfig;)V

    .line 110
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/common/VPNStateInfoInterface;->mNetUtils:Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;

    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;->populateDNSAddressesForVPNNetwork(Lcom/cisco/anyconnect/nvm/common/VpnConfig;)V

    .line 113
    :cond_4
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/common/VPNStateInfoInterface;->mNetUtils:Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;

    invoke-virtual {v1, v0}, Lcom/cisco/anyconnect/nvm/utils/NVMNetUtils;->populateNetworkInfo(Lcom/cisco/anyconnect/nvm/common/VPNSharedState;)V

    .line 114
    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public native registerVPNStateInfoInterface()I
.end method

.method public native unregisterVPNStateInfoInterface()I
.end method

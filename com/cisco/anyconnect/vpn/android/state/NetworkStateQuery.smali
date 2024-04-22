.class public Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;
.super Ljava/lang/Object;
.source "NetworkStateQuery.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAlwaysOnStartTime()J
    .locals 3

    const-string v0, "always_on_start_time"

    const-wide/16 v1, 0x0

    .line 63
    invoke-virtual {p0, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 8

    .line 77
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://com.cisco.android.nchs.networkstateprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v3, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 81
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 84
    :cond_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/Class;Ljava/lang/String;)V

    return v7
.end method

.method public getConnectProgressState()Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;
    .locals 2

    const-string v0, "connect_progress_state"

    const/4 v1, 0x0

    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 201
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    return-object v0

    .line 204
    :cond_0
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    move-result-object v0

    return-object v0
.end method

.method public getInitateConnectState()Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;
    .locals 2

    .line 188
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;->Unknown:Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initiate_state"

    invoke-virtual {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;

    move-result-object v0

    return-object v0
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 7

    .line 102
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://com.cisco.android.nchs.networkstateprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1

    .line 109
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/Class;Ljava/lang/String;)V

    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 7

    .line 127
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://com.cisco.android.nchs.networkstateprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    return-wide p1

    .line 134
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/Class;Ljava/lang/String;)V

    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 152
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://com.cisco.android.nchs.networkstateprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 159
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/Class;Ljava/lang/String;)V

    return-object p2
.end method

.method public getVPNState()Lcom/cisco/anyconnect/vpn/jni/VPNState;
    .locals 3

    const-string/jumbo v0, "vpn_state"

    const/4 v1, 0x0

    .line 208
    invoke-virtual {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Null VPN state from network state provider, returning DISCONNECTED"

    .line 212
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    return-object v0

    .line 216
    :cond_0
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->getState(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v1

    if-nez v1, :cond_1

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown VPN state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", returning DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getVpnAllowedApps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "vpn_allowed_apps"

    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ","

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 177
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public isAlwaysOnEnabled()Z
    .locals 1

    const-string v0, "always_on"

    .line 60
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAlwaysOnEnabled(Z)Z
    .locals 3

    const-string v0, "always_on"

    .line 46
    invoke-virtual {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->updateBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v0

    :cond_0
    const-string v0, "always_on_start_time"

    if-eqz p1, :cond_1

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->updateLong(Ljava/lang/String;J)Z

    move-result p1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    .line 54
    invoke-virtual {p0, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->updateLong(Ljava/lang/String;J)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public setVpnAllowedApps(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, ","

    .line 168
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string/jumbo v0, "vpn_allowed_apps"

    .line 171
    invoke-virtual {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->updateString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateBoolean(Ljava/lang/String;Z)Z
    .locals 3

    .line 66
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "content://com.cisco.android.nchs.networkstateprovider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 70
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to update key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    return p2
.end method

.method public updateConnectProgressState(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)Z
    .locals 1

    const-string v0, "connect_progress_state"

    .line 193
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->updateString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateInitateConnectState(Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;)Z
    .locals 1

    const-string v0, "initiate_state"

    .line 184
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->updateString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateInteger(Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 3

    .line 91
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 92
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "content://com.cisco.android.nchs.networkstateprovider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 95
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to update key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    return p2
.end method

.method public updateLong(Ljava/lang/String;J)Z
    .locals 2

    .line 116
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 117
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "content://com.cisco.android.nchs.networkstateprovider"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result p3

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 120
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to update key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-static {p3, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    return p2
.end method

.method public updateString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 141
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 142
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "content://com.cisco.android.nchs.networkstateprovider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 145
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to update key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    return p2
.end method

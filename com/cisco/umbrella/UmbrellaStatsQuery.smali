.class public Lcom/cisco/umbrella/UmbrellaStatsQuery;
.super Ljava/lang/Object;
.source "UmbrellaStatsQuery.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/cisco/umbrella/UmbrellaStatsQuery;->mContext:Landroid/content/Context;

    return-void
.end method

.method private queryValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 44
    iget-object v0, p0, Lcom/cisco/umbrella/UmbrellaStatsQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/cisco/umbrella/util/Constant;->UMBRELLA_STATS_PROVIDER_AUTHORITY_URI:Landroid/net/Uri;

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

    .line 50
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 54
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get key = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/cisco/umbrella/UmbrellaStatsQuery;

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/Class;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method private updateValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 60
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 61
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object p2, p0, Lcom/cisco/umbrella/UmbrellaStatsQuery;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v1, Lcom/cisco/umbrella/util/Constant;->UMBRELLA_STATS_PROVIDER_AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 67
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 69
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to update value for key = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/cisco/umbrella/UmbrellaStatsQuery;

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    return p2
.end method


# virtual methods
.method public getAgentStatus()Lcom/cisco/umbrella/ui/states/AgentState;
    .locals 2

    const-string v0, "AgentStatus"

    .line 76
    invoke-direct {p0, v0}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/cisco/umbrella/ui/states/AgentState;->NO_ORGINFO:Lcom/cisco/umbrella/ui/states/AgentState;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/cisco/umbrella/ui/states/AgentState;->valueOf(Ljava/lang/String;)Lcom/cisco/umbrella/ui/states/AgentState;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAndroidID()Ljava/lang/String;
    .locals 1

    const-string v0, "Android ID"

    .line 103
    invoke-direct {p0, v0}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDns4EncryptionState()Lcom/cisco/umbrella/ui/states/EncryptionState;
    .locals 2

    const-string v0, "Dns4PEncryptedState"

    .line 112
    invoke-direct {p0, v0}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/cisco/umbrella/ui/states/EncryptionState;->UNKNOWN:Lcom/cisco/umbrella/ui/states/EncryptionState;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/cisco/umbrella/ui/states/EncryptionState;->valueOf(Ljava/lang/String;)Lcom/cisco/umbrella/ui/states/EncryptionState;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDns4ProtectionState()Lcom/cisco/umbrella/ui/states/ProtectionState;
    .locals 2

    const-string v0, "Dns4ProtectionState"

    .line 85
    invoke-direct {p0, v0}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/cisco/umbrella/ui/states/ProtectionState;->RESERVED:Lcom/cisco/umbrella/ui/states/ProtectionState;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/cisco/umbrella/ui/states/ProtectionState;->valueOf(Ljava/lang/String;)Lcom/cisco/umbrella/ui/states/ProtectionState;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEnvState()Ljava/lang/String;
    .locals 1

    const-string v0, "Environment"

    .line 129
    invoke-direct {p0, v0}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastConnectedTime()Ljava/lang/String;
    .locals 1

    const-string v0, "LastConnectedTime"

    .line 94
    invoke-direct {p0, v0}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoggingState()Lcom/cisco/umbrella/ui/states/LoggingState;
    .locals 1

    .line 121
    sget-object v0, Lcom/cisco/umbrella/ui/states/LoggingState;->ENABLED:Lcom/cisco/umbrella/ui/states/LoggingState;

    return-object v0
.end method

.method public updateAgentStatus(Lcom/cisco/umbrella/ui/states/AgentState;)Z
    .locals 1

    const-string v0, "AgentStatus"

    .line 81
    invoke-virtual {p1}, Lcom/cisco/umbrella/ui/states/AgentState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->updateValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateAndroidID(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object p1, Lcom/cisco/umbrella/ui/states/UIState;->NA:Lcom/cisco/umbrella/ui/states/UIState;

    invoke-virtual {p1}, Lcom/cisco/umbrella/ui/states/UIState;->getText()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "Android ID"

    .line 108
    invoke-direct {p0, v0, p1}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->updateValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateDns4EncryptionState(Lcom/cisco/umbrella/ui/states/EncryptionState;)Z
    .locals 1

    const-string v0, "Dns4PEncryptedState"

    .line 117
    invoke-virtual {p1}, Lcom/cisco/umbrella/ui/states/EncryptionState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->updateValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateDns4ProtectionState(Lcom/cisco/umbrella/ui/states/ProtectionState;)Z
    .locals 1

    const-string v0, "Dns4ProtectionState"

    .line 90
    invoke-virtual {p1}, Lcom/cisco/umbrella/ui/states/ProtectionState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->updateValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateEnvironment(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Environment"

    .line 133
    invoke-direct {p0, v0, p1}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->updateValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateLastConnectedTime(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object p1, Lcom/cisco/umbrella/ui/states/UIState;->NA:Lcom/cisco/umbrella/ui/states/UIState;

    invoke-virtual {p1}, Lcom/cisco/umbrella/ui/states/UIState;->getText()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "LastConnectedTime"

    .line 99
    invoke-direct {p0, v0, p1}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->updateValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateLoggingState(Lcom/cisco/umbrella/ui/states/LoggingState;)Z
    .locals 1

    const-string v0, "LogUploadEnabled"

    .line 125
    invoke-virtual {p1}, Lcom/cisco/umbrella/ui/states/LoggingState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->updateValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateUIStats(Lcom/cisco/umbrella/ui/states/EncryptionState;Lcom/cisco/umbrella/ui/states/ProtectionState;)Z
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->updateDns4EncryptionState(Lcom/cisco/umbrella/ui/states/EncryptionState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p0, p2}, Lcom/cisco/umbrella/UmbrellaStatsQuery;->updateDns4ProtectionState(Lcom/cisco/umbrella/ui/states/ProtectionState;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.class public Lcom/cisco/umbrella/UmbrellaStatsProvider;
.super Landroid/content/ContentProvider;
.source "UmbrellaStatsProvider.java"


# instance fields
.field private mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 42
    new-instance v0, Lcom/cisco/umbrella/UmbrellaStats;

    invoke-direct {v0}, Lcom/cisco/umbrella/UmbrellaStats;-><init>()V

    iput-object v0, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    return-void
.end method


# virtual methods
.method public declared-synchronized delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    monitor-enter p0

    .line 64
    monitor-exit p0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    monitor-enter p0

    .line 58
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    monitor-enter p0

    .line 69
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p3, 0x17

    if-ge p1, p3, :cond_0

    .line 70
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 73
    :cond_0
    :try_start_1
    new-instance p1, Landroid/database/MatrixCursor;

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p3

    .line 76
    array-length p4, p2

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_9

    aget-object v0, p2, p5

    const-string v1, "AgentStatus"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iget-object v1, v1, Lcom/cisco/umbrella/UmbrellaStats;->agentState:Lcom/cisco/umbrella/ui/states/AgentState;

    invoke-virtual {p3, v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_1

    :cond_1
    const-string v1, "Dns4ProtectionState"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iget-object v1, v1, Lcom/cisco/umbrella/UmbrellaStats;->dns4Protection:Lcom/cisco/umbrella/ui/states/ProtectionState;

    invoke-virtual {p3, v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_1

    :cond_2
    const-string v1, "LastConnectedTime"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    iget-object v1, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iget-object v1, v1, Lcom/cisco/umbrella/UmbrellaStats;->lastConnectedTime:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    :cond_3
    const-string v1, "Android ID"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    iget-object v1, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iget-object v1, v1, Lcom/cisco/umbrella/UmbrellaStats;->androidId:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    :cond_4
    const-string v1, "Ip4ProtectionState"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 86
    iget-object v1, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iget-object v1, v1, Lcom/cisco/umbrella/UmbrellaStats;->ipv4Protection:Lcom/cisco/umbrella/ui/states/ProtectionState;

    invoke-virtual {p3, v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    :cond_5
    const-string v1, "Dns4PEncryptedState"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 88
    iget-object v1, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iget-object v1, v1, Lcom/cisco/umbrella/UmbrellaStats;->dns4Encryption:Lcom/cisco/umbrella/ui/states/EncryptionState;

    invoke-virtual {p3, v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    :cond_6
    const-string v1, "LogUploadEnabled"

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 90
    iget-object v1, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iget-object v1, v1, Lcom/cisco/umbrella/UmbrellaStats;->logUploadEnabled:Lcom/cisco/umbrella/ui/states/LoggingState;

    invoke-virtual {p3, v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    :cond_7
    const-string v1, "Environment"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 92
    iget-object v1, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iget-object v1, v1, Lcom/cisco/umbrella/UmbrellaStats;->environment:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 94
    :cond_8
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-class v2, Lcom/cisco/umbrella/UmbrellaStatsProvider;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_0

    .line 98
    :cond_9
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    monitor-enter p0

    .line 103
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string p4, "AgentStatus"

    .line 107
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_3

    .line 108
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/cisco/umbrella/ui/states/AgentState;->valueOf(Ljava/lang/String;)Lcom/cisco/umbrella/ui/states/AgentState;

    move-result-object p4

    .line 109
    iget-object v2, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iget-object v2, v2, Lcom/cisco/umbrella/UmbrellaStats;->agentState:Lcom/cisco/umbrella/ui/states/AgentState;

    if-eq p4, v2, :cond_2

    .line 111
    iget-object v1, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    if-nez p4, :cond_1

    sget-object p4, Lcom/cisco/umbrella/ui/states/AgentState;->NO_ORGINFO:Lcom/cisco/umbrella/ui/states/AgentState;

    :cond_1
    iput-object p4, v1, Lcom/cisco/umbrella/UmbrellaStats;->agentState:Lcom/cisco/umbrella/ui/states/AgentState;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    goto/16 :goto_2

    :cond_3
    const-string p4, "Dns4ProtectionState"

    .line 113
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 114
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/cisco/umbrella/ui/states/ProtectionState;->valueOf(Ljava/lang/String;)Lcom/cisco/umbrella/ui/states/ProtectionState;

    move-result-object p4

    .line 115
    iget-object v2, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iget-object v2, v2, Lcom/cisco/umbrella/UmbrellaStats;->dns4Protection:Lcom/cisco/umbrella/ui/states/ProtectionState;

    if-eq p4, v2, :cond_2

    .line 117
    iget-object v1, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    if-nez p4, :cond_4

    sget-object p4, Lcom/cisco/umbrella/ui/states/ProtectionState;->RESERVED:Lcom/cisco/umbrella/ui/states/ProtectionState;

    :cond_4
    iput-object p4, v1, Lcom/cisco/umbrella/UmbrellaStats;->dns4Protection:Lcom/cisco/umbrella/ui/states/ProtectionState;

    goto :goto_1

    :cond_5
    const-string p4, "LastConnectedTime"

    .line 119
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 120
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 121
    iget-object v2, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iget-object v2, v2, Lcom/cisco/umbrella/UmbrellaStats;->lastConnectedTime:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 123
    iget-object v1, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iput-object p4, v1, Lcom/cisco/umbrella/UmbrellaStats;->lastConnectedTime:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string p4, "Android ID"

    .line 125
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 126
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 127
    iget-object v2, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iget-object v2, v2, Lcom/cisco/umbrella/UmbrellaStats;->androidId:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 129
    iget-object v1, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iput-object p4, v1, Lcom/cisco/umbrella/UmbrellaStats;->androidId:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string p4, "Ip4ProtectionState"

    .line 131
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 132
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/cisco/umbrella/ui/states/ProtectionState;->valueOf(Ljava/lang/String;)Lcom/cisco/umbrella/ui/states/ProtectionState;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 133
    iget-object v2, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iget-object v2, v2, Lcom/cisco/umbrella/UmbrellaStats;->ipv4Protection:Lcom/cisco/umbrella/ui/states/ProtectionState;

    invoke-virtual {p4, v2}, Lcom/cisco/umbrella/ui/states/ProtectionState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 135
    iget-object v1, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iput-object p4, v1, Lcom/cisco/umbrella/UmbrellaStats;->ipv4Protection:Lcom/cisco/umbrella/ui/states/ProtectionState;

    goto :goto_1

    :cond_8
    const-string p4, "Dns4PEncryptedState"

    .line 137
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    .line 138
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/cisco/umbrella/ui/states/EncryptionState;->valueOf(Ljava/lang/String;)Lcom/cisco/umbrella/ui/states/EncryptionState;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 139
    iget-object v2, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iget-object v2, v2, Lcom/cisco/umbrella/UmbrellaStats;->dns4Encryption:Lcom/cisco/umbrella/ui/states/EncryptionState;

    invoke-virtual {p4, v2}, Lcom/cisco/umbrella/ui/states/EncryptionState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 141
    iget-object v1, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iput-object p4, v1, Lcom/cisco/umbrella/UmbrellaStats;->dns4Encryption:Lcom/cisco/umbrella/ui/states/EncryptionState;

    goto/16 :goto_1

    :cond_9
    const-string p4, "LogUploadEnabled"

    .line 143
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 144
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/cisco/umbrella/ui/states/LoggingState;->valueOf(Ljava/lang/String;)Lcom/cisco/umbrella/ui/states/LoggingState;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 145
    iget-object v2, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iget-object v2, v2, Lcom/cisco/umbrella/UmbrellaStats;->logUploadEnabled:Lcom/cisco/umbrella/ui/states/LoggingState;

    invoke-virtual {p4, v2}, Lcom/cisco/umbrella/ui/states/LoggingState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 147
    iget-object v1, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iput-object p4, v1, Lcom/cisco/umbrella/UmbrellaStats;->logUploadEnabled:Lcom/cisco/umbrella/ui/states/LoggingState;

    goto/16 :goto_1

    :cond_a
    const-string p4, "Environment"

    .line 149
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b

    .line 150
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 151
    iget-object v2, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iget-object v2, v2, Lcom/cisco/umbrella/UmbrellaStats;->environment:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 153
    iget-object v1, p0, Lcom/cisco/umbrella/UmbrellaStatsProvider;->mUmbrellaStats:Lcom/cisco/umbrella/UmbrellaStats;

    iput-object p4, v1, Lcom/cisco/umbrella/UmbrellaStats;->environment:Ljava/lang/String;

    goto/16 :goto_1

    .line 156
    :cond_b
    sget-object p4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-class v0, Lcom/cisco/umbrella/UmbrellaStatsProvider;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/Class;Ljava/lang/String;)V

    :goto_2
    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/cisco/umbrella/UmbrellaStatsProvider;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    sget-object v0, Lcom/cisco/umbrella/util/Constant;->UMBRELLA_STATS_PROVIDER_AUTHORITY_URI:Landroid/net/Uri;

    invoke-static {v0, p3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p4, p3, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 164
    :cond_c
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

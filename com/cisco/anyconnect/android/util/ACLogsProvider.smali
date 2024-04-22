.class public Lcom/cisco/anyconnect/android/util/ACLogsProvider;
.super Landroid/content/ContentProvider;
.source "ACLogsProvider.java"


# static fields
.field private static mLogEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/cisco/anyconnect/android/util/ACLogModule;",
            "Lcom/cisco/anyconnect/android/util/LogBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    monitor-enter p0

    .line 131
    :try_start_0
    sget-object p1, Lcom/cisco/anyconnect/android/util/ACLogsProvider;->mLogEntries:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/anyconnect/android/util/ACLogModule;

    .line 133
    sget-object p3, Lcom/cisco/anyconnect/android/util/ACLogsProvider;->mLogEntries:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/anyconnect/android/util/LogBuffer;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/android/util/LogBuffer;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 136
    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    monitor-enter p0

    if-nez p2, :cond_0

    .line 149
    monitor-exit p0

    return-object p1

    .line 153
    :cond_0
    :try_start_0
    new-instance v0, Lcom/cisco/anyconnect/android/util/ACLogEntry;

    invoke-direct {v0}, Lcom/cisco/anyconnect/android/util/ACLogEntry;-><init>()V

    const-string v1, "module"

    .line 154
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cisco/anyconnect/android/util/ACLogEntry;->module:Ljava/lang/String;

    const-string v1, "processInfo"

    .line 155
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cisco/anyconnect/android/util/ACLogEntry;->processInfo:Ljava/lang/String;

    const-string v1, "tag"

    .line 156
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cisco/anyconnect/android/util/ACLogEntry;->tag:Ljava/lang/String;

    const-string v1, "severity"

    .line 157
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    move-result-object v1

    iput-object v1, v0, Lcom/cisco/anyconnect/android/util/ACLogEntry;->severity:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "time-ms"

    .line 158
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/cisco/anyconnect/android/util/ACLogEntry;->timeMs:J

    const-string v1, "message"

    .line 159
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/cisco/anyconnect/android/util/ACLogEntry;->message:Ljava/lang/String;

    .line 161
    sget-object p2, Lcom/cisco/anyconnect/android/util/ACLogsProvider;->mLogEntries:Ljava/util/HashMap;

    iget-object v1, v0, Lcom/cisco/anyconnect/android/util/ACLogEntry;->module:Ljava/lang/String;

    invoke-static {v1}, Lcom/cisco/anyconnect/android/util/ACLogModule;->getModule(Ljava/lang/String;)Lcom/cisco/anyconnect/android/util/ACLogModule;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/anyconnect/android/util/LogBuffer;

    invoke-virtual {p2, v0}, Lcom/cisco/anyconnect/android/util/LogBuffer;->add(Lcom/cisco/anyconnect/android/util/ACLogEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onCreate()Z
    .locals 7

    monitor-enter p0

    .line 112
    :try_start_0
    sget-object v0, Lcom/cisco/anyconnect/android/util/ACLogsProvider;->mLogEntries:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/android/util/ACLogsProvider;->mLogEntries:Ljava/util/HashMap;

    .line 115
    invoke-static {}, Lcom/cisco/anyconnect/android/util/ACLogModule;->values()[Lcom/cisco/anyconnect/android/util/ACLogModule;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 117
    sget-object v4, Lcom/cisco/anyconnect/android/util/ACLogsProvider;->mLogEntries:Ljava/util/HashMap;

    new-instance v5, Lcom/cisco/anyconnect/android/util/LogBuffer;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/android/util/ACLogModule;->getSize()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/cisco/anyconnect/android/util/LogBuffer;-><init>(I)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    monitor-enter p0

    .line 175
    :try_start_0
    new-instance p1, Landroid/database/MatrixCursor;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const-string p4, "log"

    const/4 p5, 0x0

    aput-object p4, p3, p5

    invoke-direct {p1, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 177
    array-length p3, p2

    :goto_0
    if-ge p5, p3, :cond_1

    aget-object p4, p2, p5

    .line 179
    sget-object v0, Lcom/cisco/anyconnect/android/util/ACLogsProvider;->mLogEntries:Ljava/util/HashMap;

    invoke-static {p4}, Lcom/cisco/anyconnect/android/util/ACLogModule;->getModule(Ljava/lang/String;)Lcom/cisco/anyconnect/android/util/ACLogModule;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/cisco/anyconnect/android/util/LogBuffer;

    invoke-virtual {p4}, Lcom/cisco/anyconnect/android/util/LogBuffer;->getAll()Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 185
    :cond_1
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

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

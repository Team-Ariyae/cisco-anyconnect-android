.class public Lcom/cisco/anyconnect/nvm/providers/PreferencesProvider;
.super Landroid/content/ContentProvider;
.source "PreferencesProvider.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "PreferencesProvider"


# instance fields
.field private final FALSE:Ljava/lang/String;

.field private columnNames:[Ljava/lang/String;

.field preferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "KEY"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "VALUE"

    aput-object v2, v0, v1

    .line 36
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/providers/PreferencesProvider;->columnNames:[Ljava/lang/String;

    const-string v0, "false"

    .line 37
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/providers/PreferencesProvider;->FALSE:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/providers/PreferencesProvider;->preferenceMap:Ljava/util/HashMap;

    return-void
.end method

.method private writeMapToFile()Z
    .locals 9

    const-string v0, "Error while initializing Content provider : "

    const-string v1, "PreferencesProvider"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/providers/PreferencesProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->getNVMPreferenceFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 165
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 166
    :try_start_1
    iget-object v4, p0, Lcom/cisco/anyconnect/nvm/providers/PreferencesProvider;->preferenceMap:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 167
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :try_start_2
    iget-object v3, p0, Lcom/cisco/anyconnect/nvm/providers/PreferencesProvider;->preferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_4

    :cond_0
    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_6

    :catch_1
    move-exception v4

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_4

    :cond_1
    move-object v5, v3

    :goto_1
    if-eqz v3, :cond_2

    .line 177
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_3

    :cond_2
    :goto_2
    if-eqz v5, :cond_4

    .line 178
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 180
    :goto_3
    sget-object v4, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    invoke-static {v4, v1, v0, v3}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_1
    move-exception v2

    move-object v5, v3

    goto :goto_6

    :catch_3
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    move-object v4, v5

    .line 173
    :goto_4
    :try_start_4
    sget-object v6, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v7, "Error while initializing Content provider"

    invoke-static {v6, v1, v7, v3}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_3

    .line 177
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    :cond_3
    if-eqz v5, :cond_4

    .line 178
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_5
    return v2

    :catchall_2
    move-exception v2

    move-object v3, v4

    :goto_6
    if-eqz v3, :cond_5

    .line 177
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_7

    :catch_4
    move-exception v3

    goto :goto_8

    :cond_5
    :goto_7
    if-eqz v5, :cond_6

    .line 178
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_9

    .line 180
    :goto_8
    sget-object v4, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    invoke-static {v4, v1, v0, v3}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    :cond_6
    :goto_9
    throw v2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const-string v1, "KEY"

    .line 120
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VALUE"

    .line 121
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 122
    const-class v2, Lcom/cisco/anyconnect/nvm/providers/PreferencesProvider;

    monitor-enter v2

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    :try_start_0
    monitor-exit v2

    return-object v0

    .line 125
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/cisco/anyconnect/nvm/providers/PreferencesProvider;->preferenceMap:Ljava/util/HashMap;

    if-eqz v3, :cond_4

    .line 126
    invoke-virtual {v3, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/providers/PreferencesProvider;->writeMapToFile()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v0

    .line 138
    :goto_1
    monitor-exit v2

    return-object p1

    .line 128
    :cond_4
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string p2, "PreferencesProvider"

    const-string v1, "Preference map is null"

    invoke-static {p1, p2, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p1

    .line 138
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onCreate()Z
    .locals 8

    const-string v0, "Error while initializing Content provider : "

    .line 42
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/providers/PreferencesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->migrateNVMFiles(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "PreferencesProvider"

    if-nez v1, :cond_0

    .line 43
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v3, "Migrate Failed"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/providers/PreferencesProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->getNVMPreferenceFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 54
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 56
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v4

    if-lez v4, :cond_1

    .line 58
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Lcom/cisco/anyconnect/nvm/providers/PreferencesProvider;->preferenceMap:Ljava/util/HashMap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, v4

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_7

    .line 63
    :cond_1
    :try_start_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/cisco/anyconnect/nvm/providers/PreferencesProvider;->preferenceMap:Ljava/util/HashMap;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v4, v1

    goto :goto_5

    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v4

    :goto_0
    move-object v7, v4

    move-object v4, v1

    move-object v1, v7

    goto :goto_7

    .line 67
    :cond_2
    :try_start_4
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/providers/PreferencesProvider;->writeMapToFile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 68
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/cisco/anyconnect/nvm/providers/PreferencesProvider;->preferenceMap:Ljava/util/HashMap;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v5, v1

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    move-object v5, v1

    :goto_2
    if-eqz v1, :cond_4

    .line 80
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz v5, :cond_6

    .line 81
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    .line 83
    :goto_4
    sget-object v4, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    invoke-static {v4, v2, v0, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :catchall_1
    move-exception v3

    move-object v4, v1

    move-object v5, v4

    :goto_5
    move-object v1, v3

    goto :goto_9

    :catch_5
    move-exception v4

    goto :goto_6

    :catch_6
    move-exception v4

    :goto_6
    move-object v5, v1

    move-object v1, v4

    move-object v4, v5

    .line 75
    :goto_7
    :try_start_6
    sget-object v6, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    invoke-static {v6, v2, v0, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_5

    .line 80
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    :cond_5
    if-eqz v5, :cond_6

    .line 81
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    :goto_8
    return v3

    :catchall_2
    move-exception v1

    :goto_9
    if-eqz v4, :cond_7

    .line 80
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_a

    :catch_7
    move-exception v3

    goto :goto_b

    :cond_7
    :goto_a
    if-eqz v5, :cond_8

    .line 81
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_c

    .line 83
    :goto_b
    sget-object v4, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    invoke-static {v4, v2, v0, v3}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    :cond_8
    :goto_c
    throw v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const/4 p1, 0x0

    if-eqz p4, :cond_3

    .line 94
    array-length p2, p4

    if-nez p2, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    const-class p2, Lcom/cisco/anyconnect/nvm/providers/PreferencesProvider;

    monitor-enter p2

    .line 97
    :try_start_0
    iget-object p3, p0, Lcom/cisco/anyconnect/nvm/providers/PreferencesProvider;->preferenceMap:Ljava/util/HashMap;

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    .line 98
    aget-object v0, p4, p5

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/providers/PreferencesProvider;->preferenceMap:Ljava/util/HashMap;

    aget-object p3, p4, p5

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 102
    :cond_1
    new-instance p3, Landroid/database/MatrixCursor;

    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/providers/PreferencesProvider;->columnNames:[Ljava/lang/String;

    invoke-direct {p3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 103
    invoke-virtual {p3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    const-string v1, "KEY"

    .line 104
    aget-object p4, p4, p5

    invoke-virtual {v0, v1, p4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string p4, "VALUE"

    .line 105
    invoke-virtual {v0, p4, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 106
    monitor-exit p2

    return-object p3

    .line 100
    :cond_2
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 106
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

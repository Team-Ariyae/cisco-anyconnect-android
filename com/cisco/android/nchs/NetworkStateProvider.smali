.class public Lcom/cisco/android/nchs/NetworkStateProvider;
.super Landroid/content/ContentProvider;
.source "NetworkStateProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final ENTITY_NAME:Ljava/lang/String; = "NetworkStateProvider"

.field private static final PREFERENCE_FILE:Ljava/lang/String; = "state_provider"


# instance fields
.field private clientV4Addr:Ljava/lang/String;

.field private clientV6Addr:Ljava/lang/String;

.field private connectProgressState:Ljava/lang/String;

.field private mEntryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mWarnedIncompat:Z

.field private tndState:Ljava/lang/String;

.field private vpnAllowedApps:Ljava/lang/String;

.field private vpnState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.cisco.android.nchs.networkstateprovider"

    .line 41
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cisco/android/nchs/NetworkStateProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->mWarnedIncompat:Z

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->vpnState:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->tndState:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->vpnAllowedApps:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->connectProgressState:Ljava/lang/String;

    .line 131
    new-instance v0, Lcom/cisco/android/nchs/NetworkStateProvider$1;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/NetworkStateProvider$1;-><init>(Lcom/cisco/android/nchs/NetworkStateProvider;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->mEntryMap:Ljava/util/Map;

    return-void
.end method

.method private loadPersistentEntries()V
    .locals 4

    .line 141
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkStateProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "state_provider"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->mEntryMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;

    .line 145
    invoke-virtual {v2}, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->persistKey:Ljava/lang/String;

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    invoke-virtual {v2, v0}, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->loadFromSharedPreferences(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkStateProvider;->logStateEntries()V

    return-void
.end method

.method private logStateEntries()V
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->mEntryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;

    iget-object v1, v1, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->value:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkStateProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private savePersistentEntries()V
    .locals 4

    .line 159
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkStateProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "state_provider"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->mEntryMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 162
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;

    invoke-virtual {v3}, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;

    invoke-virtual {v2, v0}, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->saveToSharedPreferences(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 166
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
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
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    .line 171
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkStateProvider;->loadPersistentEntries()V

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    monitor-enter p0

    .line 195
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x13

    if-ge p1, p3, :cond_1

    .line 196
    iget-boolean p1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->mWarnedIncompat:Z

    if-nez p1, :cond_0

    const-string p1, "NetworkStateProvider query not supported <API 19"

    .line 197
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 198
    iput-boolean p1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->mWarnedIncompat:Z

    .line 200
    :cond_0
    new-instance p1, Landroid/database/MatrixCursor;

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 203
    :cond_1
    :try_start_1
    new-instance p1, Landroid/database/MatrixCursor;

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p3

    .line 205
    array-length p4, p2

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_a

    aget-object v0, p2, p5

    const-string/jumbo v1, "vpn_state"

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->vpnState:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_2

    :cond_2
    const-string v1, "connect_progress_state"

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 209
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->connectProgressState:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_2

    :cond_3
    const-string v1, "tnd_state"

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 211
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->tndState:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_2

    :cond_4
    const-string v1, "nvm_profile"

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_6

    .line 215
    :try_start_2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkStateProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "profiles"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "NVM_ServiceProfile.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 218
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 223
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 226
    :cond_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 227
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 228
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 230
    :try_start_3
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "NetworkStateProvider"

    const-string p4, "Error reading NVM profile"

    invoke-static {p2, p3, p4, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_6
    :try_start_4
    const-string v1, "client_v4_address"

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 234
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->clientV4Addr:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_2

    :cond_7
    const-string v1, "client_v6_address"

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 236
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->clientV6Addr:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_2

    .line 237
    :cond_8
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->mEntryMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 238
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->mEntryMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;

    iget-object v1, v1, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->value:Ljava/lang/Object;

    invoke-virtual {p3, v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_2

    .line 240
    :cond_9
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "NetworkStateProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_0

    .line 244
    :cond_a
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    monitor-enter p0

    .line 250
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 252
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "vpn_state"

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->getState(Ljava/lang/Integer;)Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->vpnState:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    const-string v1, "Unknown"

    .line 258
    iput-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->vpnState:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    const-string v1, "connect_progress_state"

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 261
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 263
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->connectProgressState:Ljava/lang/String;

    goto/16 :goto_1

    .line 265
    :cond_2
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->connectProgressState:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v1, "tnd_state"

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 268
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/jni/NetworkType;->get(Ljava/lang/Integer;)Lcom/cisco/anyconnect/vpn/jni/NetworkType;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 270
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/jni/NetworkType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->tndState:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v1, "Unknown"

    .line 272
    iput-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->tndState:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v1, "client_v4_address"

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 275
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->clientV4Addr:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v1, "client_v6_address"

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 277
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->clientV6Addr:Ljava/lang/String;

    goto :goto_1

    .line 278
    :cond_7
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->mEntryMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 279
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->mEntryMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->value:Ljava/lang/Object;

    .line 281
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider;->mEntryMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 p3, 0x1

    goto :goto_1

    .line 285
    :cond_8
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "NetworkStateProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkStateProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/cisco/android/nchs/NetworkStateProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_0

    :cond_a
    if-eqz p3, :cond_b

    .line 293
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkStateProvider;->savePersistentEntries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_b
    monitor-exit p0

    return p4

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

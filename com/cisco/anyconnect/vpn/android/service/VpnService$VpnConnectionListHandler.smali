.class Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;
.super Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VpnConnectionListHandler"
.end annotation


# static fields
.field private static final CONNECTION_LIST_FILE_JSON:Ljava/lang/String; = "connection_list.json"

.field private static final CONNECTION_LIST_FILE_OBJ:Ljava/lang/String; = "connection_list.dat"


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;


# direct methods
.method static bridge synthetic -$$Nest$mload(Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->load()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpersist(Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->persist()V

    return-void
.end method

.method private constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V

    return-void
.end method

.method private load()V
    .locals 6

    .line 456
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Loading VPN connections"

    const-string v2, "VpnService"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const-string v3, "connection_list.json"

    invoke-virtual {v1, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 463
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 464
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 465
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const-class v5, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    invoke-virtual {v3, v1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    invoke-static {v4, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fputmConnections(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;)V

    .line 466
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmConnections(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmConnections(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    move-result-object v1

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-virtual {v1, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->OnDeserialize(Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;)V

    .line 468
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Successfully loaded VPN connections"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 486
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 478
    :catch_1
    :try_start_2
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Error parsing connection_list.json"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    goto :goto_0

    .line 473
    :catch_2
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "connection_list.json does not exist. Attempting to open connection_list.dat"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->loadSerialized()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 492
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmConnections(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    move-result-object v0

    if-nez v0, :cond_2

    .line 494
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-direct {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;)V

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fputmConnections(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;)V

    :cond_2
    return-void

    :goto_2
    if-eqz v0, :cond_3

    .line 486
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 490
    :catch_3
    :cond_3
    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method private loadSerialized()V
    .locals 5

    const-string v0, "VpnService"

    const/4 v1, 0x0

    .line 504
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const-string v3, "connection_list.dat"

    invoke-virtual {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 505
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 506
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    invoke-static {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fputmConnections(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;)V

    .line 507
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmConnections(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    move-result-object v3

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-virtual {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->OnDeserialize(Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;)V

    .line 508
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 510
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Creating JSON connection list from serialized version"

    invoke-static {v2, v0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->persist()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 532
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 523
    :try_start_2
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Unexpected IO exception on loading connection list"

    invoke-static {v3, v0, v4, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 524
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->migrateConnData()V

    if-eqz v1, :cond_0

    goto :goto_0

    :catch_1
    move-exception v2

    .line 519
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Failed to deserialize connection_list.dat. Existing connections will be overwritten"

    invoke-static {v3, v0, v4, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_0

    goto :goto_0

    .line 515
    :catch_2
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "connection_list.dat does not exist"

    invoke-static {v2, v0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :catch_3
    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v1, :cond_1

    .line 532
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 536
    :catch_4
    :cond_1
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private migrateConnData()V
    .locals 7

    const-string v0, "VpnService"

    .line 418
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/connections/migrations/MigrationMgr;

    invoke-direct {v1}, Lcom/cisco/anyconnect/vpn/android/service/connections/migrations/MigrationMgr;-><init>()V

    const/4 v2, 0x0

    .line 424
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "connection_list.dat"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/cisco/anyconnect/vpn/android/service/connections/migrations/MigrationMgr;->apply(Ljava/io/File;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 427
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 428
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    :try_start_2
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    invoke-static {v2, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fputmConnections(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;)V

    .line 430
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmConnections(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    move-result-object v2

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-virtual {v2, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->OnDeserialize(Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;)V

    .line 431
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->persist()V

    .line 433
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Connection data migrated"

    invoke-static {v2, v0, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_2

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v2, :cond_1

    .line 440
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    :cond_1
    if-eqz v3, :cond_3

    .line 444
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    .line 436
    :goto_2
    :try_start_4
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "Unexpected expection applying migrations"

    invoke-static {v4, v0, v5, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_2

    .line 440
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_1

    :catch_3
    :cond_3
    :goto_3
    return-void

    :catchall_2
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    :cond_4
    if-eqz v3, :cond_5

    .line 444
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 448
    :catch_4
    :cond_5
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private persist()V
    .locals 7

    .line 372
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Persisting VPN connections"

    const-string v2, "VpnService"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const-string v3, "connection_list.dat"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 380
    :try_start_1
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 381
    :try_start_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmConnections(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 382
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 384
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const-string v5, "connection_list.json"

    invoke-virtual {v0, v5, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 385
    :try_start_3
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 386
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmConnections(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 387
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 389
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Successfully persisted VPN connections"

    invoke-static {v1, v2, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 405
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    if-eqz v0, :cond_2

    .line 410
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    goto/16 :goto_5

    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v6

    goto :goto_2

    :catch_1
    move-object v1, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :goto_0
    move-object v0, v3

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_2

    :catch_3
    :goto_1
    move-object v0, v3

    goto :goto_4

    :catch_4
    move-exception v3

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_6

    :catch_5
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    .line 397
    :goto_2
    :try_start_5
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "Unexpected IO exception on saving connection list"

    invoke-static {v4, v2, v5, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_0

    .line 405
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    :cond_0
    if-eqz v1, :cond_2

    .line 410
    :goto_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_5

    :catch_6
    move-object v1, v0

    .line 393
    :catch_7
    :goto_4
    :try_start_7
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "connection_list.dat does not exist"

    invoke-static {v3, v2, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v0, :cond_1

    .line 405
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_3

    :catch_8
    :cond_2
    :goto_5
    return-void

    :catchall_3
    move-exception v2

    :goto_6
    if-eqz v0, :cond_3

    :try_start_9
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    :cond_3
    if-eqz v1, :cond_4

    .line 410
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 414
    :catch_9
    :cond_4
    goto :goto_8

    :goto_7
    throw v2

    :goto_8
    goto :goto_7
.end method


# virtual methods
.method public CreateNew()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 546
    :try_start_0
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-direct {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 547
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public Delete(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 552
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsKnox()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->getCallingUid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$misCallerPriviledged(Lcom/cisco/anyconnect/vpn/android/service/VpnService;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "VpnService"

    const-string v2, "Client does not have privileges to delete Knox profile"

    invoke-static {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    if-nez p1, :cond_1

    .line 562
    :try_start_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnService"

    const-string v3, "cannot delete null connection"

    invoke-static {p1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    monitor-exit v0

    return v1

    .line 566
    :cond_1
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmConnections(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->Delete(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 567
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public GetActive()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 605
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmConnections(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->GetActiveConnectionName()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 606
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public GetAllNames()Ljava/util/List;
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

    .line 572
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 574
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmConnections(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->GetAllConnectionNames()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 575
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 615
    :try_start_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    const-string v2, "Unexpected null connection name."

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 619
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmConnections(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 620
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 581
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsKnox()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$misCallerPriviledged(Lcom/cisco/anyconnect/vpn/android/service/VpnService;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "VpnService"

    const-string v1, "Client does not have privileges to modify Knox profile"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->NoPermissions:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result p1

    return p1

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmConnections(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->Save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 590
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public SetActive(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 597
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const/4 v2, 0x3

    invoke-static {v1, p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$msetActive(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/lang/String;I)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 598
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

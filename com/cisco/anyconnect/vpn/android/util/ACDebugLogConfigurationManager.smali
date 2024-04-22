.class public Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;
.super Ljava/lang/Object;
.source "ACDebugLogConfigurationManager.java"


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "ACDebugLogConfigurationManager"

.field private static final mConfigLogLevelMax:I = 0x3

.field private static final mConfigLogLevelMin:I

.field private static mCurrentConfigurationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;

.field private static final mInstanceLock:Ljava/lang/Object;

.field private static mSavedConfigurationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mSupportedComponentsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mContext:Landroid/content/Context;

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mSupportedComponentsList:Ljava/util/ArrayList;

    .line 69
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->values()[Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 71
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mSupportedComponentsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->loadConfigurationFromFile()V

    .line 75
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mCurrentConfigurationMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    sput-object p1, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mSavedConfigurationMap:Ljava/util/HashMap;

    return-void
.end method

.method public static GetCustomizeDebugLogsConfigurationFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 152
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "cisco"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "debuglogconfig.json"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getConfigurationFileContents()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "getConfigurationFileContents could not close buffer"

    .line 162
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mContext:Landroid/content/Context;

    const-string v2, ""

    if-nez v1, :cond_0

    const-string v0, "No context provided."

    .line 164
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const/4 v3, 0x0

    .line 172
    :try_start_0
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->GetCustomizeDebugLogsConfigurationFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, "The configuration file for customizing debug logs is found."

    .line 179
    invoke-static {p0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 183
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_2

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 204
    invoke-static {p0, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v1

    :catchall_0
    move-exception v1

    move-object v3, v2

    goto :goto_3

    :cond_3
    :goto_2
    return-object v2

    :catchall_1
    move-exception v1

    :goto_3
    if-eqz v3, :cond_4

    .line 200
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v2

    .line 204
    invoke-static {p0, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    :cond_4
    :goto_4
    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method public static getInstance()Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;
    .locals 3

    .line 84
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mInstance:Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 89
    :cond_0
    invoke-static {}, Lcom/cisco/anyconnect/android/util/AppContext;->get()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 94
    const-class v0, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;

    const-string v1, "Cannot create instance because no context provided."

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_1
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mInstance:Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;

    if-nez v2, :cond_2

    .line 102
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;

    invoke-direct {v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mInstance:Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;

    .line 105
    :cond_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mInstance:Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 106
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadConfigurationFromFile()V
    .locals 7

    .line 218
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mCurrentConfigurationMap:Ljava/util/HashMap;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 222
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mCurrentConfigurationMap:Ljava/util/HashMap;

    .line 224
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->getConfigurationFileContents()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 227
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 229
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 230
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->getCustLogComponent(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    move-result-object v4

    if-nez v4, :cond_0

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping entry because of unknown component name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_1

    if-eq v5, v6, :cond_1

    .line 246
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default value will be used because of unexpected value for component: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mCurrentConfigurationMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->isEnabledByDefault()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 254
    :cond_1
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mCurrentConfigurationMap:Ljava/util/HashMap;

    if-ne v6, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 266
    :cond_3
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->values()[Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_6

    aget-object v3, v1, v0

    .line 268
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mCurrentConfigurationMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    .line 270
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mCurrentConfigurationMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->isEnabledByDefault()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto/16 :goto_6

    :catch_0
    :try_start_1
    const-string v1, "Failed to parse the configuration file."

    .line 259
    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mCurrentConfigurationMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->values()[Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    move-result-object v1

    array-length v2, v1

    :goto_3
    if-ge v0, v2, :cond_6

    aget-object v3, v1, v0

    .line 268
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mCurrentConfigurationMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    .line 270
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mCurrentConfigurationMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->isEnabledByDefault()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 275
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Configuration for customizing debug logs:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mCurrentConfigurationMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    .line 278
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mCurrentConfigurationMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 279
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    .line 280
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "Enabled"

    goto :goto_5

    :cond_7
    const-string v2, "Not Enabled"

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 282
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 284
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    .line 266
    :goto_6
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->values()[Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    move-result-object v2

    array-length v3, v2

    :goto_7
    if-ge v0, v3, :cond_a

    aget-object v4, v2, v0

    .line 268
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mCurrentConfigurationMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_9

    .line 270
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mCurrentConfigurationMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->isEnabledByDefault()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 273
    :cond_a
    throw v1

    :cond_b
    :goto_8
    return-void
.end method


# virtual methods
.method public GetConfiguration(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;)Z
    .locals 1

    .line 135
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mCurrentConfigurationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public GetConfiguration(Ljava/lang/String;)Z
    .locals 0

    .line 125
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->getCustLogComponent(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->GetConfiguration(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;)Z

    move-result p1

    return p1
.end method

.method public GetSupportedComponents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mSupportedComponentsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public SaveConfigurationToFile()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "No context provided."

    .line 301
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 308
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mCurrentConfigurationMap:Ljava/util/HashMap;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mSavedConfigurationMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 314
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 317
    :try_start_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mCurrentConfigurationMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    .line 319
    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->getComponentName()Ljava/lang/String;

    move-result-object v4

    .line 320
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mCurrentConfigurationMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 319
    :goto_1
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :cond_3
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->GetCustomizeDebugLogsConfigurationFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 330
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 332
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 334
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mCurrentConfigurationMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mSavedConfigurationMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 325
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public SetConfiguration(Ljava/lang/String;Z)V
    .locals 1

    .line 147
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->mCurrentConfigurationMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->getCustLogComponent(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

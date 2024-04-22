.class Lcom/cisco/android/nchs/ComponentManifest;
.super Ljava/lang/Object;
.source "ComponentManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/android/nchs/ComponentManifest$ComponentService;,
        Lcom/cisco/android/nchs/ComponentManifest$ServiceId;
    }
.end annotation


# static fields
.field private static final ANDROID_PARENT_APP_DATA_DIR:Ljava/lang/String; = "ANDROID_PARENT_APP_DATA_DIR"

.field private static final APPEND_MODIFY_EXISTING_VALUE_STRING:Ljava/lang/String; = "append"

.field private static final ARGUMENT_LIST_TAG:Ljava/lang/String; = "ArgumentList"

.field private static final ARGUMENT_TAG:Ljava/lang/String; = "Argument"

.field private static final COMPONENT_ATTR_LABEL_TAG:Ljava/lang/String; = "componentLabel"

.field private static final DEFAULT_MODIFY_EXISTING_VALUE_STRING:Ljava/lang/String; = "overwrite"

.field private static final DEFAULT_VALUE_DELIMITER:Ljava/lang/String; = ":"

.field private static final DONT_MODIFY_EXISTING_VALUE_STRING:Ljava/lang/String; = "dont_modify_existing"

.field private static final ENTITY_NAME:Ljava/lang/String; = "ComponentManifest"

.field private static final ENVIRONMENT_TAG:Ljava/lang/String; = "Environment"

.field private static final ENV_ANDROID_PARENT_APP_USER_ID:Ljava/lang/String; = "ANDROID_PARENT_APP_USER_ID"

.field private static final ENV_ANYCONNECT_PACKAGE_NAME:Ljava/lang/String; = "ANYCONNECT_PACKAGE_NAME"

.field private static final ID_ATTR_TAG:Ljava/lang/String; = "id"

.field private static final MODIFY_EXISTING_TAG:Ljava/lang/String; = "modifyExisting"

.field private static final NAME_ATTR_TAG:Ljava/lang/String; = "name"

.field private static final NATIVE_SERVICE_TAG:Ljava/lang/String; = "NativeService"

.field private static final NCHS_SIGNALS_ON_READY:Ljava/lang/String; = "NCHS_SIGNALS_ON_READY"

.field private static final OVERWRITE_MODIFY_EXISTING_VALUE_STRING:Ljava/lang/String; = "overwrite"

.field private static final PREPEND_MODIFY_EXISTING_VALUE_STRING:Ljava/lang/String; = "prepend"

.field private static final PROCESS_NAME_KILL_LIST_TAG:Ljava/lang/String; = "ProcessNameKillList"

.field private static final PROCESS_NAME_TAG:Ljava/lang/String; = "ProcessName"

.field private static final PROGRAM_PATH_TAG:Ljava/lang/String; = "ProgramPath"

.field private static final PROGRAM_SIGNATURE_TAG:Ljava/lang/String; = "ProgramSignature"

.field private static final RESERVED_PROPERTY_KEYS:[Ljava/lang/String;

.field public static final RESERVED_PROPERTY_KEY_PARENT_APP_USER_ID:Ljava/lang/String; = "ANDROID_PARENT_APP_USER_ID"

.field private static final RESTART_ON_CRASH_ATTR_TAG:Ljava/lang/String; = "restartOnCrash"

.field private static final RUN_AT_STARTUP_ATTR_TAG:Ljava/lang/String; = "runAtStartup"

.field private static final SIGNALS_ON_READY_ATTR_TAG:Ljava/lang/String; = "signalsOnReady"

.field private static final TOKEN_PARENT_APP_DATA_DIR:Ljava/lang/String; = "$(PARENT_APP_DATA_DIR)"

.field private static final VALUE_ATTR_TAG:Ljava/lang/String; = "value"

.field private static final VALUE_DELIMITER_ATTR_TAG:Ljava/lang/String; = "valueDelimiter"

.field private static final VARIABLE_TAG:Ljava/lang/String; = "Variable"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mLabel:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mProperties:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPropertyMgr:Lcom/cisco/android/nchs/IComponentPropertyManager;

.field private mServices:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/cisco/android/nchs/ComponentManifest$ComponentService;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/cisco/android/nchs/aidl/NCHSState;

.field private mStateString:Ljava/lang/String;

.field private mWorkingDirectory:Ljava/io/File;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppContext(Lcom/cisco/android/nchs/ComponentManifest;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/ComponentManifest;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAppFilesDir(Lcom/cisco/android/nchs/ComponentManifest;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/cisco/android/nchs/ComponentManifest;->getAppFilesDir()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ANDROID_PARENT_APP_USER_ID"

    aput-object v2, v0, v1

    .line 64
    sput-object v0, Lcom/cisco/android/nchs/ComponentManifest;->RESERVED_PROPERTY_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/cisco/android/nchs/IComponentPropertyManager;Landroid/content/Context;)V
    .locals 1

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest;->mServices:Ljava/util/LinkedList;

    .line 502
    iput-object p1, p0, Lcom/cisco/android/nchs/ComponentManifest;->mPackageName:Ljava/lang/String;

    .line 503
    iput-object p2, p0, Lcom/cisco/android/nchs/ComponentManifest;->mLabel:Ljava/lang/String;

    .line 504
    iput-object p3, p0, Lcom/cisco/android/nchs/ComponentManifest;->mWorkingDirectory:Ljava/io/File;

    .line 505
    iput-object p4, p0, Lcom/cisco/android/nchs/ComponentManifest;->mPropertyMgr:Lcom/cisco/android/nchs/IComponentPropertyManager;

    .line 506
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSState;->IDLE:Lcom/cisco/android/nchs/aidl/NCHSState;

    iput-object p1, p0, Lcom/cisco/android/nchs/ComponentManifest;->mState:Lcom/cisco/android/nchs/aidl/NCHSState;

    const/4 p1, 0x0

    .line 507
    iput-object p1, p0, Lcom/cisco/android/nchs/ComponentManifest;->mStateString:Ljava/lang/String;

    .line 508
    iput-object p5, p0, Lcom/cisco/android/nchs/ComponentManifest;->mAppContext:Landroid/content/Context;

    .line 510
    iget-object p1, p0, Lcom/cisco/android/nchs/ComponentManifest;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cisco/android/nchs/ComponentManifest;->mWorkingDirectory:Ljava/io/File;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cisco/android/nchs/ComponentManifest;->mPropertyMgr:Lcom/cisco/android/nchs/IComponentPropertyManager;

    if-eqz p1, :cond_1

    if-eqz p5, :cond_1

    .line 518
    iget-object p2, p0, Lcom/cisco/android/nchs/ComponentManifest;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/cisco/android/nchs/IComponentPropertyManager;->LoadProperties(Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/android/nchs/ComponentManifest;->mProperties:Ljava/util/TreeMap;

    if-nez p1, :cond_0

    .line 522
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "No Properties loaded from disk for package: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/cisco/android/nchs/ComponentManifest;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ComponentManifest"

    invoke-static {p1, p3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/cisco/android/nchs/ComponentManifest;->mProperties:Ljava/util/TreeMap;

    :cond_0
    return-void

    .line 515
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "packageName, workingDirectory, listener, and appContext are all required to be non-null and non-empty strings"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private declared-synchronized doSetProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, ""

    .line 671
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest;->mProperties:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 677
    :cond_0
    iget-object p2, p0, Lcom/cisco/android/nchs/ComponentManifest;->mProperties:Ljava/util/TreeMap;

    invoke-virtual {p2, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    :goto_0
    invoke-direct {p0}, Lcom/cisco/android/nchs/ComponentManifest;->persist()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getAppDataDir()Ljava/lang/String;
    .locals 4

    .line 1217
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cisco/android/nchs/ComponentManifest;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 1220
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1224
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get Context for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/android/nchs/ComponentManifest;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ComponentManifest"

    invoke-static {v1, v3, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getAppFilesDir()Ljava/lang/String;
    .locals 4

    .line 1237
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cisco/android/nchs/ComponentManifest;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 1240
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1244
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get Context for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/android/nchs/ComponentManifest;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ComponentManifest"

    invoke-static {v1, v3, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getStatusString(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    .line 690
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f11020b

    .line 692
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 696
    :goto_0
    iget-object v2, p0, Lcom/cisco/android/nchs/ComponentManifest;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 698
    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->STARTED:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    iget-object v3, p0, Lcom/cisco/android/nchs/ComponentManifest;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;

    invoke-virtual {v3}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->getState()Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    move-result-object v3

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 704
    :cond_2
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const v2, 0x7f11029b

    if-eq v0, v1, :cond_3

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f11021f

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cisco/android/nchs/ComponentManifest;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 709
    :cond_3
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private inflateTokens(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1257
    invoke-direct {p0}, Lcom/cisco/android/nchs/ComponentManifest;->getAppDataDir()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1260
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ComponentManifest"

    const-string v2, "Failed to inflate $(PARENT_APP_DATA_DIR)"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :cond_0
    const-string v1, "$(PARENT_APP_DATA_DIR)"

    .line 1264
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isPropertyKeyReserved(Ljava/lang/String;)Z
    .locals 5

    .line 652
    sget-object v0, Lcom/cisco/android/nchs/ComponentManifest;->RESERVED_PROPERTY_KEYS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 654
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private parseArgument(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    .line 983
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 986
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseArgumentList(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    .locals 4

    .line 946
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const-string v1, "ComponentManifest"

    const-string v2, ""

    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    .line 948
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Service contained multiple argument lists, ignoring all extras."

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 950
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 952
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Service contained no argument lists. continuing"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 957
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    const-string v1, "Argument"

    .line 960
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 963
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 965
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cisco/android/nchs/ComponentManifest;->parseArgument(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 968
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/cisco/android/nchs/ComponentManifest;->inflateTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method private parseComponentService(Lorg/w3c/dom/Node;)Lcom/cisco/android/nchs/ComponentManifest$ComponentService;
    .locals 12

    .line 859
    check-cast p1, Lorg/w3c/dom/Element;

    const-string v0, "id"

    .line 860
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    .line 863
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "runAtStartup"

    .line 868
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "restartOnCrash"

    .line 869
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "signalsOnReady"

    .line 870
    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ProgramPath"

    .line 873
    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 875
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    const/4 v7, 0x1

    const-string v8, "ComponentManifest"

    if-le v6, v7, :cond_1

    .line 877
    sget-object v6, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v9, "Service contained multiple program paths, ignoring all extra paths."

    invoke-static {v6, v8, v9}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 879
    :cond_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v6, v7, :cond_2

    .line 881
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Service contained no program paths, which is invalid."

    invoke-static {p1, v8, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    :goto_0
    const/4 v6, 0x0

    .line 885
    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/cisco/android/nchs/ComponentManifest;->parseProgramPath(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 889
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "ProgramPath parsing returned null, will not construct ComponentService"

    invoke-static {p1, v8, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    const-string v9, "ProgramSignature"

    .line 896
    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 899
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-le v10, v7, :cond_4

    .line 901
    sget-object v10, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v11, "Service contained multiple program signatures, ignoring all extra paths."

    invoke-static {v10, v8, v11}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :cond_4
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v10, v7, :cond_5

    .line 906
    sget-object v6, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v7, "Service contained no program signature; will not execute."

    invoke-static {v6, v8, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 910
    :cond_5
    invoke-interface {v9, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cisco/android/nchs/ComponentManifest;->parseProgramPath(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v6, v1

    const-string v1, "ArgumentList"

    .line 914
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 915
    invoke-direct {p0, v1}, Lcom/cisco/android/nchs/ComponentManifest;->parseArgumentList(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "Environment"

    .line 918
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 919
    invoke-direct {p0, v1}, Lcom/cisco/android/nchs/ComponentManifest;->parseEnvironment(Lorg/w3c/dom/NodeList;)Ljava/util/List;

    move-result-object v10

    const-string v1, "ProcessNameKillList"

    .line 922
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 923
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/ComponentManifest;->parseKillProcessList(Lorg/w3c/dom/NodeList;)Ljava/util/List;

    move-result-object v7

    .line 925
    new-instance p1, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;

    .line 928
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 929
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 931
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    move-object v1, p1

    move-object v3, v5

    move-object v4, v6

    move v5, v0

    move v6, v8

    move v8, v11

    move-object v11, p0

    invoke-direct/range {v1 .. v11}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;ZLjava/lang/String;Ljava/util/List;Lcom/cisco/android/nchs/ComponentManifest;)V

    return-object p1
.end method

.method private parseEnvironment(Lorg/w3c/dom/NodeList;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1001
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const-string v2, "ComponentManifest"

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 1005
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Service contained multiple environment nodes, ignoring all extras"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1007
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 1009
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Service contained no environment nodes. continuing"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 1014
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    const-string/jumbo v2, "valueDelimiter"

    .line 1017
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, ""

    .line 1018
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string v2, ":"

    :cond_3
    const-string v3, "Variable"

    .line 1024
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 1027
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1029
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/cisco/android/nchs/ComponentManifest;->parseEnvironmentVariable(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1032
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method private parseEnvironmentVariable(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1047
    check-cast p1, Lorg/w3c/dom/Element;

    const-string v0, "name"

    .line 1048
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "value"

    .line 1049
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "modifyExisting"

    .line 1050
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    const-string v3, "ComponentManifest"

    if-nez v0, :cond_0

    .line 1054
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "EnvironmentVariable encountered without a name, failure."

    invoke-static {p1, v3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    if-nez v1, :cond_1

    .line 1060
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "EnvironmentVariable encountered without a value, failure."

    invoke-static {p1, v3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    const-string v4, "overwrite"

    if-nez p1, :cond_2

    .line 1066
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "EnvironmentVariable encountered without a modifyExisting, defaulting to overwrite"

    invoke-static {p1, v3, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v4

    :cond_2
    const-string v3, "./"

    .line 1071
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1073
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/cisco/android/nchs/ComponentManifest;->mWorkingDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1076
    :cond_3
    invoke-direct {p0, v1}, Lcom/cisco/android/nchs/ComponentManifest;->inflateTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1079
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1083
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    move-object v2, v1

    :cond_4
    const-string v5, "="

    if-eqz v3, :cond_5

    .line 1090
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "dont_modify_existing"

    .line 1091
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1094
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v6, "prepend"

    .line 1097
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v3, :cond_7

    .line 1102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    const-string v6, "append"

    .line 1105
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v3, :cond_7

    .line 1110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    move-object v1, v2

    goto :goto_0

    .line 1113
    :cond_8
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1124
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseKillProcessList(Lorg/w3c/dom/NodeList;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1163
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const-string v2, "ComponentManifest"

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 1165
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Service contained multiple process kill nodes, ignoring all extras"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1167
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 1169
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Service contained no process kill nodes. continuing"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 1174
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    const-string v2, "ProcessName"

    .line 1177
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 1180
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1183
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 1184
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private parseProgramPath(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3

    .line 1135
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "ComponentManifest"

    if-eqz p1, :cond_3

    const-string v2, ""

    .line 1137
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "/"

    .line 1144
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".."

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    .line 1146
    :cond_2
    :goto_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Path to binary cannot point outside of NCHS filespace, returning null"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1139
    :cond_3
    :goto_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Path cannot be null or empty, returning null"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private declared-synchronized persist()V
    .locals 3

    monitor-enter p0

    .line 717
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest;->mProperties:Ljava/util/TreeMap;

    .line 718
    iget-object v1, p0, Lcom/cisco/android/nchs/ComponentManifest;->mPropertyMgr:Lcom/cisco/android/nchs/IComponentPropertyManager;

    iget-object v2, p0, Lcom/cisco/android/nchs/ComponentManifest;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/cisco/android/nchs/IComponentPropertyManager;->SaveProperties(Ljava/lang/String;Ljava/io/Serializable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ComponentManifest"

    const-string v2, "Saving of properties failed"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addService(Lcom/cisco/android/nchs/ComponentManifest$ComponentService;)V
    .locals 1

    monitor-enter p0

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLabel()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMostRecentStatus(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest;->mStateString:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 539
    :cond_0
    iget-object p1, p0, Lcom/cisco/android/nchs/ComponentManifest;->mStateString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 536
    :cond_1
    :goto_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/ComponentManifest;->getStatusString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest;->mProperties:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getServiceByID(Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest$ComponentService;
    .locals 3

    .line 775
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;

    .line 777
    invoke-virtual {v1}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized getServiceStates()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 584
    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 585
    iget-object v1, p0, Lcom/cisco/android/nchs/ComponentManifest;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;

    .line 587
    invoke-virtual {v2}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->-$$Nest$fgetmState(Lcom/cisco/android/nchs/ComponentManifest$ComponentService;)Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    move-result-object v2

    sget-object v4, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->STARTED:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 590
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cisco/android/nchs/ComponentManifest$ComponentService;",
            ">;"
        }
    .end annotation

    .line 746
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest;->mServices:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getSignallingServices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cisco/android/nchs/ComponentManifest$ServiceId;",
            ">;"
        }
    .end annotation

    .line 1196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ComponentManifest;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;

    .line 1200
    invoke-virtual {v2}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->signalsOnReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1202
    new-instance v3, Lcom/cisco/android/nchs/ComponentManifest$ServiceId;

    iget-object v4, p0, Lcom/cisco/android/nchs/ComponentManifest;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/cisco/android/nchs/ComponentManifest$ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public declared-synchronized getState()Lcom/cisco/android/nchs/aidl/NCHSState;
    .locals 1

    monitor-enter p0

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest;->mState:Lcom/cisco/android/nchs/aidl/NCHSState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWorkingDirectory()Ljava/io/File;
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest;->mWorkingDirectory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized populateFromXmlFile(Ljava/io/File;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 796
    :try_start_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ComponentManifest"

    const-string v2, "manifestXML file was null, cannot parse manifest"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    monitor-exit p0

    return v0

    .line 802
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/xml/SafeDocumentBuilderFactory;->getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 803
    invoke-virtual {v1, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 805
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    if-nez v1, :cond_1

    .line 808
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ComponentManifest"

    const-string v2, "services element was not present in the manifest XML"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 809
    monitor-exit p0

    return v0

    :cond_1
    :try_start_2
    const-string v2, "componentLabel"

    .line 812
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/android/nchs/ComponentManifest;->mLabel:Ljava/lang/String;

    const-string v1, "NativeService"

    .line 814
    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v1, 0x0

    .line 816
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 818
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/cisco/android/nchs/ComponentManifest;->parseComponentService(Lorg/w3c/dom/Node;)Lcom/cisco/android/nchs/ComponentManifest$ComponentService;

    move-result-object v2

    if-nez v2, :cond_2

    .line 824
    iget-object p1, p0, Lcom/cisco/android/nchs/ComponentManifest;->mServices:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 827
    monitor-exit p0

    return v0

    .line 830
    :cond_2
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/cisco/android/nchs/ComponentManifest;->addService(Lcom/cisco/android/nchs/ComponentManifest$ComponentService;)V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 833
    :cond_3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 847
    :try_start_4
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "ComponentManifest"

    const-string v3, "Unexpected IOException occured"

    invoke-static {v1, v2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 848
    monitor-exit p0

    return v0

    :catch_1
    move-exception p1

    .line 842
    :try_start_5
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "ComponentManifest"

    const-string v3, "Unexpected SAXException occured"

    invoke-static {v1, v2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 843
    monitor-exit p0

    return v0

    :catch_2
    move-exception p1

    .line 837
    :try_start_6
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "ComponentManifest"

    const-string v3, "Unexpected ParserConfigurationException occured"

    invoke-static {v1, v2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 838
    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized removeService(Lcom/cisco/android/nchs/ComponentManifest$ComponentService;)V
    .locals 1

    monitor-enter p0

    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 636
    :try_start_0
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/ComponentManifest;->isPropertyKeyReserved(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 638
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 641
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/cisco/android/nchs/ComponentManifest;->doSetProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 642
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 632
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "unexpected null key in setProperty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setReservedProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 618
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/cisco/android/nchs/ComponentManifest;->doSetProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 614
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "unexpected null key in setReservedProperty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setState(Lcom/cisco/android/nchs/aidl/NCHSState;)V
    .locals 0

    monitor-enter p0

    .line 557
    :try_start_0
    iput-object p1, p0, Lcom/cisco/android/nchs/ComponentManifest;->mState:Lcom/cisco/android/nchs/aidl/NCHSState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStateDescription(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 548
    :try_start_0
    iput-object p1, p0, Lcom/cisco/android/nchs/ComponentManifest;->mStateString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

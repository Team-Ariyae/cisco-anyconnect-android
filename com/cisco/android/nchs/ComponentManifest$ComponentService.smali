.class public Lcom/cisco/android/nchs/ComponentManifest$ComponentService;
.super Ljava/lang/Object;
.source "ComponentManifest.java"

# interfaces
.implements Lcom/cisco/android/nchs/process/IProcessMonitorCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/ComponentManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ComponentService"
.end annotation


# instance fields
.field private mArguments:Ljava/lang/String;

.field private mEnvironmentVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mID:Ljava/lang/String;

.field private mMonitor:Lcom/cisco/android/nchs/process/ProcessMonitorThread;

.field private mMonitorHasStarted:Z

.field private mParentManifest:Lcom/cisco/android/nchs/ComponentManifest;

.field private mProcessNameKillList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProgramPath:Ljava/lang/String;

.field private final mProgramSignaturePath:Ljava/lang/String;

.field private mRestartOnCrash:Z

.field private mRunAtStartup:Z

.field private mSignalsOnReady:Z

.field private mState:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;


# direct methods
.method static bridge synthetic -$$Nest$fgetmState(Lcom/cisco/android/nchs/ComponentManifest$ComponentService;)Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mState:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;ZLjava/lang/String;Ljava/util/List;Lcom/cisco/android/nchs/ComponentManifest;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cisco/android/nchs/ComponentManifest;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    move-object v2, p2

    move-object/from16 v0, p6

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 196
    iput-object v1, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mID:Ljava/lang/String;

    .line 197
    iput-object v2, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mProgramPath:Ljava/lang/String;

    move-object v1, p3

    .line 198
    iput-object v1, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mProgramSignaturePath:Ljava/lang/String;

    move-object/from16 v1, p9

    .line 199
    iput-object v1, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mEnvironmentVariables:Ljava/util/List;

    move/from16 v1, p4

    .line 200
    iput-boolean v1, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mRunAtStartup:Z

    move/from16 v1, p5

    .line 201
    iput-boolean v1, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mRestartOnCrash:Z

    .line 202
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mProcessNameKillList:Ljava/util/List;

    move/from16 v1, p7

    .line 203
    iput-boolean v1, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mSignalsOnReady:Z

    move-object/from16 v1, p8

    .line 204
    iput-object v1, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mArguments:Ljava/lang/String;

    move-object/from16 v1, p10

    .line 205
    iput-object v1, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mParentManifest:Lcom/cisco/android/nchs/ComponentManifest;

    const/4 v1, 0x0

    .line 206
    iput-boolean v1, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mMonitorHasStarted:Z

    .line 207
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->STOPPED:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    iput-object v1, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mState:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    if-eqz v0, :cond_0

    .line 215
    iget-object v1, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mProcessNameKillList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v1, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mProcessNameKillList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    iget-object v1, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mProcessNameKillList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_1
    invoke-direct {p0}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->addAppDataEnv()V

    .line 225
    invoke-direct {p0}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->addNativeComponentDataEnv()V

    .line 226
    invoke-direct {p0}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->addAppUserIdEnv()V

    .line 227
    invoke-direct {p0}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->addPackageNameEnv()V

    .line 229
    iget-boolean v0, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mSignalsOnReady:Z

    if-eqz v0, :cond_2

    .line 231
    invoke-direct {p0}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->addSignalsOnReadyEnv()V

    .line 234
    :cond_2
    new-instance v11, Lcom/cisco/android/nchs/process/ProcessMonitorThread;

    iget-object v3, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mArguments:Ljava/lang/String;

    iget-object v4, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mEnvironmentVariables:Ljava/util/List;

    iget-object v5, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mProcessNameKillList:Ljava/util/List;

    iget-object v0, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mParentManifest:Lcom/cisco/android/nchs/ComponentManifest;

    .line 239
    invoke-virtual {v0}, Lcom/cisco/android/nchs/ComponentManifest;->getWorkingDirectory()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    iget-boolean v8, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mRestartOnCrash:Z

    iget-object v0, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mParentManifest:Lcom/cisco/android/nchs/ComponentManifest;

    invoke-static {v0}, Lcom/cisco/android/nchs/ComponentManifest;->-$$Nest$fgetmAppContext(Lcom/cisco/android/nchs/ComponentManifest;)Landroid/content/Context;

    move-result-object v0

    .line 242
    invoke-direct {p0, v0}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->getProcessKiller(Landroid/content/Context;)Lcom/cisco/android/nchs/process/ProcessKiller;

    move-result-object v9

    move-object v0, v11

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/cisco/android/nchs/process/ProcessMonitorThread;-><init>(Lcom/cisco/android/nchs/process/IProcessMonitorCB;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/io/File;ZZLcom/cisco/android/nchs/process/ProcessKiller;)V

    iput-object v11, v10, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mMonitor:Lcom/cisco/android/nchs/process/ProcessMonitorThread;

    return-void
.end method

.method private addAppDataEnv()V
    .locals 5

    .line 431
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mParentManifest:Lcom/cisco/android/nchs/ComponentManifest;

    invoke-static {v0}, Lcom/cisco/android/nchs/ComponentManifest;->-$$Nest$mgetAppFilesDir(Lcom/cisco/android/nchs/ComponentManifest;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v1, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mEnvironmentVariables:Ljava/util/List;

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ANDROID_PARENT_APP_DATA_DIR="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 438
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ComponentManifest"

    const-string v2, "Not setting ANDROID_PARENT_APP_DATA_DIR."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private addAppUserIdEnv()V
    .locals 5

    .line 457
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mParentManifest:Lcom/cisco/android/nchs/ComponentManifest;

    const-string v1, "ANDROID_PARENT_APP_USER_ID"

    invoke-virtual {v0, v1}, Lcom/cisco/android/nchs/ComponentManifest;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 460
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ComponentManifest"

    const-string v2, "Not setting ANDROID_PARENT_APP_USER_ID due to null uid."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mEnvironmentVariables:Ljava/util/List;

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ANDROID_PARENT_APP_USER_ID="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addNativeComponentDataEnv()V
    .locals 5

    .line 444
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mParentManifest:Lcom/cisco/android/nchs/ComponentManifest;

    const-string v1, "NATIVE_COMPONENT_DATA_ID"

    invoke-virtual {v0, v1}, Lcom/cisco/android/nchs/ComponentManifest;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 447
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ComponentManifest"

    const-string v2, "Not setting NATIVE_COMPONENT_DATA_DIR due to null uid."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mEnvironmentVariables:Ljava/util/List;

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NATIVE_COMPONENT_DATA_DIR="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPackageNameEnv()V
    .locals 5

    .line 470
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mParentManifest:Lcom/cisco/android/nchs/ComponentManifest;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/ComponentManifest;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 473
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ComponentManifest"

    const-string v2, "Not setting ANYCONNECT_PACKAGE_NAME due to null pkgName."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mEnvironmentVariables:Ljava/util/List;

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ANYCONNECT_PACKAGE_NAME="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSignalsOnReadyEnv()V
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mEnvironmentVariables:Ljava/util/List;

    new-instance v1, Ljava/lang/String;

    const-string v2, "NCHS_SIGNALS_ON_READY=1"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getProcessKiller(Landroid/content/Context;)Lcom/cisco/android/nchs/process/ProcessKiller;
    .locals 0

    .line 488
    new-instance p1, Lcom/cisco/android/nchs/process/NativeProcessKiller;

    invoke-direct {p1}, Lcom/cisco/android/nchs/process/NativeProcessKiller;-><init>()V

    return-object p1
.end method

.method private verifyBinary()Z
    .locals 7

    const-string v0, "ComponentManifest"

    const-string v1, "Failed to verify integrity of "

    const-string v2, "No signature found for: "

    const/4 v3, 0x0

    .line 359
    :try_start_0
    iget-object v4, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mProgramSignaturePath:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 361
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mProgramPath:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 365
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mParentManifest:Lcom/cisco/android/nchs/ComponentManifest;

    invoke-virtual {v4}, Lcom/cisco/android/nchs/ComponentManifest;->getWorkingDirectory()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mProgramPath:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 366
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mParentManifest:Lcom/cisco/android/nchs/ComponentManifest;

    invoke-virtual {v5}, Lcom/cisco/android/nchs/ComponentManifest;->getWorkingDirectory()Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mProgramSignaturePath:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 367
    new-instance v5, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;

    invoke-direct {v5, v2}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {v5, v4}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;->setCatalog(Ljava/io/File;)Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;->build()Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;

    move-result-object v2

    .line 368
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->verify()Z

    move-result v2

    if-nez v2, :cond_1

    .line 370
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mProgramPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_1
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v2

    .line 376
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mProgramPath:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method


# virtual methods
.method public OnProcessRestarting(Lcom/cisco/android/nchs/process/ProcessMonitorThread;)Z
    .locals 3

    .line 404
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Process: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has restarted"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ComponentManifest"

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->STOPPED:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    iput-object p1, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mState:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    .line 406
    invoke-direct {p0}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->verifyBinary()Z

    move-result p1

    return p1
.end method

.method public OnProcessStarted(Lcom/cisco/android/nchs/process/ProcessMonitorThread;)V
    .locals 3

    .line 414
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Process: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has started"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ComponentManifest"

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->getParentManifest()Lcom/cisco/android/nchs/ComponentManifest;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ComponentManifest;->setStateDescription(Ljava/lang/String;)V

    .line 416
    iget-boolean p1, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mSignalsOnReady:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->STARTING:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->STARTED:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    :goto_0
    iput-object p1, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mState:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    return-void
.end method

.method public OnProcessStopped(Lcom/cisco/android/nchs/process/ProcessMonitorThread;)V
    .locals 3

    .line 424
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Process: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has stopped (after max restart attempts)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ComponentManifest"

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->getParentManifest()Lcom/cisco/android/nchs/ComponentManifest;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ComponentManifest;->setStateDescription(Ljava/lang/String;)V

    .line 426
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->STOPPED:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    iput-object p1, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mState:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    return-void
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getParentManifest()Lcom/cisco/android/nchs/ComponentManifest;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mParentManifest:Lcom/cisco/android/nchs/ComponentManifest;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mProgramPath:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessKillNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mProcessNameKillList:Ljava/util/List;

    return-object v0
.end method

.method public getState()Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mState:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    return-object v0
.end method

.method public isRestartOnCrash()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mRestartOnCrash:Z

    return v0
.end method

.method public isRunAtStartup()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mRunAtStartup:Z

    return v0
.end method

.method public onSignalReady()V
    .locals 1

    .line 299
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->STARTED:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    iput-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mState:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    return-void
.end method

.method public signalsOnReady()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mSignalsOnReady:Z

    return v0
.end method

.method public declared-synchronized startProcess(Z)Z
    .locals 11

    monitor-enter p0

    .line 319
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->verifyBinary()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 321
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 324
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mMonitorHasStarted:Z

    if-eqz v0, :cond_1

    .line 326
    new-instance v0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;

    iget-object v3, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mProgramPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mArguments:Ljava/lang/String;

    iget-object v5, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mEnvironmentVariables:Ljava/util/List;

    iget-object v6, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mProcessNameKillList:Ljava/util/List;

    iget-object v1, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mParentManifest:Lcom/cisco/android/nchs/ComponentManifest;

    .line 331
    invoke-virtual {v1}, Lcom/cisco/android/nchs/ComponentManifest;->getWorkingDirectory()Ljava/io/File;

    move-result-object v7

    iget-boolean v9, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mRestartOnCrash:Z

    iget-object v1, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mParentManifest:Lcom/cisco/android/nchs/ComponentManifest;

    invoke-static {v1}, Lcom/cisco/android/nchs/ComponentManifest;->-$$Nest$fgetmAppContext(Lcom/cisco/android/nchs/ComponentManifest;)Landroid/content/Context;

    move-result-object v1

    .line 334
    invoke-direct {p0, v1}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->getProcessKiller(Landroid/content/Context;)Lcom/cisco/android/nchs/process/ProcessKiller;

    move-result-object v10

    move-object v1, v0

    move-object v2, p0

    move v8, p1

    invoke-direct/range {v1 .. v10}, Lcom/cisco/android/nchs/process/ProcessMonitorThread;-><init>(Lcom/cisco/android/nchs/process/IProcessMonitorCB;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/io/File;ZZLcom/cisco/android/nchs/process/ProcessKiller;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mMonitor:Lcom/cisco/android/nchs/process/ProcessMonitorThread;

    goto :goto_0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mMonitor:Lcom/cisco/android/nchs/process/ProcessMonitorThread;

    invoke-virtual {v0, p1}, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->setStartAsRoot(Z)V

    .line 341
    :goto_0
    iget-object p1, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mMonitor:Lcom/cisco/android/nchs/process/ProcessMonitorThread;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->StartProcess()Z

    move-result p1

    .line 342
    iput-boolean p1, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mMonitorHasStarted:Z

    if-eqz p1, :cond_3

    .line 346
    iget-boolean v0, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mSignalsOnReady:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->STARTING:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->STARTED:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    :goto_1
    iput-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mState:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    :cond_3
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopProcess()Z
    .locals 1

    monitor-enter p0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->mMonitor:Lcom/cisco/android/nchs/process/ProcessMonitorThread;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->RequestKillProcess()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

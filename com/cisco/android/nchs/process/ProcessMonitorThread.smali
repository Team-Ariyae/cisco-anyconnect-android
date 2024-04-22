.class public Lcom/cisco/android/nchs/process/ProcessMonitorThread;
.super Ljava/lang/Thread;
.source "ProcessMonitorThread.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "ProcessMonitorThread"

.field private static final MAX_CONSECUTIVE_START_SPAM_ATTEMPTS:I = 0x19

.field private static final PROCESS_FORCE_KILL_DELAY_MILLISECONDS:I = 0x5dc

.field private static final PROCESS_START_TIMEOUT_MILLISECONDS:I = 0x2710

.field private static final START_SPAM_THRESHOLD_MS:J = 0x1388L


# instance fields
.field private mArgs:Ljava/lang/String;

.field private mBinPath:Ljava/lang/String;

.field private mCallback:Lcom/cisco/android/nchs/process/IProcessMonitorCB;

.field private mConsecutiveStartSpamAttempt:I

.field private mEnv:[Ljava/lang/String;

.field private final mOpResult:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mProcess:Ljava/lang/Process;

.field private mProcessKillNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessKiller:Lcom/cisco/android/nchs/process/ProcessKiller;

.field private mRestartOnCrash:Z

.field private final mShutdownLock:Ljava/lang/Object;

.field private mShutdownRequested:Z

.field private mStartAsRoot:Z

.field private mWorkingDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/cisco/android/nchs/process/IProcessMonitorCB;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/io/File;ZZLcom/cisco/android/nchs/process/ProcessKiller;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/android/nchs/process/IProcessMonitorCB;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "ZZ",
            "Lcom/cisco/android/nchs/process/ProcessKiller;",
            ")V"
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mOpResult:Ljava/util/LinkedList;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mShutdownLock:Ljava/lang/Object;

    .line 206
    iput-object p2, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mBinPath:Ljava/lang/String;

    .line 207
    iput-object p3, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mArgs:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/String;

    .line 208
    invoke-interface {p4, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    iput-object p3, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mEnv:[Ljava/lang/String;

    .line 209
    iput-object p5, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mProcessKillNameList:Ljava/util/List;

    .line 210
    iput p2, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mConsecutiveStartSpamAttempt:I

    .line 211
    iput-object p1, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mCallback:Lcom/cisco/android/nchs/process/IProcessMonitorCB;

    .line 212
    iput-object p6, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mWorkingDirectory:Ljava/io/File;

    .line 213
    iput-boolean p7, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mStartAsRoot:Z

    .line 214
    iput-boolean p8, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mRestartOnCrash:Z

    .line 215
    iput-object p9, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mProcessKiller:Lcom/cisco/android/nchs/process/ProcessKiller;

    .line 217
    iget-object p2, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mBinPath:Ljava/lang/String;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-eqz p6, :cond_0

    if-eqz p9, :cond_0

    if-eqz p5, :cond_0

    return-void

    .line 219
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "binPath, cb, and workingDirectory cannot not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getEnv()[Ljava/lang/String;
    .locals 10

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    iget-object v1, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mEnv:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 161
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v1

    .line 165
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 169
    iget-object v6, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mEnv:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 171
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v6, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_3

    goto :goto_1

    .line 183
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-array v1, v3, [Ljava/lang/String;

    .line 186
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private isShutdownRequested()Z
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mShutdownLock:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    :try_start_0
    iget-boolean v1, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mShutdownRequested:Z

    .line 437
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private killAllProcesses(Z)Z
    .locals 8

    .line 72
    iget-object v0, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mProcessKillNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 74
    invoke-direct {p0, v5, p1}, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->killExistingProcess(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 77
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to kill existing instance of "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ProcessMonitorThread"

    invoke-static {v3, v6, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private killExistingProcess(Ljava/lang/String;Z)Z
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mProcessKiller:Lcom/cisco/android/nchs/process/ProcessKiller;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/process/ProcessKiller;->resetOptions()V

    .line 100
    iget-object v0, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mProcessKiller:Lcom/cisco/android/nchs/process/ProcessKiller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cisco/android/nchs/process/ProcessKiller;->setUseForce(Z)V

    .line 101
    iget-object v0, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mProcessKiller:Lcom/cisco/android/nchs/process/ProcessKiller;

    iget-boolean v2, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mStartAsRoot:Z

    invoke-virtual {v0, v2}, Lcom/cisco/android/nchs/process/ProcessKiller;->setUseRoot(Z)V

    .line 102
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mBinPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mProcessKiller:Lcom/cisco/android/nchs/process/ProcessKiller;

    invoke-virtual {v2, p1}, Lcom/cisco/android/nchs/process/ProcessKiller;->killProcesses(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_1

    return v1

    :cond_1
    const-wide/16 v2, 0x5dc

    .line 118
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 123
    :goto_0
    iget-object p2, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mProcessKiller:Lcom/cisco/android/nchs/process/ProcessKiller;

    invoke-virtual {p2, v1}, Lcom/cisco/android/nchs/process/ProcessKiller;->setUseForce(Z)V

    .line 124
    iget-object p2, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mProcessKiller:Lcom/cisco/android/nchs/process/ProcessKiller;

    invoke-virtual {p2, p1}, Lcom/cisco/android/nchs/process/ProcessKiller;->killProcesses(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 127
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Forcefully killed existing instances of "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because they did not terminate in time."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ProcessMonitorThread"

    .line 127
    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method private setOpResult(Ljava/lang/Object;)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mOpResult:Ljava/util/LinkedList;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mOpResult:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mOpResult:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 149
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized RequestKillProcess()Z
    .locals 5

    monitor-enter p0

    .line 282
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->isAlive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 284
    monitor-exit p0

    return v1

    .line 287
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mShutdownLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 289
    :try_start_2
    iput-boolean v1, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mShutdownRequested:Z

    .line 290
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    .line 294
    :try_start_3
    invoke-virtual {p0}, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->interrupt()V

    .line 295
    invoke-virtual {p0}, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 308
    monitor-exit p0

    return v1

    :catch_0
    move-exception v1

    .line 304
    :try_start_4
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "ProcessMonitorThread"

    const-string v4, "Unexpected Exception in RequestKillProcess"

    invoke-static {v2, v3, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 305
    monitor-exit p0

    return v0

    :catch_1
    move-exception v1

    .line 299
    :try_start_5
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "ProcessMonitorThread"

    const-string v4, "Unexpected InterruptionException in RequestKillProcess"

    invoke-static {v2, v3, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 300
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    .line 290
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized StartProcess()Z
    .locals 6

    const-string v0, "StartProcess invoked when ProcessMonitorThread is already active for "

    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mOpResult:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 244
    :try_start_1
    invoke-virtual {p0}, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "ProcessMonitorThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mBinPath:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 252
    :try_start_2
    invoke-virtual {p0}, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->start()V

    .line 253
    iget-object v2, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mOpResult:Ljava/util/LinkedList;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    :try_start_3
    iget-object v2, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mOpResult:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "ProcessMonitorThread"

    const-string v4, "No result from starting process"

    invoke-static {v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    .line 272
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mOpResult:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v0

    :catch_0
    move-exception v2

    .line 262
    :try_start_5
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "ProcessMonitorThread"

    const-string v5, "Unexpected Exception in StartProcess"

    invoke-static {v3, v4, v5, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v0

    :catch_1
    move-exception v2

    .line 257
    :try_start_6
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "ProcessMonitorThread"

    const-string v5, "Unexpected InterruptedException in StartProcess"

    invoke-static {v3, v4, v5, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 273
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 11

    const-string v0, "ProcessMonitorThread"

    .line 316
    iget-object v1, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mProcessKillNameList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    .line 318
    invoke-direct {p0, v2}, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->killAllProcesses(Z)Z

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mBinPath:Ljava/lang/String;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mBinPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mWorkingDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mBinPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/cisco/android/nchs/io/FileUtils;->SetExecutable(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 343
    :catch_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Process launch interrupted before starting."

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v3

    .line 339
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to set executable: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 v3, 0x1

    .line 350
    :goto_2
    invoke-direct {p0}, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->isShutdownRequested()Z

    move-result v4

    if-nez v4, :cond_a

    const/16 v4, 0x19

    .line 352
    iget v5, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mConsecutiveStartSpamAttempt:I

    if-ne v4, v5, :cond_2

    .line 354
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "max start attempts reached for process "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mProcess:Ljava/lang/Process;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 359
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 362
    :try_start_1
    iget-boolean v6, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mStartAsRoot:Z

    invoke-static {v6}, Lcom/cisco/anyconnect/vpn/android/process/ProcessLauncherFactory;->getInstance(Z)Lcom/cisco/anyconnect/vpn/android/process/ProcessLauncher;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mArgs:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->getEnv()[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mWorkingDirectory:Ljava/io/File;

    invoke-interface {v6, v7, v8, v9}, Lcom/cisco/anyconnect/vpn/android/process/ProcessLauncher;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v6

    iput-object v6, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mProcess:Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception v6

    .line 366
    sget-object v7, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v8, "Unexpected IOException"

    invoke-static {v7, v0, v8, v6}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    const/4 v6, 0x0

    if-eqz v3, :cond_4

    .line 372
    iget-object v3, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mProcess:Ljava/lang/Process;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->setOpResult(Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 375
    :cond_4
    iget-object v7, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mProcess:Ljava/lang/Process;

    if-nez v7, :cond_5

    .line 377
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to start process "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mBinPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 381
    :cond_5
    iget-object v7, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mCallback:Lcom/cisco/android/nchs/process/IProcessMonitorCB;

    invoke-interface {v7, p0}, Lcom/cisco/android/nchs/process/IProcessMonitorCB;->OnProcessStarted(Lcom/cisco/android/nchs/process/ProcessMonitorThread;)V

    const/4 v7, 0x0

    .line 385
    :try_start_2
    iget-object v8, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mProcess:Ljava/lang/Process;

    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    .line 388
    iget-boolean v8, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mRestartOnCrash:Z

    if-eqz v8, :cond_8

    .line 390
    iget-object v8, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mCallback:Lcom/cisco/android/nchs/process/IProcessMonitorCB;

    invoke-interface {v8, p0}, Lcom/cisco/android/nchs/process/IProcessMonitorCB;->OnProcessRestarting(Lcom/cisco/android/nchs/process/ProcessMonitorThread;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 393
    iget-object v0, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mCallback:Lcom/cisco/android/nchs/process/IProcessMonitorCB;

    invoke-interface {v0, p0}, Lcom/cisco/android/nchs/process/IProcessMonitorCB;->OnProcessStopped(Lcom/cisco/android/nchs/process/ProcessMonitorThread;)V

    .line 394
    iget-object v0, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 395
    iput-object v7, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mProcess:Ljava/lang/Process;

    goto :goto_5

    .line 399
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    const-wide/16 v4, 0x1388

    cmp-long v10, v8, v4

    if-gez v10, :cond_7

    .line 401
    iget v4, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mConsecutiveStartSpamAttempt:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mConsecutiveStartSpamAttempt:I

    .line 402
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "consecutive start attempt: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mConsecutiveStartSpamAttempt:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 406
    :cond_7
    iput v6, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mConsecutiveStartSpamAttempt:I

    goto/16 :goto_2

    .line 411
    :cond_8
    iget-object v0, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mCallback:Lcom/cisco/android/nchs/process/IProcessMonitorCB;

    invoke-interface {v0, p0}, Lcom/cisco/android/nchs/process/IProcessMonitorCB;->OnProcessStopped(Lcom/cisco/android/nchs/process/ProcessMonitorThread;)V

    .line 412
    iget-object v0, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 413
    iput-object v7, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mProcess:Ljava/lang/Process;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_5

    :catch_3
    nop

    .line 420
    invoke-direct {p0, v6}, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->killAllProcesses(Z)Z

    move-result v0

    if-nez v0, :cond_9

    .line 422
    iget-object v0, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 424
    :cond_9
    iput-object v7, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mProcess:Ljava/lang/Process;

    .line 425
    iget-object v0, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mCallback:Lcom/cisco/android/nchs/process/IProcessMonitorCB;

    invoke-interface {v0, p0}, Lcom/cisco/android/nchs/process/IProcessMonitorCB;->OnProcessStopped(Lcom/cisco/android/nchs/process/ProcessMonitorThread;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public declared-synchronized setStartAsRoot(Z)V
    .locals 0

    monitor-enter p0

    .line 60
    :try_start_0
    iput-boolean p1, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mStartAsRoot:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mArgs:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mBinPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mArgs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/process/ProcessMonitorThread;->mBinPath:Ljava/lang/String;

    return-object v0
.end method

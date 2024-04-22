.class public abstract Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;
.super Ljava/lang/Thread;
.source "ProcessOutputParser.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final ENTITY_NAME:Ljava/lang/String; = "ProcessOutputParser"


# instance fields
.field private mBuffer:Ljava/io/BufferedReader;

.field private mCommand:[Ljava/lang/String;

.field private mPrettyCommand:Ljava/lang/String;

.field private mProcess:Ljava/lang/Process;

.field private mProcessReaderThread:Ljava/lang/Thread;

.field private final mStopLock:Ljava/lang/Object;

.field private mStopped:Z

.field private mStringBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateIntervalMillis:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBuffer(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/io/BufferedReader;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mBuffer:Ljava/io/BufferedReader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrettyCommand(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mPrettyCommand:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcess(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/lang/Process;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mProcess:Ljava/lang/Process;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStringBuffer(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mStringBuffer:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetStop(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->setStop()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 5

    .line 44
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mUpdateIntervalMillis:I

    .line 35
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mStopLock:Ljava/lang/Object;

    .line 45
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mStopped:Z

    .line 47
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mCommand:[Ljava/lang/String;

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mCommand:[Ljava/lang/String;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mPrettyCommand:Ljava/lang/String;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mStringBuffer:Ljava/util/ArrayList;

    if-lez p2, :cond_1

    .line 59
    iput p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mUpdateIntervalMillis:I

    :cond_1
    return-void
.end method

.method private isStopped()Z
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mStopped:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 166
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readProcessOutput()V
    .locals 3

    .line 138
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting to read from Process: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mPrettyCommand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProcessOutputParser"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->isStopped()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mUpdateIntervalMillis:I

    if-lez v0, :cond_0

    int-to-long v0, v0

    .line 145
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 146
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->sendUpdate()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->sendUpdate()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized sendUpdate()V
    .locals 2

    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mStringBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mStringBuffer:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->onNewContent(Ljava/util/ArrayList;)V

    .line 226
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mStringBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setStop()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 173
    :try_start_0
    iput-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mStopped:Z

    .line 174
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 3

    monitor-enter p0

    .line 179
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->isStopped()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 181
    monitor-exit p0

    return-void

    .line 184
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mProcess:Ljava/lang/Process;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 186
    monitor-exit p0

    return-void

    .line 189
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->setStop()V

    .line 191
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 193
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->onComplete()V

    .line 197
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    :try_start_3
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mBuffer:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 207
    :catch_0
    :try_start_4
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ProcessOutputParser"

    const-string v2, "Unexpected IOException when closing shared buffer."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 213
    :goto_0
    :try_start_5
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mProcessReaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 217
    :catch_1
    :try_start_6
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ProcessOutputParser"

    const-string v2, "Unexpected InterruptedException when joining internal thread."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 219
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPrettyCommand()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mPrettyCommand:Ljava/lang/String;

    return-object v0
.end method

.method public abstract includeLine(Ljava/lang/String;)Z
.end method

.method public abstract onComplete()V
.end method

.method public abstract onNewContent(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public run()V
    .locals 3

    .line 65
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mStopped:Z

    if-nez v0, :cond_0

    .line 72
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mCommand:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mProcess:Ljava/lang/Process;

    .line 73
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mProcess:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mBuffer:Ljava/io/BufferedReader;

    .line 75
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mProcessReaderThread:Ljava/lang/Thread;

    .line 125
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->readProcessOutput()V

    return-void

    .line 129
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not open process for command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->mPrettyCommand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProcessOutputParser"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Cannot access a stopped ProcessOutputParser"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

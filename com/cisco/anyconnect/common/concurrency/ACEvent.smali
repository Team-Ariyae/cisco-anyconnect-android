.class public Lcom/cisco/anyconnect/common/concurrency/ACEvent;
.super Ljava/lang/Object;
.source "ACEvent.java"


# instance fields
.field private mHasFinished:Z

.field private final mLock:Ljava/lang/Object;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/common/concurrency/ACEvent;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/cisco/anyconnect/common/concurrency/ACEvent;->mHasFinished:Z

    .line 12
    iput-object p1, p0, Lcom/cisco/anyconnect/common/concurrency/ACEvent;->mName:Ljava/lang/String;

    return-void
.end method

.method private logError(Ljava/lang/String;)V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cisco/anyconnect/common/concurrency/ACEvent;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/cisco/anyconnect/common/concurrency/ACEvent;->mHasFinished:Z

    return-void
.end method

.method public setEvent()V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/cisco/anyconnect/common/concurrency/ACEvent;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/common/concurrency/ACEvent;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lcom/cisco/anyconnect/common/concurrency/ACEvent;->mHasFinished:Z

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitForEvent(J)Z
    .locals 6

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 29
    iget-object v2, p0, Lcom/cisco/anyconnect/common/concurrency/ACEvent;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 30
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/cisco/anyconnect/common/concurrency/ACEvent;->mHasFinished:Z

    if-nez v3, :cond_1

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    cmp-long v5, v3, p1

    if-lez v5, :cond_0

    const-string p1, "timed out"

    .line 32
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/common/concurrency/ACEvent;->logError(Ljava/lang/String;)V

    .line 33
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    return p1

    .line 37
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/cisco/anyconnect/common/concurrency/ACEvent;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 43
    :cond_1
    :try_start_2
    monitor-exit v2

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 44
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

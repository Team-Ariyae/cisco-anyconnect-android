.class public abstract Lcom/cisco/android/nchs/process/ProcessKiller;
.super Ljava/lang/Object;
.source "ProcessKiller.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "ProcessKiller"


# instance fields
.field protected mUseForce:Z

.field protected mUseRoot:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static waitForProcessToFinish(Ljava/lang/Process;)Z
    .locals 4

    const/4 v0, 0x0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 44
    :catch_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "ProcessKiller"

    const-string/jumbo v3, "waitForProcessToFinish unexpected InterruptedException"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    return v0
.end method


# virtual methods
.method public abstract killProcesses(Ljava/lang/String;)Z
.end method

.method public resetOptions()V
    .locals 1

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/cisco/android/nchs/process/ProcessKiller;->mUseRoot:Z

    .line 85
    iput-boolean v0, p0, Lcom/cisco/android/nchs/process/ProcessKiller;->mUseForce:Z

    return-void
.end method

.method public setUseForce(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/cisco/android/nchs/process/ProcessKiller;->mUseForce:Z

    return-void
.end method

.method public setUseRoot(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/cisco/android/nchs/process/ProcessKiller;->mUseRoot:Z

    return-void
.end method

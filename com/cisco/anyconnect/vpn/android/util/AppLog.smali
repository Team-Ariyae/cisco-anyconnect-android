.class public Lcom/cisco/anyconnect/vpn/android/util/AppLog;
.super Ljava/lang/Object;
.source "AppLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;,
        Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;
    }
.end annotation


# static fields
.field public static final GLOBAL_LOG_TAG:Ljava/lang/String; = "AnyConnect"

.field private static sLogger:Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/util/AndroidLogger;

    const-string v1, "AnyConnect"

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AndroidLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->sLogger:Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dt(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static error(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-static {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 160
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 162
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->sLogger:Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-interface {p1, v0, p0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;->log(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-static {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 153
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 155
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->sLogger:Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-interface {p1, v0, p0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;->log(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static info(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    .line 112
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 114
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->sLogger:Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;->log(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static info(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 122
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->sLogger:Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;->log(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static logDebugBuildFunctionExit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->sLogger:Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;

    const/4 v0, 0x0

    invoke-interface {p2, p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;->log(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 78
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->sLogger:Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;

    const/4 v0, 0x0

    invoke-interface {p2, p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;->log(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->sLogger:Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;

    invoke-interface {p2, p0, p1, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;->log(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logNativeMessage(Lcom/cisco/anyconnect/android/util/ACLogEntry;)V
    .locals 1

    .line 205
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->sLogger:Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;

    invoke-interface {v0, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;->nativeLog(Lcom/cisco/anyconnect/android/util/ACLogEntry;)V

    return-void
.end method

.method public static logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;",
            "Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 96
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->shouldLog(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->getComponentName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 104
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->shouldLog(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->getComponentName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setLogger(Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;)V
    .locals 0

    .line 59
    sput-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->sLogger:Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;

    return-void
.end method

.method public static shouldLog(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;)Z
    .locals 1

    .line 90
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->getInstance()Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p0}, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->GetConfiguration(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static verbose(Ljava/lang/Object;Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Ljava/lang/String;)V
    .locals 2

    .line 167
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->shouldLog(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 170
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 171
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->getComponentName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    .line 135
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 137
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->sLogger:Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;->log(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static warn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 128
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 130
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->sLogger:Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;->log(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

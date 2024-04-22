.class public Lcom/cisco/anyconnect/vpn/android/util/AndroidLogger;
.super Ljava/lang/Object;
.source "AndroidLogger.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;


# static fields
.field private static mModule:Ljava/lang/String;


# instance fields
.field private mDefaultTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AndroidLogger;->mModule:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 36
    sput-object v0, Lcom/cisco/anyconnect/vpn/android/util/AndroidLogger;->mModule:Ljava/lang/String;

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/util/AndroidLogger;->mDefaultTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sput-object p1, Lcom/cisco/anyconnect/vpn/android/util/AndroidLogger;->mModule:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/util/AndroidLogger;->mDefaultTag:Ljava/lang/String;

    return-void
.end method

.method private sendLogToLogcat(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 82
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AndroidLogger$1;->$SwitchMap$com$cisco$anyconnect$vpn$android$util$AppLog$Severity:[I

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {p2, p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {p2, p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 88
    :cond_2
    invoke-static {p2, p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 85
    :cond_3
    invoke-static {p2, p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private sendLogToProvider(JLjava/lang/String;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    if-eqz p7, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "\n"

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    :cond_0
    move-object v5, p6

    move-wide v0, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 77
    invoke-static/range {v0 .. v5}, Lcom/cisco/anyconnect/android/util/ACLogsQuery;->addLog(JLjava/lang/String;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public log(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .line 44
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    .line 49
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int/lit16 v1, v0, 0x3e8

    .line 51
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 55
    :cond_0
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/util/AndroidLogger;->mDefaultTag:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v0, p3}, Lcom/cisco/anyconnect/vpn/android/util/AndroidLogger;->sendLogToLogcat(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    .line 60
    :cond_1
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AndroidLogger;->mModule:Ljava/lang/String;

    iget-object v6, p0, Lcom/cisco/anyconnect/vpn/android/util/AndroidLogger;->mDefaultTag:Ljava/lang/String;

    move-object v1, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/cisco/anyconnect/vpn/android/util/AndroidLogger;->sendLogToProvider(JLjava/lang/String;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public nativeLog(Lcom/cisco/anyconnect/android/util/ACLogEntry;)V
    .locals 8

    .line 67
    iget-wide v1, p1, Lcom/cisco/anyconnect/android/util/ACLogEntry;->timeMs:J

    iget-object v3, p1, Lcom/cisco/anyconnect/android/util/ACLogEntry;->module:Ljava/lang/String;

    iget-object v4, p1, Lcom/cisco/anyconnect/android/util/ACLogEntry;->severity:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    iget-object v5, p1, Lcom/cisco/anyconnect/android/util/ACLogEntry;->tag:Ljava/lang/String;

    iget-object v6, p1, Lcom/cisco/anyconnect/android/util/ACLogEntry;->message:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/cisco/anyconnect/vpn/android/util/AndroidLogger;->sendLogToProvider(JLjava/lang/String;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

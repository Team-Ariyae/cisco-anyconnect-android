.class public Lcom/cisco/anyconnect/acruntime/utils/LogProxy;
.super Ljava/lang/Object;
.source "LogProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NVMSeverityToVPNSeverity(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;)Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;
    .locals 2

    .line 21
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    .line 22
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/LogProxy$1;->$SwitchMap$com$cisco$anyconnect$acruntime$utils$AppLog$Severity:[I

    invoke-virtual {p0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    goto :goto_0

    .line 28
    :cond_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    goto :goto_0

    .line 25
    :cond_3
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    :goto_0
    return-object v0
.end method

.method public static logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/cisco/anyconnect/acruntime/utils/LogProxy;->NVMSeverityToVPNSeverity(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;)Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/cisco/anyconnect/acruntime/utils/LogProxy;->NVMSeverityToVPNSeverity(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;)Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

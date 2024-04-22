.class Lcom/cisco/anyconnect/vpn/android/service/CertImporter;
.super Ljava/lang/Object;
.source "CertImporter.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "CertImporter"


# instance fields
.field private mIsImportInProgress:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method CanImport(Lcom/cisco/anyconnect/vpn/jni/VPNState;Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)Z
    .locals 1

    .line 37
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-ne v0, p1, :cond_1

    :cond_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    if-ne p1, p2, :cond_1

    iget-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/CertImporter;->mIsImportInProgress:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method ImportPKCS12WithPassword(Lcom/cisco/anyconnect/vpn/jni/IVpnApi;[BLjava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    const-string v1, "CertImporter"

    if-nez p1, :cond_0

    .line 86
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Unexpected null API for importPKCS12"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    .line 92
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Unexpected null cert data for importPKCS12"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 97
    :cond_1
    invoke-interface {p1, p2, p3}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->ImportPKCS12WithPassword([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method IsImportInProgress()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/CertImporter;->mIsImportInProgress:Z

    return v0
.end method

.method OnImportCompleted()V
    .locals 1

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/CertImporter;->mIsImportInProgress:Z

    return-void
.end method

.method StartImportPKCS12(Lcom/cisco/anyconnect/vpn/jni/IVpnApi;[B)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "CertImporter"

    if-nez p1, :cond_0

    .line 53
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Unexpected null API for importPKCS12"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p2, :cond_1

    .line 59
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Unexpected null cert data for importPKCS12"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 63
    :cond_1
    invoke-interface {p1, p2}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->RequestImportPKCS12([B)Z

    move-result p1

    if-nez p1, :cond_2

    .line 66
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "IVpnAPI RequestImportPKCS12 failed"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/CertImporter;->mIsImportInProgress:Z

    return p1
.end method

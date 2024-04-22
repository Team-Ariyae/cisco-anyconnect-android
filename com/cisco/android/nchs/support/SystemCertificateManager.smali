.class public Lcom/cisco/android/nchs/support/SystemCertificateManager;
.super Ljava/lang/Object;
.source "SystemCertificateManager.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "SystemCertificateManager"

.field public static final EXTRA_CERT_IMPORT_PKCS12:Ljava/lang/String; = "cert_pkcs12"

.field public static final EXTRA_CERT_IMPORT_RESULT_CERT_ALIAS:Ljava/lang/String; = "cert_alias"

.field public static final EXTRA_CERT_IMPORT_RESULT_CERT_BLOB:Ljava/lang/String; = "cert_blob"

.field public static final EXTRA_CERT_IMPORT_RESULT_CERT_PASSWORD:Ljava/lang/String; = "cert_password"

.field public static final KEY_CERT_IMPORT_RESULT:Ljava/lang/String; = "com.cisco.android.nchs.KEY_CERT_IMPORT_RESULT"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected final mService:Lcom/cisco/android/nchs/NetworkComponentHostService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cisco/android/nchs/NetworkComponentHostService;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/cisco/android/nchs/support/SystemCertificateManager;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/cisco/android/nchs/support/SystemCertificateManager;->mService:Lcom/cisco/android/nchs/NetworkComponentHostService;

    return-void
.end method


# virtual methods
.method public deleteCertificate(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/CertOpCode;
    .locals 0

    .line 58
    sget-object p1, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_OPERATION_NOT_SUPPORTED:Lcom/cisco/android/nchs/aidl/CertOpCode;

    return-object p1
.end method

.method protected importCertificate(Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/cisco/android/nchs/aidl/CertOpCode;
    .locals 6

    .line 71
    sget-object p4, Lcom/cisco/android/nchs/support/SystemCertificateManager$1;->$SwitchMap$com$cisco$android$nchs$support$CertificateManager$CertificateBlobType:[I

    invoke-virtual {p1}, Lcom/cisco/android/nchs/support/CertificateManager$CertificateBlobType;->ordinal()I

    move-result p1

    aget p1, p4, p1

    const/4 p4, 0x0

    const/4 v0, 0x0

    const-string v1, "cert_blob"

    const-string v2, "cert_alias"

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    .line 119
    sget-object p1, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_OPERATION_NOT_SUPPORTED:Lcom/cisco/android/nchs/aidl/CertOpCode;

    return-object p1

    :cond_0
    const/16 p1, 0x12

    .line 100
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, p1, :cond_1

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".p12"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 105
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/cisco/android/nchs/support/SystemCertificateManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/cisco/android/nchs/ImportCertToSystemActivity;

    invoke-direct {p1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    invoke-virtual {p1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p2, "cert_password"

    .line 108
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "cert_pkcs12"

    .line 109
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    iget-object p2, p0, Lcom/cisco/android/nchs/support/SystemCertificateManager;->mService:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-virtual {p2, v0, p4, p6, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->startExternalActivity(Ljava/lang/String;ZLandroid/content/Intent;Landroid/content/Intent;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    .line 112
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq p2, p1, :cond_2

    .line 114
    sget-object p1, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/CertOpCode;

    return-object p1

    .line 116
    :cond_2
    sget-object p1, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_IMPORT_INITIATED_WAITING_ON_USER:Lcom/cisco/android/nchs/aidl/CertOpCode;

    return-object p1

    .line 78
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".der"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    new-instance p3, Landroid/content/Intent;

    iget-object p5, p0, Lcom/cisco/android/nchs/support/SystemCertificateManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/cisco/android/nchs/ImportCertToSystemActivity;

    invoke-direct {p3, p5, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    invoke-virtual {p3, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 85
    iget-object p1, p0, Lcom/cisco/android/nchs/support/SystemCertificateManager;->mService:Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-virtual {p1, v0, p4, p6, p3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->startExternalActivity(Ljava/lang/String;ZLandroid/content/Intent;Landroid/content/Intent;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    .line 86
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq p2, p1, :cond_4

    .line 88
    sget-object p1, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/CertOpCode;

    return-object p1

    .line 90
    :cond_4
    sget-object p1, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_IMPORT_INITIATED_WAITING_ON_USER:Lcom/cisco/android/nchs/aidl/CertOpCode;

    return-object p1
.end method

.method protected isCertificateInstalled(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "Exception getting the certificate chain "

    const-string v1, "SystemCertificateManager"

    const-string v2, "Certificate is not installed: "

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 135
    :try_start_0
    iget-object v5, p0, Lcom/cisco/android/nchs/support/SystemCertificateManager;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Landroid/security/KeyChain;->getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v5

    if-nez v5, :cond_0

    .line 137
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/security/KeyChainException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_0
    return v4

    :catch_0
    move-exception v2

    .line 153
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v1, p1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3

    :catch_1
    move-exception v2

    .line 148
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/security/KeyChainException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

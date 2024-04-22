.class public Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;
.super Ljava/lang/Object;
.source "ClientCertImporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;,
        Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$VpnServiceException;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "ClientCertImporter"

.field public static final IMPORT_RESULT_CERT_HASH_KEY:Ljava/lang/String; = "cert_hash"

.field private static final MAX_CERT_FILE_SIZE_BYTES:I = 0x3e800


# instance fields
.field private final IMPORT_TIMEOUT:J

.field private mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

.field private mCertificateListener:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

.field private mContext:Landroid/content/Context;

.field private mExitMessage:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mImportTaskTimeout:Ljava/lang/Runnable;

.field private final mProcessImportTask:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;

.field private mPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

.field private mRegisteredHandlers:Z

.field private mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mCertificateListener:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExitMessage(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mExitMessage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmExitMessage(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mExitMessage:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelImportTask(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->cancelImportTask()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelImportTimer(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->cancelImportTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mimportPkcs12(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->importPkcs12(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 2

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7530

    .line 65
    iput-wide v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->IMPORT_TIMEOUT:J

    .line 67
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    .line 112
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$2;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mCertificateListener:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    .line 209
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$3;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$3;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mHandler:Landroid/os/Handler;

    .line 217
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$4;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$4;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mImportTaskTimeout:Ljava/lang/Runnable;

    const-string v0, "ClientCertImporter"

    const-string v1, "CertImporter()"

    .line 155
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 161
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    .line 162
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mContext:Landroid/content/Context;

    .line 163
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    .line 165
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask-IA;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mProcessImportTask:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;

    return-void

    .line 158
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null argument(s) passed to CertImporter()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private cancelImportTask()V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mProcessImportTask:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 235
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;->cancel(Z)Z

    .line 236
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    const v1, 0x7f110174

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private cancelImportTimer()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mImportTaskTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private importPkcs12(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "ClientCertImporter"

    const-string v1, "importPkcs12(String Enum)"

    .line 274
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    const v3, 0x3e800

    invoke-static {p1, p2, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever;->getFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;I)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return v0

    .line 303
    :cond_0
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->importPkcs12([B)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 283
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_file_not_found:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;->getResult()Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    move-result-object v1

    if-ne p2, v1, :cond_1

    const p1, 0x7f110141

    .line 285
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mExitMessage:Ljava/lang/String;

    goto :goto_0

    .line 287
    :cond_1
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_file_too_big:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;->getResult()Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    move-result-object v1

    if-ne p2, v1, :cond_2

    const p1, 0x7f110144

    .line 289
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mExitMessage:Ljava/lang/String;

    goto :goto_0

    .line 291
    :cond_2
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_invalid_uri:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;->getResult()Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    move-result-object p1

    if-ne p2, p1, :cond_3

    const p1, 0x7f11009e

    .line 293
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mExitMessage:Ljava/lang/String;

    :cond_3
    :goto_0
    return v0
.end method

.method private importPkcs12([B)Z
    .locals 3

    const-string v0, "importPkcs12(byte[])"

    const-string v1, "ClientCertImporter"

    .line 313
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 317
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "null certificate bytes passed"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 326
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RequestImportPKCS12([B)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 341
    :cond_1
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CERT_IMPORT_INVALID_STATE:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    const v1, 0x7f110068

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V

    return v0

    .line 346
    :cond_2
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CERT_IMPORT_IN_PROGRESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 348
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    const v1, 0x7f110067

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V

    :cond_3
    return v0

    .line 330
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RequestImportPKCS12 failed."

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private registerHandlers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$VpnServiceException;
        }
    .end annotation

    .line 247
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mRegisteredHandlers:Z

    if-eqz v0, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->RegisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result v0

    const v1, 0x7f11013c

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mCertificateListener:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    invoke-interface {v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->RegisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mRegisteredHandlers:Z

    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V

    .line 266
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$VpnServiceException;

    const-string v1, "RegisterCertificateListener failed."

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$VpnServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V

    .line 258
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$VpnServiceException;

    const-string v1, "RegisterPromptHandler failed."

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$VpnServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startImportTimer()V
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mImportTaskTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mImportTaskTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public Cancel()V
    .locals 2

    .line 430
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->cancelImportTimer()V

    .line 432
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mProcessImportTask:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 434
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public processImport(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "ClientCertImporter"

    const/4 v1, 0x0

    .line 172
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->registerHandlers()V

    if-nez p3, :cond_0

    .line 176
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "null location parameter."

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 182
    :cond_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$5;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$uri$ImportTypes:[I

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 188
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Invalid import type."

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const v2, 0x7f11017b

    .line 185
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 193
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    invoke-interface {v4, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportStartCB(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->mProcessImportTask:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    const/4 p1, 0x2

    aput-object p3, v4, p1

    invoke-virtual {v2, v4}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->startImportTimer()V
    :try_end_0
    .catch Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$VpnServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 204
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "processImport failed due to exception."

    invoke-static {p2, v0, p3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

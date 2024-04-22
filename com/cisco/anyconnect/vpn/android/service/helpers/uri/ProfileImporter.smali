.class public Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;
.super Ljava/lang/Object;
.source "ProfileImporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "ProfileImporter"

.field private static final MAX_PROFILE_SIZE:I = 0x3e800


# instance fields
.field private mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

.field private mContext:Landroid/content/Context;

.field private mExitMessage:Ljava/lang/String;

.field private final mProcessImportTask:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask;

.field private mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExitMessage(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->mExitMessage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmExitMessage(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->mExitMessage:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mimportProfile(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->importProfile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    .line 44
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->mContext:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 52
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask-IA;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->mProcessImportTask:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask;

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null arg(s) passed to ProfileImporter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private importProfile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    const v3, 0x3e800

    invoke-static {p1, p2, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever;->getFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;I)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "ProfileImporter"

    if-nez v1, :cond_0

    .line 104
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "failed to get profile bytes"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 108
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 111
    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever;->getFileNameFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 114
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo v1, "unable to get profile name"

    invoke-static {p2, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-interface {p2, p1, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->ImportProfile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 123
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "RemoteException thrown in ImportProfile"

    invoke-static {p2, v2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :catch_1
    move-exception p1

    .line 87
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_file_not_found:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;->getResult()Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    move-result-object v1

    if-ne p2, v1, :cond_2

    const p1, 0x7f110141

    .line 89
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->mExitMessage:Ljava/lang/String;

    goto :goto_0

    .line 91
    :cond_2
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_file_too_big:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;->getResult()Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    move-result-object v1

    if-ne p2, v1, :cond_3

    const p1, 0x7f110144

    .line 93
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->mExitMessage:Ljava/lang/String;

    goto :goto_0

    .line 95
    :cond_3
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_invalid_uri:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;->getResult()Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    move-result-object p1

    if-ne p2, p1, :cond_4

    const p1, 0x7f110260

    .line 97
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->mExitMessage:Ljava/lang/String;

    :cond_4
    :goto_0
    return v0
.end method


# virtual methods
.method public Cancel()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->mProcessImportTask:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask;->cancel(Z)Z

    return-void
.end method

.method public processImport(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;)Z
    .locals 3

    const-string v0, "processImport"

    const-string v1, "ProfileImporter"

    .line 57
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 60
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "null location parameter."

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    const v2, 0x7f11017e

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportStartCB(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->mProcessImportTask:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v0

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return p2
.end method

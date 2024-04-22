.class public Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever;
.super Ljava/lang/Object;
.source "FileRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;,
        Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;,
        Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "FileRetreiver"

.field private static final mReadBufferSize:I = 0x800


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;
        }
    .end annotation

    const-string v0, "URI scheme: \'"

    const-string v1, "FileRetreiver"

    if-eqz p0, :cond_5

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    move-result-object p1

    .line 217
    :try_start_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$1;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$uri$FileRetriever$SupportedURISchemes:[I

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 p2, 0x3

    if-eq v2, p2, :cond_1

    const/4 p2, 0x4

    if-ne v2, p2, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not supported."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 221
    :cond_1
    :goto_0
    invoke-static {p0, p4}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever;->getRemoteFile(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0

    .line 223
    :cond_2
    invoke-static {p0, p2, p3, p4}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever;->getHttps(Ljava/lang/String;Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;I)[B

    move-result-object p0

    return-object p0

    .line 225
    :cond_3
    invoke-static {p0, p2, p4}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever;->getLocalFile(Ljava/lang/String;Landroid/content/Context;I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 241
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "No https protocol present on system, cannot get: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 237
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Failed to set custom TrustManager, cannot get: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 233
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Failed to get "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    :goto_1
    new-instance p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;

    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_generic:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;)V

    throw p0

    .line 209
    :cond_4
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo p1, "unexpected uri scheme"

    invoke-static {p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;

    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_generic:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;)V

    throw p0

    .line 203
    :cond_5
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p1, "Null param(s) passed to getFile()"

    invoke-static {p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;

    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_generic:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;)V

    throw p0
.end method

.method public static getFileLocationFromUri(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;)Ljava/lang/String;
    .locals 1

    .line 179
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$1;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$uri$FileRetriever$SupportedURISchemes:[I

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "file:[/]*"

    const-string v0, "/"

    .line 182
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getFileNameFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "FileRetreiver"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 129
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo p1, "unexpected null URL passed to getFileNameFromUrl()"

    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 135
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unexpected uri scheme: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 139
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    move-result-object p1

    .line 141
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$1;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$uri$FileRetriever$SupportedURISchemes:[I

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    return-object v1

    .line 151
    :cond_2
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string p1, ""

    .line 153
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    return-object v1

    :catch_0
    move-exception p0

    .line 161
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "MalformedURLException thrown: "

    invoke-static {p1, v0, v2, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 144
    :cond_4
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getHttps(Ljava/lang/String;Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;
        }
    .end annotation

    const-string v0, "getHttps()"

    const-string v1, "FileRetreiver"

    .line 375
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "TLS"

    .line 383
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    .line 386
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;

    invoke-direct {v2, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;-><init>(Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 388
    invoke-static {p0, p3}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever;->getRemoteFile(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0

    .line 379
    :cond_0
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p1, "Null param(s) passed to getHttps"

    invoke-static {p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    new-instance p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;

    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_generic:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;)V

    throw p0
.end method

.method private static getLocalFile(Ljava/lang/String;Landroid/content/Context;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;
        }
    .end annotation

    const-string v0, "getLocalFile()"

    const-string v1, "FileRetreiver"

    .line 400
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_4

    .line 410
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    if-lez p2, :cond_1

    .line 416
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p0

    int-to-long v2, p2

    cmp-long v4, p0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "file size:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " exceeded max size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    new-instance p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;

    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_file_too_big:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;)V

    throw p0

    .line 424
    :cond_1
    :goto_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_1

    .line 432
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 p2, 0x800

    new-array v0, p2, [B

    :goto_2
    const/4 v1, 0x0

    .line 445
    invoke-virtual {p0, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_3

    .line 447
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 449
    :cond_3
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 450
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 452
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    .line 436
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Open URI failed, file: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-class p2, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever;

    invoke-static {p2, p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 437
    new-instance p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;

    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_file_not_found:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;)V

    throw p0

    .line 404
    :cond_4
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p1, "file param was null"

    invoke-static {p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;

    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_generic:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method private static getRemoteFile(Ljava/lang/String;I)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;
        }
    .end annotation

    const-string v0, "getRemoteFile()"

    const-string v1, "FileRetreiver"

    .line 260
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_b

    .line 267
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a

    .line 275
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, " exceeded max size "

    const-string v4, "file size:"

    if-eqz v2, :cond_2

    .line 284
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v5

    if-lez v5, :cond_3

    if-gt v5, p1, :cond_1

    goto :goto_1

    .line 289
    :cond_1
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;

    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_file_too_big:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :catch_0
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p1, "Invalid URI specified"

    invoke-static {p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;

    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_invalid_uri:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;)V

    throw p0

    :cond_2
    const/4 v5, -0x1

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    if-gez v5, :cond_4

    const/4 v5, 0x0

    :cond_4
    const/4 v6, 0x0

    .line 313
    :try_start_1
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v7, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 314
    :try_start_2
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v6, 0x800

    :try_start_3
    new-array v8, v6, [B

    .line 319
    :cond_5
    :goto_2
    invoke-virtual {v7, v8, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    if-ltz v9, :cond_7

    .line 321
    invoke-virtual {p0, v8, v0, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-eqz v2, :cond_5

    add-int/2addr v5, v9

    if-gt v5, p1, :cond_6

    goto :goto_2

    .line 327
    :cond_6
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_file_too_big:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;)V

    throw p1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 347
    :cond_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 351
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 355
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object p0, v6

    :goto_3
    move-object v6, v7

    goto :goto_7

    :catch_2
    move-exception p1

    move-object p0, v6

    :goto_4
    move-object v6, v7

    goto :goto_5

    :catch_3
    move-object p0, v6

    :catch_4
    move-object v6, v7

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object p0, v6

    goto :goto_7

    :catch_5
    move-exception p1

    move-object p0, v6

    .line 340
    :goto_5
    :try_start_4
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "I/O Error"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_generic:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;)V

    throw p1

    :catch_6
    move-object p0, v6

    .line 335
    :goto_6
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "File Not Found"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_file_not_found:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    :goto_7
    if-eqz v6, :cond_8

    .line 347
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz p0, :cond_9

    .line 351
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 353
    :cond_9
    throw p1

    .line 270
    :cond_a
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid URL, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", no host specified."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid URL, no host specified."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 263
    :cond_b
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo p1, "uri param was null"

    invoke-static {p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;

    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;->failure_generic:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileRetrieverException;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$FileResultCode;)V

    goto :goto_9

    :goto_8
    throw p0

    :goto_9
    goto :goto_8
.end method

.class public Lcom/cisco/anyconnect/nvm/utils/NVMUtils;
.super Ljava/lang/Object;
.source "NVMUtils.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NVMUtils"

.field private static filesToDelete:[Ljava/lang/String;

.field private static filesToMigrate:[Ljava/lang/String;

.field private static nvmDirPath:Ljava/lang/String;

.field private static nvmPreferenceFilePath:Ljava/lang/String;

.field private static oldNVMPreferenceFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "KConfig.dat"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "NVM.db"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "NVM.db-journal"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v5, "PersistedData.dat"

    aput-object v5, v0, v1

    const/4 v1, 0x4

    const-string v5, "nvm_preferences"

    aput-object v5, v0, v1

    .line 47
    sput-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->filesToMigrate:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "NVM_ServiceProfile.xml"

    aput-object v1, v0, v2

    const-string v1, "NVM_CloudServiceProfile.xml"

    aput-object v1, v0, v3

    .line 48
    sput-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->filesToDelete:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .locals 1

    .line 510
    sget v0, Lcom/cisco/anyconnect/nvm/R$string;->nvm_foreground_service_description:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->buildNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static buildNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 4

    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.PRIMARY_ACTIVITY_SHOW_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 490
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "default"

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 492
    sget p0, Lcom/cisco/anyconnect/nvm/R$drawable;->notify_idle:I

    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 493
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 494
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 495
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 496
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 497
    invoke-virtual {p0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 499
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static cancelJob(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "NVMUtils"

    if-eqz p0, :cond_1

    .line 398
    invoke-static {p0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isBackgroundExecutionLimited(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/nvm/utils/NVMJobUtils;->cancelJob(Landroid/content/Context;I)V

    goto :goto_0

    .line 401
    :cond_0
    sget-object p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string p1, "Skipping jobscheduling as execution limit is not applicable for this OS version"

    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_1
    sget-object p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string p1, "Context is null, Cannot cancel job"

    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "notification"

    .line 520
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 521
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static cleanUpOldFiles(Landroid/content/Context;)Z
    .locals 9

    const/4 v0, 0x0

    const-string v1, "NVMUtils"

    if-eqz p0, :cond_2

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 202
    sget-object v2, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->filesToDelete:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 203
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 204
    invoke-static {v5}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->deleteFile(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 205
    sget-object p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deleted file failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 208
    :cond_0
    sget-object v6, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Deleted file : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v1, v5}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 212
    :cond_2
    sget-object p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "Clean up files failed, Context is null "

    invoke-static {p0, v1, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static createDirectory(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static decodeBase64(Ljava/lang/String;I)[B
    .locals 2

    .line 69
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 71
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v0, "NVMUtils"

    const-string v1, " Decode failed : "

    invoke-static {p1, v0, v1, p0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static generateSHA256Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "SHA-256"

    .line 320
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-16"

    .line 321
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 322
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 324
    :goto_0
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Saving AUP String failed"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NVMUtils"

    invoke-static {v0, v1, p0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public static getNVMDirPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 458
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->nvmDirPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/NVM"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->nvmDirPath:Ljava/lang/String;

    .line 461
    :cond_0
    sget-object p0, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->nvmDirPath:Ljava/lang/String;

    return-object p0

    .line 463
    :cond_1
    sget-object p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v0, "NVMUtils"

    const-string v1, "Failed to get NVM directory path, Context is null "

    invoke-static {p0, v0, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNVMPreferenceFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 532
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->nvmPreferenceFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->getNVMDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/nvm_preferences"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->nvmPreferenceFilePath:Ljava/lang/String;

    .line 535
    :cond_0
    sget-object p0, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->nvmPreferenceFilePath:Ljava/lang/String;

    return-object p0

    .line 537
    :cond_1
    sget-object p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v0, "NVMUtils"

    const-string v1, "Failed to get NVM preference file path, Context is null "

    invoke-static {p0, v0, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isACEulaAccepted(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "eula_status"

    .line 228
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "UserPreferences"

    const/4 v2, 0x0

    .line 232
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "eula"

    .line 234
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 236
    invoke-static {p0, v0, v2}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 238
    :cond_0
    sget-object p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v0, "NVMUtils"

    const-string v2, "Anyconnect EULA is not accepted. NVM Service will not start"

    invoke-static {p0, v0, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public static isBackgroundExecutionLimited(Landroid/content/Context;)Z
    .locals 1

    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x1a

    if-lt p0, v0, :cond_0

    .line 340
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isForegroundServiceEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isIntermediateFlowSupported(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "NVMUtils"

    if-eqz p0, :cond_1

    .line 436
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAPILevel()I

    move-result p0

    const/16 v1, 0x1c

    if-lt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 438
    :cond_1
    sget-object p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "Context is null, unable to fetch knox API level"

    invoke-static {p0, v1, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 444
    :catch_0
    sget-object p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "Unable to fetch knox API level"

    invoke-static {p0, v1, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method private static isMigrateRequired(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 158
    sget-object v1, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->filesToMigrate:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 159
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_1
    sget-object p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v1, "NVMUtils"

    const-string v2, "Context is null "

    invoke-static {p0, v1, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public static isNPAEnabled(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    .line 253
    :try_start_0
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "samsung"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 256
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 257
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAPILevel()I

    move-result v1

    const/16 v2, 0x16

    if-lt v1, v2, :cond_1

    .line 258
    invoke-static {p0}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception p0

    .line 262
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "NVMUtils"

    const-string v3, "Exception : "

    invoke-static {v1, v2, v3, p0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public static migrateNVMFiles(Landroid/content/Context;)Z
    .locals 11

    .line 175
    const-class v0, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    .line 177
    :try_start_0
    invoke-static {p0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->getNVMDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->createDirectory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    monitor-exit v0

    return v1

    .line 180
    :cond_0
    invoke-static {p0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isMigrateRequired(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 182
    sget-object v3, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->filesToMigrate:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 184
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->getNVMDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->move(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 185
    sget-object p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "NVMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Migrated file failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    monitor-exit v0

    return v1

    .line 188
    :cond_1
    sget-object v6, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v8, "NVMUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Migrated file : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v8, v7}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 190
    :cond_2
    invoke-static {p0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->cleanUpOldFiles(Landroid/content/Context;)Z

    .line 192
    :cond_3
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 194
    :cond_4
    sget-object p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "NVMUtils"

    const-string v3, "Migrate files failed, Context is null "

    invoke-static {p0, v2, v3}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 196
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 142
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static scheduleNVMServiceRestart(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x1

    .line 385
    invoke-static {p0, v0, v0, p1, p2}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->scheduleNVMServiceRestart(Landroid/content/Context;ZZII)V

    return-void
.end method

.method public static scheduleNVMServiceRestart(Landroid/content/Context;ZZII)V
    .locals 2

    .line 360
    invoke-static {}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isForegroundServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "NVMUtils"

    if-eqz p0, :cond_2

    .line 362
    invoke-static {p0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isBackgroundExecutionLimited(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 364
    invoke-static {p0, p4}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->cancelJob(Landroid/content/Context;I)V

    .line 366
    :cond_0
    invoke-static {p0, p3, p4}, Lcom/cisco/anyconnect/nvm/utils/NVMJobUtils;->scheduleJob(Landroid/content/Context;II)V

    if-eqz p1, :cond_3

    .line 369
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string p2, "Stopping NVM Service"

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    invoke-virtual {p0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 374
    :cond_1
    sget-object p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string p1, "Skipping jobscheduling as execution limit is not applicable for this OS version"

    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_2
    sget-object p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string p1, "Context is null, Cannot schedule NVM service restart"

    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static schedulePeriodicJob(Landroid/content/Context;II)V
    .locals 2

    const/16 v0, 0x3eb

    if-ne v0, p2, :cond_2

    const-string v0, "NVMUtils"

    if-eqz p0, :cond_1

    .line 415
    invoke-static {p0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isBackgroundExecutionLimited(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    invoke-static {p0, p1, p2}, Lcom/cisco/anyconnect/nvm/utils/NVMJobUtils;->schedulePeriodicJob(Landroid/content/Context;II)V

    goto :goto_0

    .line 418
    :cond_0
    sget-object p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string p1, "Skipping jobscheduling as execution limit is not applicable for this OS version"

    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :cond_1
    sget-object p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string p1, "Context is null, Cannot schedule periodic job"

    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setACEulaAccepted(Landroid/content/Context;)V
    .locals 2

    const-string v0, "eula_status"

    const/4 v1, 0x1

    .line 217
    invoke-static {p0, v0, v1}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static startNVMService(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 273
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->startNVMService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static startNVMService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 283
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    invoke-static {p0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isNPAEnabled(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "NVMUtils"

    if-eqz v1, :cond_3

    .line 285
    invoke-static {p0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isACEulaAccepted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_4

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    const-string v3, "eula_status"

    .line 288
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 287
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    :cond_1
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v1, "NPA is enabled and EULA accepted. NVM service is starting"

    invoke-static {p1, v2, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {p0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isBackgroundExecutionLimited(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 292
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    const/16 p1, 0x3ea

    .line 298
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->cancelJob(Landroid/content/Context;I)V

    .line 299
    sget-object p0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string p1, "Samsung NPA is not available. NVM service will not start"

    invoke-static {p0, v2, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static stopNVMService(Landroid/content/Context;)V
    .locals 3

    .line 305
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v1, "NVMUtils"

    const-string v2, "Stopping NVM Service"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public static write(Ljava/io/File;[B)Z
    .locals 4

    const-string v0, " Unable to close stream : "

    const-string v1, "NVMUtils"

    const/4 v2, 0x0

    .line 88
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 98
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    invoke-static {p1, v1, v0, p0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 91
    :goto_1
    :try_start_3
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v3, " Write file failed : "

    invoke-static {p1, v1, v3, p0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    .line 96
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 98
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    invoke-static {p1, v1, v0, p0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    const/4 p0, 0x0

    return p0

    :goto_3
    if-eqz v2, :cond_1

    .line 96
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 98
    sget-object v2, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    invoke-static {v2, v1, v0, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    :cond_1
    :goto_4
    throw p0
.end method

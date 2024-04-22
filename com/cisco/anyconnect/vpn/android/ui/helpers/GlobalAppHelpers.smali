.class public Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;
.super Landroidx/multidex/MultiDexApplication;
.source "GlobalAppHelpers.java"


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "GlobalAppHelpers"


# instance fields
.field private mAcquireCount:I

.field private mContextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInitNotificationChannel:Z

.field private mTerminating:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->mContextList:Ljava/util/List;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->mTerminating:Z

    .line 55
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->mInitNotificationChannel:Z

    return-void
.end method

.method private getCurrentProcessName()Ljava/lang/String;
    .locals 4

    .line 252
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 254
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 255
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 257
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v0, :cond_0

    .line 259
    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private initEnv()V
    .locals 4

    const-string v0, "GlobalAppHelpers"

    .line 189
    :try_start_0
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/process/ACAndroidEnv;->SetSNAKEnv(Landroid/content/Context;)V

    .line 190
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Initialized SNAK environment variables."

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 194
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Failed to setup SNAK environment."

    invoke-static {v2, v0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private initLogger()V
    .locals 3

    .line 218
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":umbrella"

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/util/AndroidLogger;

    sget-object v1, Lcom/cisco/anyconnect/android/util/ACLogModule;->AC_UMBRELLA:Lcom/cisco/anyconnect/android/util/ACLogModule;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/android/util/ACLogModule;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Umbrella"

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AndroidLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->setLogger(Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;)V

    goto :goto_0

    :cond_0
    const-string v1, ":NVMService"

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/util/AndroidLogger;

    sget-object v1, Lcom/cisco/anyconnect/android/util/ACLogModule;->AC_NVM:Lcom/cisco/anyconnect/android/util/ACLogModule;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/android/util/ACLogModule;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NVM"

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AndroidLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->setLogger(Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;)V

    goto :goto_0

    .line 230
    :cond_1
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/util/AndroidLogger;

    sget-object v1, Lcom/cisco/anyconnect/android/util/ACLogModule;->AC_VPN:Lcom/cisco/anyconnect/android/util/ACLogModule;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/android/util/ACLogModule;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnyConnect"

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AndroidLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->setLogger(Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;)V

    :goto_0
    return-void
.end method

.method private initNotificationChannels()V
    .locals 5

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "notification"

    .line 62
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 64
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "Cisco Secure Client notifications"

    const/4 v3, 0x2

    const-string v4, "default"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const v2, 0x7f110211

    .line 67
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 72
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "Cisco Secure Client heads-up notifications"

    const/4 v3, 0x4

    const-string v4, "heads_up"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const v2, 0x7f110169

    .line 75
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private initTranslator()V
    .locals 3

    const-string v0, "GlobalAppHelpers"

    .line 206
    :try_start_0
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->Initialize(Landroid/content/Context;)V

    .line 207
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Initialized Translation."

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Failed to bootstrap UITranslator. Localization will be disabled."

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setAndroidProcessNameEnv()V
    .locals 3

    .line 235
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 238
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 239
    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    :try_start_0
    const-string v1, "ANDROID_PROCESS_NAME"

    .line 243
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/jni/ACEnv;->SetEnv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "setAndroidProcessNameEnv failed"

    .line 245
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public Terminate()V
    .locals 3

    .line 269
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "GlobalAppHelpers"

    const-string v2, "Terminating Process."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->mContextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 273
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 278
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 279
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 281
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->mContextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 287
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->mAcquireCount:I

    if-lez v0, :cond_3

    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->mTerminating:Z

    goto :goto_1

    .line 296
    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils;->KillPid(Landroid/content/Context;I)V

    :goto_1
    return-void
.end method

.method public acquireResources(Landroid/content/Context;)V
    .locals 3

    .line 109
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->mAcquireCount:I

    if-nez v0, :cond_0

    .line 111
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "GlobalAppHelpers"

    const-string v2, "Initializing global resources."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->initTranslator()V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->mTerminating:Z

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->mInitNotificationChannel:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->initNotificationChannels()V

    .line 121
    iput-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->mInitNotificationChannel:Z

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->mContextList:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->mAcquireCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->mAcquireCount:I

    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 82
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onCreate()V

    .line 84
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->setAndroidProcessNameEnv()V

    .line 86
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/anyconnect/android/util/AppContext;->set(Landroid/content/Context;)V

    .line 88
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->initLogger()V

    .line 90
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/crypto/PRNGFixes;->apply()V

    .line 94
    :try_start_0
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->initStaticData(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "GlobalAppHelpers"

    const-string v3, "Failed to initialize FileVerifier"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    :goto_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->initEnv()V

    return-void
.end method

.method public releaseResources(Landroid/content/Context;)V
    .locals 5

    .line 131
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->mAcquireCount:I

    const-string v1, "GlobalAppHelpers"

    if-gtz v0, :cond_0

    .line 133
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Release called when count is 0."

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 137
    iput v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->mAcquireCount:I

    .line 141
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->mContextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 142
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_2

    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_4

    .line 163
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Failed to release resource."

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_4
    iget p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->mAcquireCount:I

    if-nez p1, :cond_5

    .line 168
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Destroying global resources."

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->Invalidate()V

    .line 172
    iget-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->mTerminating:Z

    if-eqz p1, :cond_5

    .line 174
    iput-boolean v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->mTerminating:Z

    .line 175
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils;->KillPid(Landroid/content/Context;I)V

    :cond_5
    return-void
.end method

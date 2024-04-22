.class public Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;
.super Ljava/lang/Object;
.source "NVMServiceJNI.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NVMServiceJNI"

.field private static instance:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private mNVMAupManager:Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;

.field private mNVMSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

.field private mPrevExportOnMeteredNetwork:Z

.field private mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

.field private mbServiceShutdown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mNVMAupManager:Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;

    .line 34
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    .line 35
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mNVMSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mbServiceShutdown:Z

    .line 38
    iput-boolean v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mPrevExportOnMeteredNetwork:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;
    .locals 2

    const-class v0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->instance:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    invoke-direct {v1}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;-><init>()V

    sput-object v1, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->instance:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    .line 47
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->instance:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private startNVMNative()Z
    .locals 5

    const/4 v0, 0x0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->startNVMAgentNative()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 116
    sget-object v2, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v3, "NVMServiceJNI"

    const-string v4, "Error Occured in JNI "

    invoke-static {v2, v3, v4, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method


# virtual methods
.method public ActivateProfile(Ljava/lang/String;I)I
    .locals 0

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->onActivateProfile(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public DeactivateProfile(Ljava/lang/String;I)I
    .locals 0

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->onDeactivateProfile(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getProfileManager()Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    return-object v0
.end method

.method public initialise()V
    .locals 1

    .line 51
    monitor-enter p0

    const/4 v0, 0x0

    .line 52
    :try_start_0
    iput-boolean v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mbServiceShutdown:Z

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public native isAgentRunning()Z
.end method

.method public isExportAllowed()Z
    .locals 2

    .line 209
    sget-object v0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mNVMSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;->isExportingAllowed()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 211
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyShutdown()V
    .locals 1

    .line 177
    monitor-enter p0

    const/4 v0, 0x0

    .line 179
    :try_start_0
    iput-boolean v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mPrevExportOnMeteredNetwork:Z

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mbServiceShutdown:Z

    .line 181
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public native notifyStateChange(Lcom/cisco/anyconnect/nvm/common/VPNSharedState;)V
.end method

.method public native onActivateProfile(Ljava/lang/String;I)I
.end method

.method public onConsentChanged()V
    .locals 0

    .line 189
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->updateAgentExportPolicy()V

    return-void
.end method

.method public native onDataAvailable(Lcom/cisco/anyconnect/nvm/utils/AppFlow;)V
.end method

.method public native onDeactivateProfile(Ljava/lang/String;I)I
.end method

.method public native onProfileUpdate(Z)V
.end method

.method public profileUpdated(Z)V
    .locals 0

    .line 219
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->updateAgentExportPolicy()V

    .line 220
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->onProfileUpdate(Z)V

    return-void
.end method

.method public sendDataToNVM(Ljava/lang/String;)V
    .locals 3

    .line 164
    invoke-static {p1}, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->fromJson(Ljava/lang/String;)Lcom/cisco/anyconnect/nvm/utils/AppFlow;

    move-result-object p1

    .line 165
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Flow Object : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NVMServiceJNI"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->onDataAvailable(Lcom/cisco/anyconnect/nvm/utils/AppFlow;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 169
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v1, "Error Occured in JNI "

    invoke-static {v0, v2, v1, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setAupManager(Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mNVMAupManager:Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;

    return-void
.end method

.method public setNVMSettingsManager(Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mNVMSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    return-void
.end method

.method public setProfileManager(Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    return-void
.end method

.method public startNVMAgent()Z
    .locals 3

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget-boolean v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mbServiceShutdown:Z

    if-nez v0, :cond_5

    .line 80
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->loadProfile()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 81
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->isAgentRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mNVMAupManager:Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->isAupDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mNVMAupManager:Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->isAUPSame()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mNVMAupManager:Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->showAup()V

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->startNVMNative()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mNVMAupManager:Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->isAupDisplayed()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mNVMAupManager:Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->isAUPSame()Z

    move-result v0

    if-nez v0, :cond_4

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mNVMAupManager:Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->showAup()V

    .line 94
    :cond_4
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 98
    :cond_5
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v1, "NVMServiceJNI"

    const-string v2, "start called after service is shutdown"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_6
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 101
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public native startNVMAgentNative()I
.end method

.method public stopNVMAgent()Z
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->stopNVMAgentNative()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public native stopNVMAgentNative()I
.end method

.method public updateAgentExportPolicy()V
    .locals 6

    const-string v0, "mPrevExportOnMeteredNetwork : "

    .line 197
    sget-object v1, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->isExportAllowed()Z

    move-result v2

    .line 199
    sget-object v3, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v4, "NVMServiceJNI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mPrevExportOnMeteredNetwork:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " currExportOnMeteredNetwork : "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-boolean v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mPrevExportOnMeteredNetwork:Z

    if-eq v0, v2, :cond_0

    .line 201
    iput-boolean v2, p0, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->mPrevExportOnMeteredNetwork:Z

    .line 202
    invoke-virtual {p0, v2}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->updateAgentExportPolicy(Z)V

    .line 204
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public native updateAgentExportPolicy(Z)V
.end method

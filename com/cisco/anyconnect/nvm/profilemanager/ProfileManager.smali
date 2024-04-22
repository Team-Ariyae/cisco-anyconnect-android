.class public Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;
.super Ljava/lang/Object;
.source "ProfileManager.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "ProfileManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCounter:I

.field private mHandler:Landroid/os/Handler;

.field private mNPAProfileName:Ljava/lang/String;

.field private mNVMProfile:Ljava/lang/String;

.field private mNVMProfileParser:Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser;

.field private mNVMServiceJNI:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

.field private mNVMSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

.field private mNetworkAnalytics:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

.field private mProfileManagerUtils:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mContext:Landroid/content/Context;

    .line 40
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMProfile:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNPAProfileName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mCounter:I

    .line 43
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mHandler:Landroid/os/Handler;

    .line 45
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMProfileParser:Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser;

    .line 46
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMServiceJNI:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    .line 47
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNetworkAnalytics:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    .line 48
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mProfileManagerUtils:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;

    .line 49
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    .line 55
    new-instance v0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager$1;-><init>(Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 88
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->getInstance()Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMServiceJNI:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    .line 90
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNetworkAnalytics:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;

    invoke-direct {v0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mProfileManagerUtils:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;

    .line 95
    new-instance v0, Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser;

    invoke-direct {v0}, Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMProfileParser:Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser;

    .line 96
    new-instance v0, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    invoke-direct {v0, p1}, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    .line 97
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mHandler:Landroid/os/Handler;

    return-void

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "NPA framework not found."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Context is required for ProfileManager"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mCounter:I

    return p0
.end method

.method static synthetic access$002(Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mCounter:I

    return p1
.end method

.method static synthetic access$008(Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;)I
    .locals 2

    .line 36
    iget v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mCounter:I

    return v0
.end method

.method static synthetic access$100(Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;)Ljava/lang/Runnable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getNPAProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/nap/Profile;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNetworkAnalytics:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getProfiles()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private initiateProfileReScan()V
    .locals 3

    .line 78
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v1, "ProfileManager"

    const-string v2, "Initiate Profile rescan"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mCounter:I

    .line 80
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isProfileActivated(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/nap/Profile;",
            ">;)Z"
        }
    .end annotation

    .line 285
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/nap/Profile;

    .line 286
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/nap/Profile;->getActivationState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isProfileIdentical(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/nap/Profile;",
            ">;)Z"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mProfileManagerUtils:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/net/nap/Profile;

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/nap/Profile;->getJsonProfile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;->getNVMProfileConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 272
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 273
    iget-object v4, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mProfileManagerUtils:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;

    .line 274
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/net/nap/Profile;

    invoke-virtual {v5}, Lcom/samsung/android/knox/net/nap/Profile;->getJsonProfile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;->getNVMProfileConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private processNPAProfiles(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/nap/Profile;",
            ">;)I"
        }
    .end annotation

    .line 301
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->isProfileIdentical(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ProfileManager"

    if-eqz v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMProfile:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 303
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v0, "Profile Not configured"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mProfileManagerUtils:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/net/nap/Profile;

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/nap/Profile;->getJsonProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;->getNVMProfileConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMProfile:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->isProfileActivated(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 309
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v0, "Profile not changed"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 312
    :cond_1
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v0, "Identified new profile or profile is in deactivated state"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    return p1

    .line 318
    :cond_2
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v0, "Found discrepancy between NPA and NVM profile, Profile reload is required"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1

    .line 324
    :cond_3
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v0, "NPA profiles are not identical, NVM Service will stop."

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private refreshNVMProfile()Z
    .locals 5

    .line 240
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->getNPAProfiles()Ljava/util/List;

    move-result-object v0

    .line 241
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->processNPAProfiles(Ljava/util/List;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    return v4

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMServiceJNI:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    invoke-virtual {v0, v2}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->profileUpdated(Z)V

    return v2

    .line 246
    :cond_1
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->save(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMServiceJNI:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    invoke-virtual {v0, v4}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->profileUpdated(Z)V

    return v2

    :cond_2
    return v4

    :cond_3
    return v2

    .line 244
    :cond_4
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->save(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private save(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/nap/Profile;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    .line 208
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->setNVMProfileName(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mProfileManagerUtils:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/net/nap/Profile;

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/nap/Profile;->getJsonProfile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;->getNVMProfileConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMProfile:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mProfileManagerUtils:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;->decodeBase64NVMConfig(Ljava/lang/String;)[B

    move-result-object p1

    .line 211
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMProfileParser:Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser;->initialiseParser([B)V

    .line 214
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMProfileParser:Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser;->isCloudProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mProfileManagerUtils:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->getNVMDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/NVM_ServiceProfile.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;->deleteProfile(Ljava/lang/String;)Z

    const-string v0, "NVM_CloudServiceProfile.xml"

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mProfileManagerUtils:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->getNVMDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/NVM_CloudServiceProfile.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;->deleteProfile(Ljava/lang/String;)Z

    const-string v0, "NVM_ServiceProfile.xml"

    .line 222
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->getNVMDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMProfileParser:Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser;->isMeteredNetworkUserControllable()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;->setMeteredNetworkUserControllable(Z)V

    .line 224
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mProfileManagerUtils:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;

    invoke-virtual {v0, v1, p1}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;->save(Ljava/io/File;[B)Z

    move-result p1

    return p1

    .line 226
    :cond_1
    sget-object p1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v0, "ProfileManager"

    const-string v2, "Save profile failed, context is null"

    invoke-static {p1, v0, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private setNVMProfileName(Ljava/lang/String;)V
    .locals 3

    .line 179
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNPAProfileName:Ljava/lang/String;

    :try_start_0
    const-string v0, "NPA_Active_Profile_Name"

    .line 183
    invoke-static {v0, p1}, Lcom/cisco/anyconnect/nvm/utils/ACEnv;->SetEnv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 185
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v1, "ProfileManager"

    const-string v2, " Error while setting environment variable "

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getNVMProfileName()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNPAProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getNVMProfileParser()Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMProfileParser:Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser;

    return-object v0
.end method

.method public isNVMEnabled()Z
    .locals 3

    .line 107
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->getNPAProfiles()Ljava/util/List;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mProfileManagerUtils:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;

    invoke-virtual {v1, v0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;->hasProfile(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    invoke-static {}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isForegroundServiceEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->isProfileActivated(Ljava/util/List;)Z

    move-result v0

    const/16 v1, 0x3ea

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mContext:Landroid/content/Context;

    const v2, 0x493e0

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->schedulePeriodicJob(Landroid/content/Context;II)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mContext:Landroid/content/Context;

    const v2, 0xdbba0

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->schedulePeriodicJob(Landroid/content/Context;II)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public loadProfile()Z
    .locals 3

    .line 144
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->isNVMEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->refreshNVMProfile()Z

    move-result v0

    return v0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->reset()V

    .line 148
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;->setMeteredNetworkUserControllable(Z)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isBackgroundExecutionLimited(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mContext:Landroid/content/Context;

    const-string v2, "serviceInitiatedCancel"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 154
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->cancelJob(Landroid/content/Context;I)V

    .line 155
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mContext:Landroid/content/Context;

    const v1, 0xdbba0

    const/16 v2, 0x3eb

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->schedulePeriodicJob(Landroid/content/Context;II)V

    .line 156
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->cancelJob(Landroid/content/Context;I)V

    goto :goto_0

    .line 158
    :cond_2
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->initiateProfileReScan()V

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->stopNVMService(Landroid/content/Context;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 361
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onNetworkChange()V
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isACEulaAccepted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMServiceJNI:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->startNVMAgent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMServiceJNI:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->isAgentRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMServiceJNI:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->stopNVMAgent()Z

    goto :goto_0

    .line 344
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v1, "ProfileManager"

    const-string v2, "EULA not accepted, Profile sync cannot be performed"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->mNVMProfile:Ljava/lang/String;

    return-void
.end method

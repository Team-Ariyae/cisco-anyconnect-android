.class public Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;
.super Ljava/lang/Object;
.source "NVMAupManager.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NVMAupManager"


# instance fields
.field private final AUP_ELEMENT_TAG:Ljava/lang/String;

.field private final NULL_AUP:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNVMSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

.field private mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    .line 35
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->mNVMSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    const-string v0, "AUP"

    .line 36
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->AUP_ELEMENT_TAG:Ljava/lang/String;

    const-string v0, "AUP_IS_NULL"

    .line 37
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->NULL_AUP:Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 44
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    .line 46
    iput-object p3, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->mNVMSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Arguments to NVMAUPManager cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getAupString()Ljava/lang/String;
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    const-string v1, "NVMAupManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 168
    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->getNVMProfileParser()Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "AUP"

    .line 170
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser;->readProfileValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v2, v0

    goto :goto_0

    .line 175
    :cond_1
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v3, "Parser is null, failed to set AUP String"

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_2
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v3, "ProfileManager is null, failed to set AUP String"

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method private saveAUPHash(Ljava/lang/String;)V
    .locals 2

    const-string v0, "AUP_IS_NULL"

    const-string v1, "aup_hash"

    if-eqz p1, :cond_1

    .line 145
    invoke-static {p1}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->generateSHA256Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public isAUPSame()Z
    .locals 3

    .line 73
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->getAupString()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->generateSHA256Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->mContext:Landroid/content/Context;

    const-string v2, "aup_hash"

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAupDisplayed()Z
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->mContext:Landroid/content/Context;

    const-string v1, "aup_displayed"

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAupDisplayed(Z)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->mContext:Landroid/content/Context;

    const-string v1, "aup_displayed"

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public showAup()V
    .locals 4

    .line 88
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->getAupString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->saveAUPHash(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 91
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cisco.anyconnect.nvm.SHOW_NVM_AUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "AUP"

    .line 92
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->mNVMSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    if-eqz v0, :cond_0

    const-string/jumbo v2, "userpref_exportonmobiledata"

    .line 95
    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;->isUserAllowedExportingOnMeteredNetwork()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->getNVMProfileParser()Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser;->isMeteredNetworkUserControllable()Z

    move-result v0

    const-string v2, "profilepref_ exportonmobiledata"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_2

    const/high16 v0, 0x10000000

    .line 100
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v2, :cond_3

    .line 103
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 110
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->mContext:Landroid/content/Context;

    const-string v3, "heads_up"

    invoke-direct {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v2, Lcom/cisco/anyconnect/nvm/R$drawable;->notify_idle:I

    .line 112
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->mContext:Landroid/content/Context;

    sget v3, Lcom/cisco/anyconnect/nvm/R$string;->nvm_notification_title:I

    .line 113
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->mContext:Landroid/content/Context;

    sget v3, Lcom/cisco/anyconnect/nvm/R$string;->aup_text:I

    .line 114
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 115
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 116
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 123
    invoke-virtual {v1, v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    .line 128
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v2, 0x3e9

    .line 130
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 134
    :cond_4
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v1, "NVMAupManager"

    const-string v2, "Getting AUP String failed"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

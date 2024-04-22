.class public Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;
.super Ljava/lang/Object;
.source "NVMSettingsManager.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NVMSettingsManager"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 31
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;->mContext:Landroid/content/Context;

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Context is required for NVMSettingsManager"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public isExportingAllowed()Z
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/receivers/NetworkMonitor;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 78
    invoke-static {}, Lcom/cisco/anyconnect/nvm/receivers/NetworkMonitor;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;->isMeteredNetworkUserControllable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;->isUserAllowedExportingOnMeteredNetwork()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isMeteredNetworkUserControllable()Z
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;->mContext:Landroid/content/Context;

    const-string v1, "profilepref_ exportonmobiledata"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isUserAllowedExportingOnMeteredNetwork()Z
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "userpref_exportonmobiledata"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAllowExportingOnMeteredNetwork(Z)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "userpref_exportonmobiledata"

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public setMeteredNetworkUserControllable(Z)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;->mContext:Landroid/content/Context;

    const-string v1, "profilepref_ exportonmobiledata"

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

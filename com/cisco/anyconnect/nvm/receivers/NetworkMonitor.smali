.class public Lcom/cisco/anyconnect/nvm/receivers/NetworkMonitor;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Lcom/cisco/anyconnect/acruntime/network/INetworkChangeListener;


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NetworkMonitor"

.field private static mPrevMeteredNetworkState:Z = false


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/receivers/NetworkMonitor;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 40
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/receivers/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/cisco/anyconnect/nvm/receivers/NetworkMonitor;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context and ProfileManager are required for NetworkMonitor"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static isActiveNetworkMetered()Z
    .locals 3

    .line 82
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isActiveNetworkMetered "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/cisco/anyconnect/nvm/receivers/NetworkMonitor;->mPrevMeteredNetworkState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkMonitor"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-boolean v0, Lcom/cisco/anyconnect/nvm/receivers/NetworkMonitor;->mPrevMeteredNetworkState:Z

    return v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "connectivity"

    .line 94
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 95
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isnetavailabble "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkMonitor"

    invoke-static {v1, v3, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public onInterfaceStateChange(Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;)V
    .locals 1

    .line 69
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;->NETIFNT_INTERFACE_UP:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;

    if-ne p1, v0, :cond_0

    .line 70
    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/receivers/NetworkMonitor;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->onNetworkChange()V

    .line 72
    :cond_0
    invoke-static {}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->getInstance()Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->updateAgentExportPolicy()V

    return-void
.end method

.method public onNetworkStateChange(Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;)V
    .locals 3

    .line 52
    invoke-virtual {p1}, Lcom/cisco/anyconnect/acruntime/network/NetworkEvent;->getNetEnvState()I

    move-result p1

    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;->METERED:Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;->getValue()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 54
    :goto_0
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Prev "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/cisco/anyconnect/nvm/receivers/NetworkMonitor;->mPrevMeteredNetworkState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkMonitor"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-boolean v0, Lcom/cisco/anyconnect/nvm/receivers/NetworkMonitor;->mPrevMeteredNetworkState:Z

    if-eq v0, p1, :cond_1

    .line 56
    sput-boolean p1, Lcom/cisco/anyconnect/nvm/receivers/NetworkMonitor;->mPrevMeteredNetworkState:Z

    .line 57
    invoke-static {}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->getInstance()Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->updateAgentExportPolicy()V

    :cond_1
    return-void
.end method

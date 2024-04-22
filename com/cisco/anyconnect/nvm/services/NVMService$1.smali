.class Lcom/cisco/anyconnect/nvm/services/NVMService$1;
.super Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService$Stub;
.source "NVMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/nvm/services/NVMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/nvm/services/NVMService;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-direct {p0}, Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivateProfile(Ljava/lang/String;ILjava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;

    invoke-direct {v0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;-><init>()V

    .line 92
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "NPA flow collection started"

    const-string v3, "NVMService"

    invoke-static {v1, v3, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onActivateProfile Profile Name : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;->getNPAProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "User Id : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "UniqueId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 93
    invoke-static {v1, v3, p3}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;->getInstance()Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;

    move-result-object p3

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManagerUtils;->getNPAProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;->addContainerName(ILjava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onDataAvailable(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "NVMService"

    if-eqz p2, :cond_0

    .line 150
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " onDataAvailable : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$1;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-static {v1}, Lcom/cisco/anyconnect/nvm/services/NVMService;->access$200(Lcom/cisco/anyconnect/nvm/services/NVMService;)Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->sendDataToNVM(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_0
    sget-object p2, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v0, " Received null string from Samsung NPA Framework "

    invoke-static {p2, p1, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDeactivateProfile(Ljava/lang/String;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v1, "NPA flow collection stopped"

    const-string v2, "NVMService"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onDeactivateProfile Profile Name : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " User Id :"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;->getInstance()Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;->removeContainerName(I)V

    .line 114
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/cisco/anyconnect/nvm/services/NVMService$1$1;

    invoke-direct {p2, p0}, Lcom/cisco/anyconnect/nvm/services/NVMService$1$1;-><init>(Lcom/cisco/anyconnect/nvm/services/NVMService$1;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    return p1
.end method

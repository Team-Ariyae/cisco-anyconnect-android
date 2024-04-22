.class Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$7;
.super Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService$Stub;
.source "KnoxInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$7;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveKnoxProfileName()Ljava/lang/String;
    .locals 2

    .line 618
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$7;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$7;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$menforcePermissions(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;I)V

    .line 620
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$7;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetActiveKnoxProfile(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManagedMdmApps()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$7;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$7;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$menforcePermissions(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;I)V

    .line 653
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$7;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$7;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getGenericVpnPolicy(Ljava/lang/String;I)Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;

    move-result-object v0

    .line 655
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 658
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$7;->getActiveKnoxProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getAllPackagesInVpnProfile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 661
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 662
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 669
    :cond_0
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$7;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/util/MultiUserUtils;->getAdditionalUserIds(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 671
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$7;->getActiveKnoxProfileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getAllContainerPackagesInVpnProfile(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 674
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 675
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 680
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 681
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 686
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "KnoxInteractionService"

    const-string v3, "getManagedMdmApps failed"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public isKnoxMetaEnabledForActiveConnection()Z
    .locals 2

    .line 694
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$7;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$7;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$menforcePermissions(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;I)V

    .line 696
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$7;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetKnoxMetaEnabled(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Z

    move-result v0

    return v0
.end method

.method public isMDMInitiatedConnect()Z
    .locals 5

    const-string v0, "KnoxInteractionService"

    .line 626
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$7;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$7;->getCallingUid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$menforcePermissions(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;I)V

    const/4 v1, 0x0

    .line 630
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$7;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mbindServices(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 631
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "can\'t bind to services"

    invoke-static {v2, v0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 635
    :cond_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$7;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$mgetVpnService(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v2

    .line 636
    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetActive()Ljava/lang/String;

    move-result-object v3

    .line 637
    invoke-interface {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v2

    .line 638
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsMDMControlled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v2

    .line 642
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "isMDMInitiatedConnect failed"

    invoke-static {v3, v0, v4, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

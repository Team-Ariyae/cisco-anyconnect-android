.class public Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;
.super Ljava/lang/Object;
.source "AppTunnelPolicy.java"


# instance fields
.field private mAllAppInfos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAllow:Z

.field private mAppInfos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMdmAppRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mAppInfos:Ljava/util/Set;

    .line 29
    iput-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mAllow:Z

    .line 30
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mMdmAppRules:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;ZLjava/util/List;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mAppInfos:Ljava/util/Set;

    .line 35
    iput-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mAllow:Z

    .line 36
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mMdmAppRules:Ljava/util/List;

    .line 37
    iput-object p4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mAllAppInfos:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public convertToBlackList()V
    .locals 4

    .line 46
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mAllow:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mAllAppInfos:Ljava/util/Set;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mAllow:Z

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mAllAppInfos:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;

    .line 56
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mAppInfos:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 58
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_2
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mAppInfos:Ljava/util/Set;

    :cond_3
    :goto_1
    return-void
.end method

.method public getAllowed()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mAllow:Z

    return v0
.end method

.method public getAllowedAppIds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->getAllowedApps()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;

    .line 106
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mMdmAppRules:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v4, v2, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->appId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v2, v2, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->appId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAllowedApps()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;",
            ">;"
        }
    .end annotation

    .line 77
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mAllow:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mAppInfos:Ljava/util/Set;

    return-object v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mAllAppInfos:Ljava/util/Set;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mAllAppInfos:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;

    .line 91
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mAppInfos:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 93
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getAppInfos()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mAppInfos:Ljava/util/Set;

    return-object v0
.end method

.method public getBlockedMdmAppIds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mMdmAppRules:Ljava/util/List;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->getAllowedAppIds()Ljava/util/List;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mMdmAppRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 129
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 131
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppTunnelPolicy "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mAllow:Z

    if-eqz v1, :cond_0

    const-string v1, "(whitelist): "

    goto :goto_0

    :cond_0
    const-string v1, "(blacklist): "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->mAppInfos:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

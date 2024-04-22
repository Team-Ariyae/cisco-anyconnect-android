.class public Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;
.super Ljava/lang/Object;
.source "AppTunnelRuleValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator$AppTunnelRuleComparator;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "AppTunnelRuleValidator"


# instance fields
.field private final mAsaAppRules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsaWildcardRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;",
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

.field private final mPackageMgr:Lcom/cisco/anyconnect/vpn/android/apptunnel/IPackageMgr;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/cisco/anyconnect/vpn/android/apptunnel/IPackageMgr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/IPackageMgr;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;->mAsaAppRules:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;->mAsaWildcardRules:Ljava/util/List;

    .line 57
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;->mPackageMgr:Lcom/cisco/anyconnect/vpn/android/apptunnel/IPackageMgr;

    .line 59
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;

    .line 60
    invoke-virtual {p3}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->hasWildcard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;->mAsaWildcardRules:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;->mAsaAppRules:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;->mAsaWildcardRules:Ljava/util/List;

    new-instance p3, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator$AppTunnelRuleComparator;

    invoke-direct {p3}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator$AppTunnelRuleComparator;-><init>()V

    invoke-static {p3}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p3

    invoke-static {p1, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 72
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;->mMdmAppRules:Ljava/util/List;

    return-void
.end method

.method private getMatchingWildcardRule(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;->mAsaWildcardRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;

    .line 169
    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->matchWildcard(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getNumRules()I
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;->mAsaAppRules:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;->mAsaWildcardRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getPolicy()Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;
    .locals 8

    .line 92
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/SidRuleMap;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/SidRuleMap;-><init>()V

    .line 94
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 95
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;->mAsaAppRules:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "AppTunnelRuleValidator"

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;

    .line 96
    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->validate()Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 98
    iget-boolean v6, v5, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->sharedUid:Z

    if-eqz v6, :cond_1

    .line 100
    iget v6, v5, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v3}, Lcom/cisco/anyconnect/vpn/android/apptunnel/SidRuleMap;->updateSuidRule(Ljava/lang/Integer;Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;)V

    .line 101
    iget v3, v5, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->uid:I

    invoke-virtual {v0, v3}, Lcom/cisco/anyconnect/vpn/android/apptunnel/SidRuleMap;->isSuidBlocked(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "blocked shareduid app: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->appId:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;->mAsaWildcardRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 114
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;->mMdmAppRules:Ljava/util/List;

    invoke-direct {v0, v1, v3, v2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;-><init>(Ljava/util/Set;ZLjava/util/List;)V

    return-object v0

    .line 120
    :cond_3
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;->mPackageMgr:Lcom/cisco/anyconnect/vpn/android/apptunnel/IPackageMgr;

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/IPackageMgr;->getAllPackages()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_4

    .line 123
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "failed to get all packages on system"

    invoke-static {v0, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;

    .line 130
    iget-object v6, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;->mAsaAppRules:Ljava/util/Map;

    iget-object v7, v5, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->appId:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    .line 135
    :cond_6
    iget-object v6, v5, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->appId:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;->getMatchingWildcardRule(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 138
    iget-object v5, v5, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->appId:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->validate(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 141
    iget-boolean v7, v5, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->sharedUid:Z

    if-eqz v7, :cond_7

    .line 143
    iget v7, v5, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Lcom/cisco/anyconnect/vpn/android/apptunnel/SidRuleMap;->updateSuidRule(Ljava/lang/Integer;Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;)V

    .line 144
    iget v6, v5, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->uid:I

    invoke-virtual {v0, v6}, Lcom/cisco/anyconnect/vpn/android/apptunnel/SidRuleMap;->isSuidBlocked(I)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    .line 150
    :cond_7
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 155
    :cond_8
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;->mMdmAppRules:Ljava/util/List;

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;-><init>(Ljava/util/Set;ZLjava/util/List;Ljava/util/Set;)V

    .line 158
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    if-le v1, v2, :cond_9

    .line 160
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelPolicy;->convertToBlackList()V

    :cond_9
    return-object v0
.end method

.method public getUnmanagedPackages()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;->mAsaAppRules:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;

    .line 85
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

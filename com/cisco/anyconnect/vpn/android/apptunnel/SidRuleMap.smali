.class public Lcom/cisco/anyconnect/vpn/android/apptunnel/SidRuleMap;
.super Ljava/lang/Object;
.source "SidRuleMap.java"


# instance fields
.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;",
            ">;"
        }
    .end annotation
.end field

.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/SidRuleMap;->mMap:Ljava/util/Map;

    .line 27
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator$AppTunnelRuleComparator;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator$AppTunnelRuleComparator;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/SidRuleMap;->mComparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public isSuidBlocked(I)Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/SidRuleMap;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->getAllowShareUid()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public updateSuidRule(Ljava/lang/Integer;Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/SidRuleMap;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/SidRuleMap;->mComparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/SidRuleMap;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;

    invoke-interface {v0, p2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/SidRuleMap;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

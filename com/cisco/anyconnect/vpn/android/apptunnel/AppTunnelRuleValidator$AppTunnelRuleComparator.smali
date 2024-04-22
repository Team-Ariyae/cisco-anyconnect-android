.class public Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator$AppTunnelRuleComparator;
.super Ljava/lang/Object;
.source "AppTunnelRuleValidator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppTunnelRuleComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;)I
    .locals 2

    .line 33
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->hasWildcard()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->hasWildcard()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->hasWildcard()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->hasWildcard()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->hasWildcard()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->hasWildcard()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    .line 50
    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    int-to-double v0, p1

    int-to-double p1, p2

    .line 51
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;

    check-cast p2, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;

    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRuleValidator$AppTunnelRuleComparator;->compare(Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;)I

    move-result p1

    return p1
.end method

.class public Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;
.super Ljava/lang/Object;
.source "VpnConnectionListImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "VpnConnectionList"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

.field private transient mCallback:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;

.field private mConnectionMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 74
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;

    .line 75
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    return-void

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unexpected null callback"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private connectionNameExistsandIsManual(Ljava/lang/String;)Z
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    if-eqz p1, :cond_0

    .line 643
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Manual:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetType()Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getErrorEnum(I)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/EnumSet<",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;",
            ">;"
        }
    .end annotation

    .line 668
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 670
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->None:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 672
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->None:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidName:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    .line 677
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidName:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_1
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->DuplicateName:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 682
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->DuplicateName:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_2
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidHost:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    .line 687
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidHost:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 690
    :cond_3
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidState:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_4

    .line 692
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidState:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 695
    :cond_4
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidCertificate:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_5

    .line 697
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidCertificate:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_5
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->Unpopulated:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_6

    .line 702
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->Unpopulated:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 705
    :cond_6
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->Unknown:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v1

    and-int/2addr p1, v1

    if-nez p1, :cond_7

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 707
    :cond_7
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->Unknown:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v0
.end method

.method private hasExistingConnectionsChange(Ljava/util/TreeMap;Ljava/util/TreeMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;",
            ">;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;",
            ">;)Z"
        }
    .end annotation

    .line 649
    invoke-virtual {p1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 654
    :cond_0
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 656
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 657
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->equalsIgnoreIDInequality(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private resetActiveIfStale()V
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Resetting stale active connection: old="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    :goto_0
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    if-eqz v0, :cond_1

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new active connection: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I
    .locals 4

    .line 290
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->Validate(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I

    move-result v0

    .line 291
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->None:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v1

    const-string v2, "VpnConnectionList"

    if-eq v0, v1, :cond_0

    .line 293
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to save VpnConnection due to invalid user input:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 297
    :cond_0
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 301
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetId(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    if-nez v0, :cond_4

    .line 305
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    goto :goto_0

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    if-nez v0, :cond_2

    .line 314
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Failed to modify existing Connection due to invalid id"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidState:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result p1

    return p1

    .line 318
    :cond_2
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 320
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 323
    :cond_3
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetId(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_5

    .line 331
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->getKnoxProfileName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    invoke-virtual {p0, p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->SetActive(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/VPNState;Z)Z

    .line 334
    :cond_5
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->None:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result p1

    return p1
.end method


# virtual methods
.method public ClearActiveConnection()V
    .locals 1

    const/4 v0, 0x0

    .line 417
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 418
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;->OnConnectionsChanged()V

    return-void
.end method

.method public Delete(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;",
            ">;)V"
        }
    .end annotation

    .line 256
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 258
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 260
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cannot delete non-existing connection"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VpnConnectionList"

    invoke-static {v2, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_1
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 273
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;->OnActiveConnectionRemoved()V

    .line 276
    :cond_3
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;->OnConnectionsChanged()V

    return-void
.end method

.method public Delete(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 235
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot delete non-existing connection"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VpnConnectionList"

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 242
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;->OnActiveConnectionRemoved()V

    .line 245
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;->OnConnectionsChanged()V

    const/4 p1, 0x1

    return p1
.end method

.method public GetActiveConnectionName()Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 403
    :cond_0
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetAllConnectionNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public GetAllConnectionsOfType(Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;",
            ")",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;",
            ">;"
        }
    .end annotation

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 449
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->GetAllConnectionNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 451
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 453
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetType()Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 455
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    if-nez v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 435
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 443
    :cond_1
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)V

    return-object p1
.end method

.method public ImportProfileConnections(Ljava/util/List;Landroid/content/Context;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    const v1, 0x7f11032b

    .line 474
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f110274

    .line 475
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 477
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 478
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 484
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 486
    iget-object v9, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    .line 487
    invoke-virtual {v9, v8}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsProfileImportDupeOf(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Imported:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    iget-object v11, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 488
    invoke-virtual {v11}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetType()Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v11

    if-ne v9, v11, :cond_1

    const/4 v7, 0x1

    .line 493
    :cond_1
    invoke-virtual {v8}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->connectionNameExistsandIsManual(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 495
    iget-object v9, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {v8}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 496
    invoke-virtual {v8}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v9

    .line 498
    iget-object v11, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {v8}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->connectionNameExistsandIsManual(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    :goto_1
    const/16 v11, 0x64

    if-ge v10, v11, :cond_3

    .line 504
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->connectionNameExistsandIsManual(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 510
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_3
    const-string v10, ""

    goto :goto_2

    .line 517
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 520
    :goto_2
    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    invoke-virtual {v8, v10}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetName(Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 523
    invoke-virtual {v8, v9}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetId(Ljava/lang/String;)V

    .line 524
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 529
    :cond_5
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->GetAllConnectionNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 531
    iget-object v8, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {v8, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 533
    sget-object v8, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Imported:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetType()Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v9

    if-ne v8, v9, :cond_6

    .line 535
    iget-object v8, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    if-eqz v8, :cond_7

    .line 536
    invoke-virtual {v8, v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsProfileImportDupeOf(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v7, :cond_7

    goto :goto_3

    .line 542
    :cond_7
    iget-object v8, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 549
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 553
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    if-eqz v5, :cond_9

    .line 554
    invoke-virtual {v5, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsProfileImportDupeOf(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v7, :cond_9

    .line 557
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->connectionNameExistsandIsManual(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_4

    .line 563
    :cond_9
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 568
    :cond_a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 571
    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I

    move-result v3

    .line 572
    invoke-direct {p0, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->getErrorEnum(I)Ljava/util/EnumSet;

    move-result-object v3

    .line 576
    :goto_6
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->None:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v3, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 579
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidName:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v3, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "VpnConnectionList"

    if-eqz v5, :cond_d

    .line 584
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidHost:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v3, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 586
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Invalid connection name, setting to hostname ("

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v7, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetName(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->Save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I

    move-result v3

    .line 590
    invoke-direct {p0, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->getErrorEnum(I)Ljava/util/EnumSet;

    move-result-object v3

    goto :goto_6

    .line 594
    :cond_c
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Connection save failed invalid name and invalide host, skipping..."

    invoke-static {v1, v7, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 600
    :cond_d
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Connection save failed due to: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/EnumSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v7, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 605
    :cond_e
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    .line 607
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n \n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 609
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 610
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    .line 615
    :cond_f
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cisco.anyconnect.vpn.android.ACTION_SHOW_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 616
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "com.cisco.anyconnect.vpn.android.POPUP_TEXT_KEY"

    .line 617
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.cisco.anyconnect.vpn.android.POPUP_TEXT_IS_ERROR_KEY"

    .line 618
    invoke-virtual {v1, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 619
    invoke-virtual {p2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 622
    :cond_10
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->resetActiveIfStale()V

    .line 624
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;->OnConnectionsChanged()V

    .line 627
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-direct {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->hasExistingConnectionsChange(Ljava/util/TreeMap;Ljava/util/TreeMap;)Z

    move-result p1

    return p1
.end method

.method public IsActive(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 223
    :cond_0
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public OnDeserialize(Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;)V
    .locals 2

    if-eqz p1, :cond_8

    .line 90
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;

    .line 92
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    if-nez p1, :cond_0

    .line 94
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    .line 96
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->GetActiveConnectionName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->GetActiveConnectionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 104
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->GetActiveConnectionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 109
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 113
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetType()Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v1

    if-nez v1, :cond_3

    .line 114
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Manual:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetType(Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;)V

    .line 117
    :cond_3
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetIPsecAuthMode()Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    move-result-object v1

    if-nez v1, :cond_4

    .line 119
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_ANYCONNECT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIPsecAuthMode(Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;)V

    .line 122
    :cond_4
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetIKEIdentity()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, ""

    .line 124
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetIKEIdentity(Ljava/lang/String;)V

    .line 127
    :cond_5
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetConnectProtocol()Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    move-result-object v1

    if-nez v1, :cond_6

    .line 129
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ssl:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetConnectProtocolType(Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;)V

    .line 132
    :cond_6
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetFipsMode()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    move-result-object v1

    if-nez v1, :cond_2

    .line 134
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->Default:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetFipsMode(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;)V

    goto :goto_1

    :cond_7
    return-void

    .line 87
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unexpected null callback"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public Save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I
    .locals 1

    .line 346
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I

    move-result p1

    .line 347
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->None:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;->OnConnectionsChanged()V

    :cond_0
    return p1
.end method

.method public SetActive(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/VPNState;Z)Z
    .locals 4

    .line 365
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "VpnConnectionList"

    if-nez v0, :cond_0

    .line 367
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "SetActive with invalid connection name"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 376
    :cond_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-eq v0, p2, :cond_3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 384
    :cond_2
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Transitioning active connection to: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v1, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;

    invoke-interface {p2, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;->SwitchActiveConnection(Ljava/lang/String;)V

    goto :goto_1

    .line 378
    :cond_3
    :goto_0
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Setting active connection to: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " forced? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v1, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 380
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;->OnConnectionsChanged()V

    :goto_1
    return v2
.end method

.method public Validate(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I
    .locals 4

    .line 146
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->None:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v0

    .line 149
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 150
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 154
    :cond_1
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->Unpopulated:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v1

    or-int/2addr v0, v1

    .line 158
    :cond_2
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 161
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 165
    :cond_3
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 167
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->DuplicateName:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v1

    goto :goto_2

    .line 163
    :cond_4
    :goto_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidName:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v1

    goto :goto_2

    .line 173
    :cond_5
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    .line 177
    :cond_6
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mConnectionMap:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 181
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->DuplicateName:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v1

    goto :goto_2

    .line 175
    :cond_7
    :goto_1
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidName:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v1

    :goto_2
    or-int/2addr v0, v1

    .line 187
    :cond_8
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 189
    :cond_9
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidHost:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result v1

    or-int/2addr v0, v1

    .line 193
    :cond_a
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertAuthMode()Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 195
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertAuthMode()Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    move-result-object v2

    if-ne v1, v2, :cond_c

    :try_start_0
    const-string v1, "SHA-1"

    .line 200
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 204
    :catch_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnConnectionList"

    const-string v3, "Could not find SHA-1 algorithm to compare cert hash to."

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 207
    :goto_3
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertHash()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_b

    .line 208
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertHash()[B

    move-result-object p1

    array-length p1, p1

    if-ge p1, v1, :cond_c

    .line 210
    :cond_b
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->InvalidCertificate:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionValidationError;->GetBitmask()I

    move-result p1

    or-int/2addr v0, p1

    :cond_c
    return v0
.end method

.method public getActiveConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->mActiveConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    return-object v0
.end method

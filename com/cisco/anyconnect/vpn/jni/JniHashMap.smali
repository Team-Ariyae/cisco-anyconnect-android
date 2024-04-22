.class public Lcom/cisco/anyconnect/vpn/jni/JniHashMap;
.super Ljava/lang/Object;
.source "JniHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;,
        Lcom/cisco/anyconnect/vpn/jni/JniHashMap$JniHashMapCreateException;
    }
.end annotation


# instance fields
.field public map:[Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/vpn/jni/JniHashMap$JniHashMapCreateException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 72
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 77
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/JniHashMap;->map:[Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    .line 80
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/jni/JniHashMap;->map:[Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    new-instance v4, Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v0

    add-int/2addr v0, v1

    goto :goto_0

    .line 84
    :cond_0
    new-instance p1, Lcom/cisco/anyconnect/vpn/jni/JniHashMap$JniHashMapCreateException;

    const-string v0, "mapping contained invalid data"

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/jni/JniHashMap$JniHashMapCreateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void

    .line 74
    :cond_2
    new-instance p1, Lcom/cisco/anyconnect/vpn/jni/JniHashMap$JniHashMapCreateException;

    const-string v0, "Mapping passed in was null or empty"

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/jni/JniHashMap$JniHashMapCreateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

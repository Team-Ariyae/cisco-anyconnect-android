.class public Lcom/cisco/anyconnect/android/util/AppLogUtility;
.super Ljava/lang/Object;
.source "AppLogUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logBundle(Landroid/os/Bundle;ILjava/util/Set;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 28
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 29
    const-class v5, Lcom/cisco/anyconnect/android/util/AppLogUtility;

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    instance-of v7, v4, [Landroid/os/Parcelable;

    if-eqz v7, :cond_4

    .line 30
    check-cast v4, [Landroid/os/Parcelable;

    .line 31
    array-length v7, v4

    if-lez v7, :cond_4

    aget-object v7, v4, v0

    instance-of v7, v7, Landroid/os/Bundle;

    if-eqz v7, :cond_4

    .line 32
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "BundleArray "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Class;Ljava/lang/String;)V

    .line 33
    array-length v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_2
    if-ge v8, v7, :cond_3

    aget-object v9, v4, v8

    const-string v10, "bundle: "

    .line 34
    invoke-static {v5, v10}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Class;Ljava/lang/String;)V

    .line 35
    check-cast v9, Landroid/os/Bundle;

    add-int/lit8 v10, p1, 0x1

    invoke-static {v9, v10, p2}, Lcom/cisco/anyconnect/android/util/AppLogUtility;->logBundle(Landroid/os/Bundle;ILjava/util/Set;)V

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    move v6, v9

    :cond_4
    if-eqz v6, :cond_2

    .line 42
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz p2, :cond_5

    .line 43
    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v4, "<present>"

    .line 47
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    return-void
.end method

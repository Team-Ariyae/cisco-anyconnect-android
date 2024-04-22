.class final Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;
.super Ljava/lang/Object;
.source "NetworkStateProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/NetworkStateProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StateEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;
    }
.end annotation


# instance fields
.field defaultValue:Ljava/lang/Object;

.field persistKey:Ljava/lang/String;

.field type:Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;Ljava/lang/Object;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->persistKey:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->type:Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    .line 65
    iput-object p2, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->value:Ljava/lang/Object;

    .line 66
    iput-object p2, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->defaultValue:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->type:Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    .line 71
    iput-object p2, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->value:Ljava/lang/Object;

    .line 72
    iput-object p2, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->defaultValue:Ljava/lang/Object;

    .line 73
    iput-object p3, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->persistKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isPersistent()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->persistKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method loadFromSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->persistKey:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p1, "StateEntry is not persistent"

    .line 107
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 111
    :cond_0
    sget-object v0, Lcom/cisco/android/nchs/NetworkStateProvider$2;->$SwitchMap$com$cisco$android$nchs$NetworkStateProvider$StateEntry$Type:[I

    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->type:Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown state type:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->type:Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->persistKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->defaultValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->persistKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->defaultValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->persistKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->defaultValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->persistKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->defaultValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->value:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method saveToSharedPreferences(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .line 82
    sget-object v0, Lcom/cisco/android/nchs/NetworkStateProvider$2;->$SwitchMap$com$cisco$android$nchs$NetworkStateProvider$StateEntry$Type:[I

    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->type:Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown state type:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->type:Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->persistKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->persistKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->value:Ljava/lang/Object;

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 88
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->persistKey:Ljava/lang/String;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 90
    :cond_4
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->persistKey:Ljava/lang/String;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 84
    :cond_5
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->persistKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    return-void
.end method

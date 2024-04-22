.class public Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;
.super Ljava/lang/Object;
.source "PreferenceInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public heading:Ljava/lang/String;

.field public prefs:[Lcom/cisco/anyconnect/vpn/jni/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreference(Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;)Lcom/cisco/anyconnect/vpn/jni/Preference;
    .locals 5

    .line 37
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;->prefs:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 39
    iget-object v4, v3, Lcom/cisco/anyconnect/vpn/jni/Preference;->id:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 19
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;->prefs:[Lcom/cisco/anyconnect/vpn/jni/Preference;

    array-length v1, v0

    const-string v2, ""

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/cisco/anyconnect/vpn/jni/Preference;->id:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/cisco/anyconnect/vpn/jni/Preference;->promptEntry:Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    iget-object v2, v2, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

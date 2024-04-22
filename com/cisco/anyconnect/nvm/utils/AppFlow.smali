.class public Lcom/cisco/anyconnect/nvm/utils/AppFlow;
.super Ljava/lang/Object;
.source "AppFlow.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "AppFlow"

.field public static final cFieldMapping:[[Ljava/lang/String;

.field private static mFieldmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContainer_name:Ljava/lang/String;

.field private mDNSuid:I

.field private mDport:I

.field private mEndTime:I

.field private mFamily:I

.field private mFile_name:Ljava/lang/String;

.field private mHash:Ljava/lang/String;

.field private mInBytes:J

.field private mInterface:Ljava/lang/String;

.field private mLocal:Ljava/lang/String;

.field private mOutBytes:J

.field private mPUID:I

.field private mParent_file_name:Ljava/lang/String;

.field private mParent_hash:Ljava/lang/String;

.field private mParent_pid:I

.field private mPeer:Ljava/lang/String;

.field private mPeer_host_name:Ljava/lang/String;

.field private mPid:I

.field private mProto:I

.field private mRecordType:I

.field private mSport:I

.field private mStartTime:I

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x16

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "src"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "mLocal"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "dst"

    aput-object v3, v2, v4

    const-string v3, "mPeer"

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "sport"

    aput-object v3, v2, v4

    const-string v3, "mSport"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "dport"

    aput-object v3, v2, v4

    const-string v3, "mDport"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "uid"

    aput-object v3, v2, v4

    const-string v3, "mUid"

    aput-object v3, v2, v5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "pid"

    aput-object v3, v2, v4

    const-string v3, "mPid"

    aput-object v3, v2, v5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "ppid"

    aput-object v3, v2, v4

    const-string v3, "mParent_pid"

    aput-object v3, v2, v5

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "bsent"

    aput-object v3, v2, v4

    const-string v3, "mOutBytes"

    aput-object v3, v2, v5

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "brecv"

    aput-object v3, v2, v4

    const-string v3, "mInBytes"

    aput-object v3, v2, v5

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "hostname"

    aput-object v3, v2, v4

    const-string v3, "mPeer_host_name"

    aput-object v3, v2, v5

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "prochash"

    aput-object v3, v2, v4

    const-string v3, "mHash"

    aput-object v3, v2, v5

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "parentprochash"

    aput-object v3, v2, v4

    const-string v3, "mParent_hash"

    aput-object v3, v2, v5

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "protocol"

    aput-object v3, v2, v4

    const-string v3, "mProto"

    aput-object v3, v2, v5

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "family"

    aput-object v3, v2, v4

    const-string v3, "mFamily"

    aput-object v3, v2, v5

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "procname"

    aput-object v3, v2, v4

    const-string v3, "mFile_name"

    aput-object v3, v2, v5

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "parentprocname"

    aput-object v3, v2, v4

    const-string v3, "mParent_file_name"

    aput-object v3, v2, v5

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "start"

    aput-object v3, v2, v4

    const-string v3, "mStartTime"

    aput-object v3, v2, v5

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "end"

    aput-object v3, v2, v4

    const-string v3, "mEndTime"

    aput-object v3, v2, v5

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "puid"

    aput-object v3, v2, v4

    const-string v3, "mPUID"

    aput-object v3, v2, v5

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "dnsuid"

    aput-object v3, v2, v4

    const-string v3, "mDNSuid"

    aput-object v3, v2, v5

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "recordtype"

    aput-object v3, v2, v4

    const-string v3, "mRecordType"

    aput-object v3, v2, v5

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "iface"

    aput-object v2, v1, v4

    const-string v2, "mInterface"

    aput-object v2, v1, v5

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 58
    sput-object v0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->cFieldMapping:[[Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mFieldmap:Ljava/util/HashMap;

    .line 68
    invoke-static {}, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->createFieldMappings()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 85
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mContainer_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mParent_file_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mParent_hash:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mFile_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mHash:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mPeer_host_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mPeer:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mLocal:Ljava/lang/String;

    return-void
.end method

.method private static createFieldMappings()V
    .locals 8

    .line 75
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->cFieldMapping:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 76
    sget-object v5, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mFieldmap:Ljava/util/HashMap;

    aget-object v6, v4, v2

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mFieldmap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 79
    sget-object v2, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Key = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AppFlow"

    .line 79
    invoke-static {v2, v3, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/cisco/anyconnect/nvm/utils/AppFlow;
    .locals 5

    .line 160
    new-instance v0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;

    invoke-direct {v0}, Lcom/cisco/anyconnect/nvm/utils/AppFlow;-><init>()V

    .line 163
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 165
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 168
    sget-object v4, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mFieldmap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 169
    invoke-virtual {v0, v2, v3}, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 173
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "AppFlow"

    const-string v3, "Exception : "

    invoke-static {v1, v2, v3, p0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    :cond_0
    invoke-static {}, Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;->getInstance()Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;

    move-result-object p0

    invoke-direct {v0}, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->getUID()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;->getContainerName(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->setContainerName(Ljava/lang/String;)V

    return-object v0
.end method

.method private getUID()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mUid:I

    return v0
.end method

.method private setContainerName(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 137
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mContainer_name:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 98
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 99
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 100
    const-class v2, Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 103
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 104
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 105
    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 107
    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 109
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 111
    invoke-virtual {v3, p0, v0, v1}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 113
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {v3, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 117
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Field : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Value : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppFlow"

    .line 117
    invoke-static {v1, p2, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppFlow "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mLocal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mPeer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mSport:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mDport:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mUid:I

    .line 125
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mPid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mParent_pid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mPeer_host_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/utils/AppFlow;->mHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

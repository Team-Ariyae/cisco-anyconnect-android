.class public Lcom/cisco/umbrella/sync/SyncResponseData;
.super Ljava/lang/Object;
.source "SyncResponseData.java"


# instance fields
.field private failClosedOption:I

.field private ignoreVA:Z

.field private networkDisabled:Z

.field private syncInterval:J

.field private whitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;JZZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JZZI)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/cisco/umbrella/sync/SyncResponseData;->whitelist:Ljava/util/List;

    .line 103
    iput-wide p2, p0, Lcom/cisco/umbrella/sync/SyncResponseData;->syncInterval:J

    .line 104
    iput-boolean p4, p0, Lcom/cisco/umbrella/sync/SyncResponseData;->networkDisabled:Z

    .line 105
    iput-boolean p5, p0, Lcom/cisco/umbrella/sync/SyncResponseData;->ignoreVA:Z

    .line 106
    iput p6, p0, Lcom/cisco/umbrella/sync/SyncResponseData;->failClosedOption:I

    return-void
.end method


# virtual methods
.method public getFailClosedOption()Z
    .locals 2

    const/4 v0, 0x2

    .line 126
    iget v1, p0, Lcom/cisco/umbrella/sync/SyncResponseData;->failClosedOption:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIgnoreVA()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/cisco/umbrella/sync/SyncResponseData;->ignoreVA:Z

    return v0
.end method

.method public getNetworkDisabled()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/cisco/umbrella/sync/SyncResponseData;->networkDisabled:Z

    return v0
.end method

.method public getSyncInterval()J
    .locals 2

    .line 114
    iget-wide v0, p0, Lcom/cisco/umbrella/sync/SyncResponseData;->syncInterval:J

    return-wide v0
.end method

.method public getWhitelist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/cisco/umbrella/sync/SyncResponseData;->whitelist:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SyncResponseData{whitelist="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/umbrella/sync/SyncResponseData;->whitelist:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", syncInterval=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cisco/umbrella/sync/SyncResponseData;->syncInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\', networkDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cisco/umbrella/sync/SyncResponseData;->networkDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", failClosedOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cisco/umbrella/sync/SyncResponseData;->failClosedOption:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

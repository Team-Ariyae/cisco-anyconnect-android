.class public Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field public appId:Ljava/lang/String;

.field public sharedUid:Z

.field public uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->appId:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->uid:I

    .line 25
    iput-boolean p3, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->sharedUid:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 45
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 50
    :cond_2
    check-cast p1, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;

    .line 51
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->uid:I

    iget p1, p1, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->uid:I

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 60
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->uid:I

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sharedUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;->sharedUid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

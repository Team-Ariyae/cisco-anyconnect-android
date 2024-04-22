.class Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;
.super Ljava/lang/Object;
.source "NetworkFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Id"
.end annotation


# instance fields
.field final protocol:Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

.field final sourcePort:I


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;->protocol:Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    .line 28
    iput p2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;->sourcePort:I

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

    .line 43
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 44
    :cond_2
    check-cast p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;

    .line 45
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;->protocol:Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    iget-object v3, p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;->protocol:Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;->sourcePort:I

    iget p1, p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;->sourcePort:I

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;->protocol:Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;->ordinal()I

    move-result v0

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 35
    iget v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;->sourcePort:I

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "protocol= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;->protocol:Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " sourcePort= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;->sourcePort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

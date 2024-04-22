.class public Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;
.super Ljava/lang/Object;
.source "NetworkFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$INetworkFlowReadHandler;,
        Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;,
        Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;,
        Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$INetworkFlowCB;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$INetworkFlowCB;

.field private final mDestAddress:Ljava/net/InetAddress;

.field private final mDestPort:I

.field private mIsClosed:Z

.field private final mProtocol:Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

.field private final mSourceAddress:Ljava/net/InetAddress;

.field private final mSourcePort:I


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$INetworkFlowCB;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->mProtocol:Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    .line 64
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->mSourceAddress:Ljava/net/InetAddress;

    .line 65
    iput p3, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->mSourcePort:I

    .line 66
    iput-object p4, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->mDestAddress:Ljava/net/InetAddress;

    .line 67
    iput p5, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->mDestPort:I

    .line 68
    iput-object p6, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->mCallback:Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$INetworkFlowCB;

    return-void
.end method

.method static sup()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getDestAddress()Ljava/net/InetAddress;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->mDestAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getDestPort()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->mDestPort:I

    return v0
.end method

.method public getID()Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;
    .locals 3

    .line 72
    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->mProtocol:Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    iget v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->mSourcePort:I

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;I)V

    return-object v0
.end method

.method public getProtocol()Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->mProtocol:Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$IPProtocol;

    return-object v0
.end method

.method public getSourceAddress()Ljava/net/InetAddress;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->mSourceAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getSourcePort()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->mSourcePort:I

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->mIsClosed:Z

    return v0
.end method

.method setClosed()V
    .locals 1

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->mIsClosed:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->getID()Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$Id;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeData(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->mCallback:Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$INetworkFlowCB;

    invoke-interface {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$INetworkFlowCB;->handleWriteData(Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;Ljava/nio/ByteBuffer;)V

    return-void
.end method

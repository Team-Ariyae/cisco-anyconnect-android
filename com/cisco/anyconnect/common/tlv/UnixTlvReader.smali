.class public Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;
.super Ljava/lang/Object;
.source "UnixTlvReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/common/tlv/UnixTlvReader$UnixTlvReadException;
    }
.end annotation


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private mHeader:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/common/tlv/UnixTlvReader$UnixTlvReadException;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->mBuffer:Ljava/nio/ByteBuffer;

    .line 25
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 26
    invoke-virtual {p0}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readHeader()Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->mHeader:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/common/tlv/UnixTlvReader$UnixTlvReadException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->mBuffer:Ljava/nio/ByteBuffer;

    .line 19
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 20
    invoke-virtual {p0}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readHeader()Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->mHeader:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;

    return-void
.end method


# virtual methods
.method public getMessageType()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->mHeader:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;

    iget v0, v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;->type:I

    return v0
.end method

.method public getPayloadLen()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->mHeader:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;

    iget v0, v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;->len:I

    return v0
.end method

.method public getRemainingLength()I
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method peekNextType()Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;
    .locals 3

    .line 31
    invoke-static {}, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->values()[Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/common/tlv/UnixTlvReader$UnixTlvReadException;
        }
    .end annotation

    .line 59
    sget-object v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->Boolean:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readHeader(Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;)Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;

    .line 60
    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readBytesSlice()Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/common/tlv/UnixTlvReader$UnixTlvReadException;
        }
    .end annotation

    .line 82
    sget-object v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->Bytes:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readHeader(Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;)Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget v0, v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;->len:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v1
.end method

.method readHeader()Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/common/tlv/UnixTlvReader$UnixTlvReadException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 47
    new-instance v2, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;

    invoke-direct {v2, v0, v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;-><init>(II)V

    return-object v2
.end method

.method readHeader(Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;)Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/common/tlv/UnixTlvReader$UnixTlvReadException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 36
    invoke-static {v0}, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->from(I)Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readHeader()Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;

    move-result-object p1

    return-object p1

    .line 38
    :cond_0
    new-instance v1, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader$UnixTlvReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unexpected type: (expected)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " != "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader$UnixTlvReadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readIPAddress()Ljava/net/InetAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/common/tlv/UnixTlvReader$UnixTlvReadException;
        }
    .end annotation

    const-string/jumbo v0, "unexpected type: "

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->peekNextType()Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    move-result-object v1

    .line 95
    sget-object v2, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->IPv4Address:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    if-ne v1, v2, :cond_0

    .line 96
    sget-object v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->IPv4Address:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readHeader(Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;)Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 98
    iget-object v1, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 99
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    sget-object v2, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->IPv6Address:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    if-ne v1, v2, :cond_1

    .line 102
    sget-object v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->IPv6Address:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readHeader(Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;)Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 104
    iget-object v1, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 105
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 108
    :cond_1
    new-instance v2, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader$UnixTlvReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader$UnixTlvReadException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 113
    new-instance v1, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader$UnixTlvReadException;

    invoke-direct {v1, v0}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader$UnixTlvReadException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/common/tlv/UnixTlvReader$UnixTlvReadException;
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->Int:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readHeader(Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;)Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;

    .line 71
    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/common/tlv/UnixTlvReader$UnixTlvReadException;
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->Short:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readHeader(Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;)Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;

    .line 66
    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/common/tlv/UnixTlvReader$UnixTlvReadException;
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->String:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readHeader(Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;)Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;

    move-result-object v0

    .line 76
    iget v0, v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Header;->len:I

    new-array v0, v0, [B

    .line 77
    iget-object v1, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 78
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

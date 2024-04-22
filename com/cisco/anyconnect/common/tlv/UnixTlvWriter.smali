.class public Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;
.super Ljava/lang/Object;
.source "UnixTlvWriter.java"

# interfaces
.implements Lcom/cisco/anyconnect/common/io/IWritable;


# instance fields
.field final mBuffer:Ljava/nio/ByteBuffer;

.field mMessageType:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->mBuffer:Ljava/nio/ByteBuffer;

    .line 18
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private addTypeLengthHeader(II)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 69
    iget-object p1, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private addTypeLengthHeader(Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;I)V
    .locals 0

    .line 64
    invoke-virtual {p1}, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->addTypeLengthHeader(II)V

    return-void
.end method


# virtual methods
.method public commit()Ljava/nio/ByteBuffer;
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 88
    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 90
    iget-object v1, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public putBytes(Ljava/nio/ByteBuffer;)Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;
    .locals 2

    .line 46
    sget-object v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->Bytes:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->addTypeLengthHeader(Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;I)V

    .line 47
    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putBytes([B)Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;
    .locals 2

    .line 40
    sget-object v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->Bytes:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->addTypeLengthHeader(Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;I)V

    .line 41
    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putIPAddress(Ljava/net/InetAddress;)Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;
    .locals 2

    .line 52
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    .line 53
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 54
    sget-object v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->IPv4Address:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->addTypeLengthHeader(Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;I)V

    goto :goto_0

    .line 56
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->IPv6Address:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->addTypeLengthHeader(Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;I)V

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putInt(I)Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;
    .locals 2

    .line 34
    sget-object v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->Int:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->addTypeLengthHeader(Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;I)V

    .line 35
    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putShort(S)Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;
    .locals 2

    .line 28
    sget-object v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->Short:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->addTypeLengthHeader(Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;I)V

    .line 29
    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putString(Ljava/lang/String;)Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;
    .locals 2

    .line 22
    sget-object v0, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->String:Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->addTypeLengthHeader(II)V

    .line 23
    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public startMessage(I)Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 79
    iput p1, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->mMessageType:I

    .line 80
    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 81
    iget-object p1, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 99
    iget-object v1, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 100
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 101
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return v0
.end method

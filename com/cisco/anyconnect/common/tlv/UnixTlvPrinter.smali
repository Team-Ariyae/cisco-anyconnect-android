.class public Lcom/cisco/anyconnect/common/tlv/UnixTlvPrinter;
.super Ljava/lang/Object;
.source "UnixTlvPrinter.java"


# instance fields
.field private reader:Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    :try_start_0
    new-instance v0, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;

    invoke-direct {v0, p1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvPrinter;->reader:Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;
    :try_end_0
    .catch Lcom/cisco/anyconnect/common/tlv/UnixTlvReader$UnixTlvReadException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public print()Ljava/lang/String;
    .locals 3

    const-string v0, "[UnixTlv msgType="

    .line 21
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvPrinter;->reader:Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->getMessageType()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvPrinter;->reader:Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->getRemainingLength()I

    move-result v1

    if-lez v1, :cond_0

    .line 24
    sget-object v1, Lcom/cisco/anyconnect/common/tlv/UnixTlvPrinter$1;->$SwitchMap$com$cisco$anyconnect$common$tlv$UnixTlv$Type:[I

    iget-object v2, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvPrinter;->reader:Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->peekNextType()Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cisco/anyconnect/common/tlv/UnixTlv$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 42
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | string="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvPrinter;->reader:Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | bytes="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvPrinter;->reader:Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readBytesSlice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | ip="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvPrinter;->reader:Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readIPAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 32
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | int="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvPrinter;->reader:Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readInt()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 29
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | bool="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvPrinter;->reader:Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readBoolean()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 26
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | short="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/common/tlv/UnixTlvPrinter;->reader:Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/common/tlv/UnixTlvReader;->readShort()S

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/cisco/anyconnect/common/tlv/UnixTlvReader$UnixTlvReadException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

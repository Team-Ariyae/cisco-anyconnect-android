.class public Lcom/cisco/android/nchs/ipc/ArgumentMapping;
.super Ljava/lang/Object;
.source "ArgumentMapping.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "ArgumentMapping"

.field private static final INTEGER_SIZE_IN_BYTES:I = 0x4


# instance fields
.field private mData:Ljava/lang/Object;

.field private mSerializedData:[B

.field private mType:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;


# direct methods
.method public constructor <init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mType:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    .line 53
    iput-object p2, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mData:Ljava/lang/Object;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->convertObjectToBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mSerializedData:[B

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cannot pass null arguments to ArgumentMapping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mType:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mSerializedData:[B

    .line 80
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mType:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-direct {p0, v0, p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->parseObjectFromBytes(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mData:Ljava/lang/Object;

    if-eqz p2, :cond_0

    return-void

    .line 83
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not parse the argument of type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from byte buffer passed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cannot pass null type to ArgumentMapping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static convertArgumentMappingListToByteArray(Ljava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cisco/android/nchs/ipc/ArgumentMapping;",
            ">;)[B"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 281
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    .line 283
    invoke-virtual {v2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getSerializedData()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x2

    .line 287
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 288
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v1}, Lcom/cisco/android/nchs/ipc/IPCHelpers;->shortToByteArray(S)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 289
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    .line 291
    invoke-virtual {v1}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getSerializedData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 294
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private convertObjectToBytes()[B
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mData:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 140
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "ArgumentMapping"

    const-string v3, "Tried to get serialized data for a null argument, returning null"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 147
    :cond_0
    sget-object v0, Lcom/cisco/android/nchs/ipc/ArgumentMapping$1;->$SwitchMap$com$cisco$android$nchs$codes$NCHSArgumentTypeCode:[I

    iget-object v2, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mType:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v2}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    return-object v1

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mData:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 213
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mType:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v2}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->getCode()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 215
    invoke-static {v4}, Lcom/cisco/android/nchs/ipc/IPCHelpers;->intToByteArray(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 216
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 217
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 193
    :pswitch_1
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mData:Ljava/lang/Object;

    check-cast v0, [I

    .line 194
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x5

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mType:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v2}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->getCode()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 196
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Lcom/cisco/android/nchs/ipc/IPCHelpers;->intToByteArray(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 198
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 200
    invoke-static {v4}, Lcom/cisco/android/nchs/ipc/IPCHelpers;->intToByteArray(I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 185
    :pswitch_2
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mData:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    .line 186
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mType:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v2}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->getCode()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 188
    invoke-static {v3}, Lcom/cisco/android/nchs/ipc/IPCHelpers;->intToByteArray(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 189
    invoke-static {v0}, Lcom/cisco/android/nchs/ipc/IPCHelpers;->intToByteArray(I)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 190
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 177
    :pswitch_3
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mData:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 178
    array-length v1, v0

    add-int/lit8 v1, v1, 0x5

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 179
    iget-object v2, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mType:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v2}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->getCode()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 180
    array-length v2, v0

    invoke-static {v2}, Lcom/cisco/android/nchs/ipc/IPCHelpers;->intToByteArray(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 181
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 182
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 169
    :pswitch_4
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mData:Ljava/lang/Object;

    check-cast v0, [B

    .line 170
    array-length v1, v0

    add-int/lit8 v1, v1, 0x5

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mType:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v2}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->getCode()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 172
    array-length v2, v0

    invoke-static {v2}, Lcom/cisco/android/nchs/ipc/IPCHelpers;->intToByteArray(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 173
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 174
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 151
    :pswitch_5
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mData:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 154
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mType:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-virtual {v2}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->getCode()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 160
    invoke-static {v4}, Lcom/cisco/android/nchs/ipc/IPCHelpers;->intToByteArray(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 163
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 166
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseObjectFromBytes(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 233
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "ArgumentMapping"

    const-string v1, "parseObjectFromBytes() received null byte array, returning null"

    invoke-static {p1, p2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 237
    :cond_0
    sget-object v1, Lcom/cisco/android/nchs/ipc/ArgumentMapping$1;->$SwitchMap$com$cisco$android$nchs$codes$NCHSArgumentTypeCode:[I

    invoke-virtual {p1}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return-object v0

    .line 255
    :pswitch_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    aget-byte p1, p1, v1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 258
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 260
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 250
    :pswitch_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result p2

    new-array p2, p2, [I

    .line 252
    invoke-virtual {p1, p2}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-object p2

    .line 246
    :pswitch_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 244
    :pswitch_3
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    return-object p1

    .line 242
    :pswitch_4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    .line 240
    :pswitch_5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    aget-byte p1, p1, v1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getObjectData()Ljava/lang/Object;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getSerializedData()[B
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mSerializedData:[B

    return-object v0
.end method

.method public getType()Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mType:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->mType:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

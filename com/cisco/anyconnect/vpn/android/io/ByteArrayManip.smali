.class public Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;
.super Ljava/lang/Object;
.source "ByteArrayManip.java"


# instance fields
.field private mBytes:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->hexToBin(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->mBytes:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->mBytes:[B

    return-void
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 21
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 23
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 24
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static hexToBin(Ljava/lang/String;)[B
    .locals 2

    const-string v0, "\\s+"

    const-string v1, ""

    .line 30
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getByte(I)B
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->mBytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method public getByteAsHex(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 116
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->getByte(I)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%02X "

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBytes()[B
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->mBytes:[B

    return-object v0
.end method

.method public getShort(I)S
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->mBytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    return p1
.end method

.method public indexOf([B)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    :goto_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->mBytes:[B

    array-length v2, v2

    array-length v3, p1

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_3

    const/4 v2, 0x0

    .line 45
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 46
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->mBytes:[B

    add-int v4, v1, v2

    aget-byte v3, v3, v4

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_0

    const/4 v2, 0x0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public replace(II[B)Z
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->mBytes:[B

    array-length v1, v0

    sub-int/2addr v1, p2

    array-length v2, p3

    add-int/2addr v1, v2

    .line 64
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 67
    invoke-static {v0, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p1, 0x0

    .line 70
    array-length v4, p3

    invoke-static {p3, v3, v2, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    array-length v3, p3

    add-int/2addr v0, v3

    .line 73
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->mBytes:[B

    add-int/2addr p2, p1

    array-length p3, p3

    add-int/2addr p1, p3

    sub-int/2addr v1, v0

    invoke-static {v3, p2, v2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->mBytes:[B

    const/4 p1, 0x1

    return p1
.end method

.method public replace([B[B)Z
    .locals 6

    .line 83
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->indexOf([B)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    return v2

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->mBytes:[B

    array-length v3, v1

    array-length v4, p1

    sub-int/2addr v3, v4

    array-length v4, p2

    add-int/2addr v3, v4

    .line 89
    new-array v4, v3, [B

    .line 92
    invoke-static {v1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v0, 0x0

    .line 95
    array-length v5, p2

    invoke-static {p2, v2, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    array-length v2, p2

    add-int/2addr v1, v2

    .line 98
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->mBytes:[B

    array-length p1, p1

    add-int/2addr p1, v0

    array-length p2, p2

    add-int/2addr v0, p2

    sub-int/2addr v3, v1

    invoke-static {v2, p1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iput-object v4, p0, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->mBytes:[B

    const/4 p1, 0x1

    return p1
.end method

.class public Lcom/cisco/android/nchs/ipc/IPCHelpers;
.super Ljava/lang/Object;
.source "IPCHelpers.java"


# static fields
.field public static final ARGUMENT_OVERHEAD_SIZE:I = 0x5

.field private static final ENTITY_NAME:Ljava/lang/String; = "IPCHelpers"

.field public static final MAX_ARG_LENGTH:I = 0x10000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final intToByteArray(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/4 v1, 0x3

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static parseArgsFromClientInputStream(Ljava/io/InputStream;Lcom/cisco/android/nchs/ipc/IPCReturnMessage;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/cisco/android/nchs/ipc/IPCReturnMessage;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/cisco/android/nchs/ipc/ArgumentMapping;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;
        }
    .end annotation

    const-string v0, "IPCHelpers"

    if-nez p0, :cond_0

    .line 89
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p1, "Clientstream passed was null, returning null"

    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    .line 100
    :try_start_0
    invoke-static {p0, v2}, Lcom/cisco/android/nchs/ipc/IPCHelpers;->readBytesIntoBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    .line 102
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x1

    aget-byte v2, v2, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v4, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_6

    .line 116
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v6, -0x1

    if-eq v6, v5, :cond_5

    .line 128
    invoke-static {v5}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->getOpCodeForCode(I)Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-result-object v6

    const-string v7, "Argument #"

    if-eqz v6, :cond_4

    const/4 v5, 0x4

    .line 135
    invoke-static {p0, v5}, Lcom/cisco/android/nchs/ipc/IPCHelpers;->readBytesIntoBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 145
    :try_start_2
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    if-ltz v5, :cond_2

    const/high16 v8, 0x10000

    if-ge v5, v8, :cond_2

    .line 157
    invoke-static {p0, v5}, Lcom/cisco/android/nchs/ipc/IPCHelpers;->readBytesIntoBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 165
    :try_start_3
    new-instance v7, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-direct {v7, v6, v5}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/nio/ByteBuffer;)V

    .line 166
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 170
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "IllegalArguement exception when converting args: "

    invoke-static {v1, v0, v2, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    new-instance p0, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;

    const-string v0, "Could not convert argument to specified type"

    invoke-direct {p0, p1, v0}, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;-><init>(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    throw p0

    .line 160
    :cond_1
    new-instance p0, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not read arg value for argument #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;-><init>(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    throw p0

    .line 148
    :cond_2
    :try_start_4
    new-instance p0, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Length parameter invalid"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;-><init>(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 153
    :catch_1
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "IndexOutOfBoundsException while trying to get the argument #"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance p0, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;

    const-string v0, "IndexOutOfBoundsException while trying to get the argument length"

    invoke-direct {p0, p1, v0}, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;-><init>(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    throw p0

    .line 138
    :cond_3
    new-instance p0, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not read argument length for argument #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;-><init>(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_4
    new-instance p0, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type passed (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") not recognized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;-><init>(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    throw p0

    .line 119
    :cond_5
    :try_start_5
    new-instance p0, Ljava/net/SocketException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End of stream reached while reading argument #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2

    .line 124
    :catch_2
    new-instance p0, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timeout Occured when trying to read the type of argument #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;-><init>(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    throw p0

    :cond_6
    return-object v1

    .line 106
    :catch_3
    new-instance p0, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;

    const-string v0, "Timeout Occured when trying to read the number of arguments"

    invoke-direct {p0, p1, v0}, Lcom/cisco/android/nchs/exception/NCHSClientInteractionFailedException;-><init>(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static readBytesIntoBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "IPCHelpers"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 190
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p1, "Clientstream passed was null, returning null"

    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    if-gez p1, :cond_1

    .line 197
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p1, "numBytes was not in expected range, returning null"

    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 204
    :cond_1
    :try_start_0
    new-array p1, p1, [B

    .line 205
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    const/4 v0, -0x1

    if-eq v0, p0, :cond_2

    .line 211
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 208
    :cond_2
    new-instance p0, Ljava/net/SocketException;

    const-string p1, "End of stream reached while reading."

    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method public static final shortToByteArray(S)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    return-object v0
.end method

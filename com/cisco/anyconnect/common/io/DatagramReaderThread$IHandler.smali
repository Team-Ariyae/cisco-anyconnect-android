.class public interface abstract Lcom/cisco/anyconnect/common/io/DatagramReaderThread$IHandler;
.super Ljava/lang/Object;
.source "DatagramReaderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/common/io/DatagramReaderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHandler"
.end annotation


# virtual methods
.method public abstract onDatagramRead(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract onReadException(Ljava/lang/Exception;)V
.end method

.method public abstract onReadShutdown()V
.end method

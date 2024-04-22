.class public interface abstract Lcom/cisco/anyconnect/common/ThreadedDgramChannel$IWritableContent;
.super Ljava/lang/Object;
.source "ThreadedDgramChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/common/ThreadedDgramChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IWritableContent"
.end annotation


# virtual methods
.method public abstract writeTo(Ljava/io/OutputStream;[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

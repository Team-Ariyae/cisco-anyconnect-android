.class public interface abstract Lcom/cisco/anyconnect/common/network/SelectSocketChannel$ISelectSocketChannelCB;
.super Ljava/lang/Object;
.source "SelectSocketChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/common/network/SelectSocketChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISelectSocketChannelCB"
.end annotation


# virtual methods
.method public abstract onChannelReconnected()V
.end method

.method public abstract onDataReceived([B)V
.end method

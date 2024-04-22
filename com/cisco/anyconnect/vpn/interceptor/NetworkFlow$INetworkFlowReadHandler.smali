.class public interface abstract Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow$INetworkFlowReadHandler;
.super Ljava/lang/Object;
.source "NetworkFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "INetworkFlowReadHandler"
.end annotation


# virtual methods
.method public abstract onDataAvailable([B)V
.end method

.method public abstract onStreamClosed()V
.end method

.class public interface abstract Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;
.super Ljava/lang/Object;
.source "NetworkInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "INetworkInterceptorCB"
.end annotation


# virtual methods
.method public abstract handleFlowClosed(Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;)V
.end method

.method public abstract handleFlowData(Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract handleStateChange(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V
.end method

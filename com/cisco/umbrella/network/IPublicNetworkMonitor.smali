.class public interface abstract Lcom/cisco/umbrella/network/IPublicNetworkMonitor;
.super Ljava/lang/Object;
.source "IPublicNetworkMonitor.java"


# virtual methods
.method public abstract getConnectedNetwork()Landroid/net/Network;
.end method

.method public abstract isOnline()Z
.end method

.method public abstract subscribe(Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;)V
.end method

.method public abstract unSubscribe(Lcom/cisco/umbrella/network/PublicNetworkMonitor$Callback;)V
.end method

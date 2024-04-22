.class public interface abstract Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;
.super Ljava/lang/Object;
.source "IVpnAgentService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService$Stub;,
        Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService$Default;
    }
.end annotation


# virtual methods
.method public abstract startAgent()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopAgent()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

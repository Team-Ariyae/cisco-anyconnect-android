.class public interface abstract Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;
.super Ljava/lang/Object;
.source "VpnConnectionListImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IVpnConnectionListCB"
.end annotation


# virtual methods
.method public abstract OnActiveConnectionRemoved()V
.end method

.method public abstract OnConnectionsChanged()V
.end method

.method public abstract SwitchActiveConnection(Ljava/lang/String;)V
.end method

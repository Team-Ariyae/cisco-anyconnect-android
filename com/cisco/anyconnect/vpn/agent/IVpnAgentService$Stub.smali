.class public abstract Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService$Stub;
.super Landroid/os/Binder;
.source "IVpnAgentService.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.cisco.anyconnect.vpn.agent.IVpnAgentService"

.field static final TRANSACTION_startAgent:I = 0x1

.field static final TRANSACTION_stopAgent:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.cisco.anyconnect.vpn.agent.IVpnAgentService"

    .line 29
    invoke-virtual {p0, p0, v0}, Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.cisco.anyconnect.vpn.agent.IVpnAgentService"

    .line 40
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    instance-of v1, v0, Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;

    return-object v0

    .line 44
    :cond_1
    new-instance v0, Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;
    .locals 1

    .line 152
    sget-object v0, Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;)Z
    .locals 1

    .line 142
    sget-object v0, Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 146
    sput-object p0, Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 143
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.cisco.anyconnect.vpn.agent.IVpnAgentService"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 57
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 70
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService$Stub;->stopAgent()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 62
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService$Stub;->startAgent()Z

    move-result p1

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

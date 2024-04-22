.class public Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener$Default;
.super Ljava/lang/Object;
.source "IConnectionListener.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ConnectionUpdateCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

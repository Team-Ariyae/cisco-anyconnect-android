.class public Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService$Default;
.super Ljava/lang/Object;
.source "ISystemSupportService.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;
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
.method public GetExcludedNetworks(Ljava/util/List;)Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/RouteParcel;",
            ">;)",
            "Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public SetSystemProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public SetSystemProxyServer(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

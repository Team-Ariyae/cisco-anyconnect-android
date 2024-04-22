.class public interface abstract Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;
.super Ljava/lang/Object;
.source "ISystemSupportService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService$Stub;,
        Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService$Default;
    }
.end annotation


# virtual methods
.method public abstract GetExcludedNetworks(Ljava/util/List;)Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;
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
.end method

.method public abstract SetSystemProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract SetSystemProxyServer(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

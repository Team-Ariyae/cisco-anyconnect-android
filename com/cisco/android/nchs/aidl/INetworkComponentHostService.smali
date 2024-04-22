.class public interface abstract Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;
.super Ljava/lang/Object;
.source "INetworkComponentHostService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;,
        Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Default;
    }
.end annotation


# virtual methods
.method public abstract GetAllComponentInfo()[Lcom/cisco/android/nchs/aidl/NativeComponentInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract GetNCHSState(Lcom/cisco/android/nchs/aidl/NCHSStateParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract GetNCSS()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract GetNativeServiceState(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract GetNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/StringBuilderParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract InstallNetworkComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract IsDeviceInfoAvailable()Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract IsNativeServiceRunning(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract IsNetworkComponentInstalled(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract RegisterShutdownListener(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract SetDisplayNotifications(Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract SetNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract SetUserPreference(Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ShutdownService(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract StartNativeService(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract StartVpnAgent()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract StopNativeService(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract UninstallNetworkComponent(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract UnregisterShutdownListener(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract UpdateComponentState(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSStateParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

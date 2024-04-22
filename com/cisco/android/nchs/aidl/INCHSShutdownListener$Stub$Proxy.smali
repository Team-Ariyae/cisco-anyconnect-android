.class Lcom/cisco/android/nchs/aidl/INCHSShutdownListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "INCHSShutdownListener.java"

# interfaces
.implements Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/aidl/INCHSShutdownListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/cisco/android/nchs/aidl/INCHSShutdownListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public NCHSShutdownCB(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INCHSShutdownListener"

    .line 103
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/INCHSShutdownListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INCHSShutdownListener$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 107
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INCHSShutdownListener$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;->NCHSShutdownCB(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 110
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 115
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/cisco/android/nchs/aidl/INCHSShutdownListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.cisco.android.nchs.aidl.INCHSShutdownListener"

    return-object v0
.end method

.class Lcom/cisco/android/nchs/aidl/IImportClientCertCB$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImportClientCertCB.java"

# interfaces
.implements Lcom/cisco/android/nchs/aidl/IImportClientCertCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/aidl/IImportClientCertCB$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/cisco/android/nchs/aidl/IImportClientCertCB;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/cisco/android/nchs/aidl/IImportClientCertCB$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public OnImportCompleted(Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;[BLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.IImportClientCertCB"

    .line 104
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {p1, v0, v3}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 113
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v4, p0, Lcom/cisco/android/nchs/aidl/IImportClientCertCB$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IImportClientCertCB$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IImportClientCertCB;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 116
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IImportClientCertCB$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IImportClientCertCB;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/cisco/android/nchs/aidl/IImportClientCertCB;->OnImportCompleted(Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;[BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 119
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 124
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/cisco/android/nchs/aidl/IImportClientCertCB$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.cisco.android.nchs.aidl.IImportClientCertCB"

    return-object v0
.end method

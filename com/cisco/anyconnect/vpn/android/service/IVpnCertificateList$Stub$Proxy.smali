.class Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVpnCertificateList.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public GetClientCerts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnCertificateList"

    .line 107
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 110
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;->GetClientCerts()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 112
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 113
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 118
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.cisco.anyconnect.vpn.android.service.IVpnCertificateList"

    return-object v0
.end method

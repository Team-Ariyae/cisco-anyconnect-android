.class Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICertificateListener.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public ClientCertificateCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.ICertificateListener"

    .line 162
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 163
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 164
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 166
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;->ClientCertificateCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 169
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    throw p1
.end method

.method public ImportPKCS12CompleteCB([BLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.ICertificateListener"

    .line 191
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 193
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 196
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;->ImportPKCS12CompleteCB([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 199
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 204
    throw p1
.end method

.method public SCEPEnrollExitCB()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.ICertificateListener"

    .line 235
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 236
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 238
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;->SCEPEnrollExitCB()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 241
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 246
    throw v2
.end method

.method public SCEPEnrollStartCB()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.ICertificateListener"

    .line 214
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 215
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 216
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 217
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;->SCEPEnrollStartCB()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 220
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 225
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.cisco.anyconnect.vpn.android.service.ICertificateListener"

    return-object v0
.end method

.class Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInfoListener.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public ConnectInProgressCB(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IInfoListener"

    .line 229
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 231
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    invoke-virtual {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    :goto_0
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 238
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 239
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;->ConnectInProgressCB(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 242
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    throw p1
.end method

.method public NoticeCB(Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IInfoListener"

    .line 198
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 200
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    invoke-virtual {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    :goto_0
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 207
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 208
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;->NoticeCB(Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 211
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    throw p1
.end method

.method public StateCB(Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IInfoListener"

    .line 164
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    invoke-virtual {p1, v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    :goto_0
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 173
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 174
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;->StateCB(Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 177
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.cisco.anyconnect.vpn.android.service.IInfoListener"

    return-object v0
.end method

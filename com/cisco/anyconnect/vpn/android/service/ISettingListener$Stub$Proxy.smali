.class Lcom/cisco/anyconnect/vpn/android/service/ISettingListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISettingListener.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/ISettingListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ISettingListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public SettingChangedCB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.ISettingListener"

    .line 119
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/ISettingListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/ISettingListener$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 124
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/ISettingListener$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;->SettingChangedCB(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 127
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 132
    throw p1
.end method

.method public SettingUserControllableChangedCB(Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.ISettingListener"

    .line 142
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 144
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/ISettingListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/ISettingListener$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 147
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/ISettingListener$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;->SettingUserControllableChangedCB(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 150
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 155
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ISettingListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.cisco.anyconnect.vpn.android.service.ISettingListener"

    return-object v0
.end method

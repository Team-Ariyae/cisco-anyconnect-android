.class Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISystemSupportService.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public GetExcludedNetworks(Ljava/util/List;)Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;
    .locals 5
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

    .line 195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.systemsupport.aidl.ISystemSupportService"

    .line 199
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 202
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;->GetExcludedNetworks(Ljava/util/List;)Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 204
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 211
    :goto_0
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/RouteParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception p1

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    throw p1
.end method

.method public SetSystemProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.systemsupport.aidl.ISystemSupportService"

    .line 146
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 151
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;->SetSystemProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 153
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 162
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    throw p1
.end method

.method public SetSystemProxyServer(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.systemsupport.aidl.ISystemSupportService"

    .line 173
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 177
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;->SetSystemProxyServer(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 179
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 181
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 188
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 190
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.cisco.anyconnect.vpn.android.systemsupport.aidl.ISystemSupportService"

    return-object v0
.end method

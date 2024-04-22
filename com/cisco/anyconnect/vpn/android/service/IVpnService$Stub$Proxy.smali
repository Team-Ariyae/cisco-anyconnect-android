.class Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVpnService.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/IVpnService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1114
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public ClearAppMessages()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1599
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1601
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1602
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1603
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1604
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->ClearAppMessages()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1607
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1612
    throw v2
.end method

.method public Connect(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1731
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1733
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1734
    invoke-virtual {p1, v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1737
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1739
    :goto_0
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x18

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1740
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1741
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->Connect(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1743
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1744
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 1747
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 1747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1749
    throw p1
.end method

.method public ConnectWithPrefill(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1777
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1779
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1780
    invoke-virtual {p1, v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1783
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 1786
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1787
    invoke-virtual {p2, v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1790
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1792
    :goto_1
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x19

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1793
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1794
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->ConnectWithPrefill(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1796
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1797
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 1800
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 1800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1802
    throw p1
.end method

.method public DeleteCertificates(ILjava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 2251
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2252
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2253
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2254
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2255
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2256
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->DeleteCertificates(ILjava/util/List;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2258
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2259
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 2262
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 2262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2264
    throw p1
.end method

.method public DeleteCurrentProfile()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 2143
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2144
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2145
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2146
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->DeleteCurrentProfile()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2148
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2149
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2152
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2154
    throw v2
.end method

.method public Disconnect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1810
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1813
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1814
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1815
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1816
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->Disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1819
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1824
    throw v2
.end method

.method public EnableStateNotifications(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 2003
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2004
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2005
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2006
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2007
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->EnableStateNotifications(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2013
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2010
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2013
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2013
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2015
    throw p1
.end method

.method public EnumerateCertificates(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 2224
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2226
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2227
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2228
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->EnumerateCertificates(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2230
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2231
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2236
    throw p1
.end method

.method public GetActiveLocale()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 2434
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2435
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2436
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2437
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetActiveLocale()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2439
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2440
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2445
    throw v2
.end method

.method public GetAnyConnectVersion()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 2277
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2278
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2279
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2280
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetAnyConnectVersion()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2282
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2283
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2288
    throw v2
.end method

.method public GetAppMessages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1576
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1579
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1580
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1581
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1582
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetAppMessages()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1588
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1584
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1585
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1588
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1588
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1590
    throw v2
.end method

.method public GetAvailableLocales()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 2407
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2408
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2409
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2410
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetAvailableLocales()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2412
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2413
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2418
    throw v2
.end method

.method public GetClientCertificates()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1671
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1672
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1673
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1674
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetClientCertificates()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1676
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1677
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1680
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1682
    throw v2
.end method

.method public GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1623
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1624
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1625
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1626
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1628
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1629
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1634
    throw v2
.end method

.method public GetCurrentProfileContents()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 2170
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2171
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2172
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2173
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetCurrentProfileContents()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2175
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2176
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2181
    throw v2
.end method

.method public GetErrorString(Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 2512
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2514
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2515
    invoke-virtual {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2518
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2520
    :goto_0
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x33

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2521
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2522
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetErrorString(Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2528
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2524
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2525
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2528
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2528
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2530
    throw p1
.end method

.method public GetLastStats()Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2023
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2024
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 2027
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2028
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2029
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2030
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetLastStats()Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2041
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2032
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2033
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2034
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2041
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2041
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2043
    throw v2
.end method

.method public GetPreferences()Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1916
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1917
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1918
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1919
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPreferences()Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1930
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1921
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1922
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1923
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1930
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1930
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1932
    throw v2
.end method

.method public GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 2485
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2486
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2487
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2488
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2490
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2491
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2496
    throw v2
.end method

.method public GetVpnLogger()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1646
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1647
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1648
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1649
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetVpnLogger()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1652
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1657
    throw v2
.end method

.method public GetVpnServiceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1136
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1137
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1138
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1139
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetVpnServiceVersion()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1141
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1142
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1147
    throw v2
.end method

.method public ImportPKCS12WithPassword([BLjava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2082
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 2086
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2087
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2088
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2089
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2090
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2091
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->ImportPKCS12WithPassword([BLjava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2093
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2094
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2095
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2102
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2104
    throw p1
.end method

.method public ImportProfile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 2197
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2198
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2199
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2200
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2201
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2202
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->ImportProfile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2204
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2205
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 2208
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 2208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2210
    throw p1
.end method

.method public ImportServerL10nData(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 2311
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2312
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2313
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2314
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2315
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2316
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->ImportServerL10nData(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2318
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2319
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2320
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2327
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2329
    throw p1
.end method

.method public IsConnected()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1692
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1693
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1696
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1697
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1698
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1699
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->IsConnected()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1705
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1701
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1702
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1705
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1705
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1707
    throw v2
.end method

.method public IsOperatingMode(Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 2374
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 2376
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2377
    invoke-virtual {p1, v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2380
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2382
    :goto_0
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x2e

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2383
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2384
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->IsOperatingMode(Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2390
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2386
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2387
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 2390
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 2390
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2392
    throw p1
.end method

.method public RegisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1369
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1370
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1371
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1372
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1373
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1375
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1376
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 1379
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1379
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1381
    throw p1
.end method

.method public RegisterConnectionListener(Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1317
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1318
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1319
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1320
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1321
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterConnectionListener(Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1323
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1324
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 1327
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1329
    throw p1
.end method

.method public RegisterImportListener(Lcom/cisco/anyconnect/vpn/android/service/IImportListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1473
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1474
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IImportListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1475
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1476
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1477
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterImportListener(Lcom/cisco/anyconnect/vpn/android/service/IImportListener;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1479
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1480
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 1483
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1485
    throw p1
.end method

.method public RegisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1421
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1422
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1423
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1424
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1425
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1427
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1428
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 1431
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1433
    throw p1
.end method

.method public RegisterLogListener(Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1265
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1266
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1267
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1268
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1269
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterLogListener(Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1271
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1272
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 1275
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1277
    throw p1
.end method

.method public RegisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1525
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1526
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1527
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1528
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1529
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1531
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1532
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 1535
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1537
    throw p1
.end method

.method public RegisterServiceStateListener(Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1161
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1162
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1163
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1164
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1165
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterServiceStateListener(Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1167
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1168
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 1171
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1173
    throw p1
.end method

.method public RegisterStatsListener(Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1213
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1214
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1215
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1216
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1217
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterStatsListener(Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1219
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1220
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 1223
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1225
    throw p1
.end method

.method public RequestImportPKCS12([B)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 2055
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2056
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2057
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2058
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2059
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RequestImportPKCS12([B)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2070
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2061
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2062
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2063
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2070
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2070
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2072
    throw p1
.end method

.method public RestoreDefaultL10nData()Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 2343
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2344
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2345
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2346
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RestoreDefaultL10nData()Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2348
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2349
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2350
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2357
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2359
    throw v2
.end method

.method public SavePreferences(Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1942
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1943
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1946
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1948
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1949
    invoke-virtual {p1, v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1952
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1954
    :goto_0
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1f

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1955
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1956
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->SavePreferences(Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1962
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1958
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1959
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 1962
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 1962
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1964
    throw p1
.end method

.method public SetBannerResponse(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1833
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1836
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1837
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1838
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1839
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1840
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->SetBannerResponse(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1846
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1843
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1846
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1846
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1848
    throw p1
.end method

.method public SetCertBannerResponse(ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1860
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1861
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1862
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1863
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1864
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1865
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->SetCertBannerResponse(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1871
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1868
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1871
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1871
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1873
    throw p1
.end method

.method public SetFipsMode(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 2461
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 2462
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2463
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x31

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2464
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2465
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->SetFipsMode(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2467
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2468
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 2471
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 2471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2473
    throw p1
.end method

.method public SetNewTunnelGroup(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1976
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1978
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1979
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1980
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1981
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1982
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->SetNewTunnelGroup(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1988
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1985
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1988
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1988
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1990
    throw p1
.end method

.method public ShutdownService(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 2117
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2118
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2119
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2120
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2121
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->ShutdownService(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2127
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2124
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2127
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2127
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2129
    throw p1
.end method

.method public UnregisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1395
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1396
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1397
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1398
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1399
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1401
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1402
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 1405
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1407
    throw p1
.end method

.method public UnregisterConnectionListener(Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1343
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1344
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1345
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1346
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1347
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterConnectionListener(Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1349
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1350
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 1353
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1355
    throw p1
.end method

.method public UnregisterImportListener(Lcom/cisco/anyconnect/vpn/android/service/IImportListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1499
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1500
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IImportListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1501
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1502
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1503
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterImportListener(Lcom/cisco/anyconnect/vpn/android/service/IImportListener;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1505
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1506
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 1509
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1511
    throw p1
.end method

.method public UnregisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1447
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1448
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1449
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1450
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1451
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1453
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1454
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 1457
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1459
    throw p1
.end method

.method public UnregisterLogListener(Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1291
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1292
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1293
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1294
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1295
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterLogListener(Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1301
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1297
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1298
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 1301
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1301
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1303
    throw p1
.end method

.method public UnregisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1553
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1554
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1555
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1556
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1557
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1559
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1560
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 1563
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1565
    throw p1
.end method

.method public UnregisterServiceStateListener(Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1187
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1188
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1189
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1190
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1191
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterServiceStateListener(Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1193
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1194
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 1197
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1199
    throw p1
.end method

.method public UnregisterStatsListener(Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1239
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1240
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1241
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1242
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1243
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterStatsListener(Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1245
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1246
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 1249
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1251
    throw p1
.end method

.method public UserSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1883
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 1885
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1887
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1888
    invoke-virtual {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1891
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1893
    :goto_0
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1894
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1895
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UserSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1898
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1903
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1118
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    return-object v0
.end method

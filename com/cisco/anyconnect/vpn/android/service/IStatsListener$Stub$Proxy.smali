.class Lcom/cisco/anyconnect/vpn/android/service/IStatsListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IStatsListener.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/IStatsListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/IStatsListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public StatsCB(Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.anyconnect.vpn.android.service.IStatsListener"

    .line 109
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {p1, v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    :goto_0
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/IStatsListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IStatsListener$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 119
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/IStatsListener$Stub;->getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;->StatsCB(Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 122
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 127
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/IStatsListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.cisco.anyconnect.vpn.android.service.IStatsListener"

    return-object v0
.end method

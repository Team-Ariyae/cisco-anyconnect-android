.class Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkComponentHostService.java"

# interfaces
.implements Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    iput-object p1, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public GetAllComponentInfo()[Lcom/cisco/android/nchs/aidl/NativeComponentInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1060
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 1063
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1064
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1065
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1066
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetAllComponentInfo()[Lcom/cisco/android/nchs/aidl/NativeComponentInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1068
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1069
    sget-object v2, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/cisco/android/nchs/aidl/NativeComponentInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1074
    throw v2
.end method

.method public GetNCHSState(Lcom/cisco/android/nchs/aidl/NCHSStateParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1028
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1029
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 1032
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1033
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1034
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1035
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetNCHSState(Lcom/cisco/android/nchs/aidl/NCHSStateParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1037
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1038
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1039
    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1044
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1045
    invoke-virtual {p1, v1}, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1049
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception p1

    .line 1049
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1051
    throw p1
.end method

.method public GetNCSS()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 1210
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1211
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1212
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1213
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetNCSS()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1215
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1216
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1221
    throw v2
.end method

.method public GetNativeServiceState(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 755
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 759
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 761
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 762
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 763
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 764
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetNativeServiceState(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 766
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 767
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 768
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 773
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    .line 774
    invoke-virtual {p3, v1}, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 778
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 780
    throw p1
.end method

.method public GetNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/StringBuilderParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 888
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 891
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 892
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 893
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 894
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 895
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 896
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/StringBuilderParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 898
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 899
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 900
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 905
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    .line 906
    invoke-virtual {p3, v1}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 910
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 910
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 912
    throw p1
.end method

.method public InstallNetworkComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 627
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 630
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 636
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 637
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->InstallNetworkComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 639
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 640
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 641
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 648
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 650
    throw p1
.end method

.method public IsDeviceInfoAvailable()Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1082
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 1086
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1087
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1088
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1089
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->IsDeviceInfoAvailable()Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1091
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1092
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1093
    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1100
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1102
    throw v2
.end method

.method public IsNativeServiceRunning(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 791
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 794
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 795
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 797
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 798
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 799
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->IsNativeServiceRunning(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 801
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 802
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 803
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 810
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 812
    throw p1
.end method

.method public IsNetworkComponentInstalled(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 825
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 827
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 828
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 829
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->IsNetworkComponentInstalled(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 831
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 832
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 833
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 840
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 840
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 842
    throw p1
.end method

.method public RegisterShutdownListener(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 1116
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1118
    invoke-interface {p2}, Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1119
    iget-object v3, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1120
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1121
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->RegisterShutdownListener(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1123
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1124
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 1125
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1132
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception p1

    .line 1132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1134
    throw p1
.end method

.method public SetDisplayNotifications(Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 970
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 971
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 973
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 974
    iget-object v3, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 975
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 976
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->SetDisplayNotifications(Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 978
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 979
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 980
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 987
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 987
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 989
    throw p1
.end method

.method public SetNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 853
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 857
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 858
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 860
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 861
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 862
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 863
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->SetNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 865
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 866
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 867
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 874
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 876
    throw p1
.end method

.method public SetUserPreference(Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 997
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 1001
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1003
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1004
    iget-object v3, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1005
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1006
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->SetUserPreference(Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1008
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1009
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 1010
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 1017
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1019
    throw p1
.end method

.method public ShutdownService(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 1180
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1183
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1184
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1185
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->ShutdownService(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1187
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1188
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 1189
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1196
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1196
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1198
    throw p1
.end method

.method public StartNativeService(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 694
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 696
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 697
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 698
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 699
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->StartNativeService(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 701
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 702
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 703
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 710
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 710
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 712
    throw p1
.end method

.method public StartVpnAgent()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 1230
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1231
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1232
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1233
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->StartVpnAgent()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1235
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1236
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1239
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1241
    throw v2
.end method

.method public StopNativeService(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 723
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 726
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 727
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 729
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 730
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 731
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->StopNativeService(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 733
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 734
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 735
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 742
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 742
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 744
    throw p1
.end method

.method public UninstallNetworkComponent(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 663
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 665
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 666
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 667
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->UninstallNetworkComponent(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 669
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 670
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 671
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 678
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 680
    throw p1
.end method

.method public UnregisterShutdownListener(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 1148
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1150
    invoke-interface {p2}, Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1151
    iget-object v3, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1152
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1153
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->UnregisterShutdownListener(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1155
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1156
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 1157
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1164
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception p1

    .line 1164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1166
    throw p1
.end method

.method public UpdateComponentState(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSStateParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 923
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 924
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 927
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 928
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 929
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    .line 931
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    invoke-virtual {p3, v0, v2}, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 935
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    :goto_0
    iget-object v3, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 938
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 939
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->UpdateComponentState(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSStateParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 941
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 942
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 943
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 950
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 952
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    return-object v0
.end method

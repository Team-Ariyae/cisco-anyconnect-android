.class Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkComponentSupportService.java"

# interfaces
.implements Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput-object p1, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public EnableYubikey(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentSupportService"

    .line 1151
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1152
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1153
    iget-object v3, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1154
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1155
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->EnableYubikey(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1158
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1163
    throw p1
.end method

.method public GetACCerts(ZLjava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/CertificateChain;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1084
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentSupportService"

    .line 1088
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1089
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1092
    iget-object v3, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1093
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1094
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->GetACCerts(ZLjava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/CertificateChain;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1096
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1097
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 1098
    sget-object p1, Lcom/cisco/android/nchs/aidl/CertificateChain;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/CertificateChain;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 1105
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1107
    throw p1
.end method

.method public GetAliasList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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

    .line 1041
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1042
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentSupportService"

    .line 1045
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1047
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1048
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1049
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->GetAliasList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1051
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1052
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1057
    throw p1
.end method

.method public GetDeviceID()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentSupportService"

    .line 1020
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1021
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1022
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1023
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->GetDeviceID()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1025
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1026
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1031
    throw v2
.end method

.method public ImportKeychainAlias(Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentSupportService"

    .line 692
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 694
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    invoke-virtual {p1, v0, v2}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 698
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 702
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 703
    iget-object v3, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 704
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 705
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->ImportKeychainAlias(Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 707
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 708
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 713
    throw p1
.end method

.method public ImportPKCS12ClientCertificates(Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;[BLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v6, p5

    .line 639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    :try_start_0
    const-string v1, "com.cisco.android.nchs.aidl.INetworkComponentSupportService"

    .line 643
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    invoke-virtual {p1, v9, v2}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 649
    :cond_0
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    move-object v3, p2

    .line 651
    invoke-virtual {v9, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v4, p3

    .line 652
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v5, p4

    .line 653
    invoke-virtual {v9, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz v6, :cond_1

    .line 655
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    invoke-virtual {v6, v9, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 659
    :cond_1
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    move-object/from16 v7, p6

    .line 661
    invoke-virtual {v9, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v8, p7

    .line 662
    invoke-virtual {v9, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v11, p0

    .line 663
    :try_start_1
    iget-object v1, v11, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v12, 0x2

    invoke-interface {v1, v12, v9, v10, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 664
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 665
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->ImportPKCS12ClientCertificates(Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;[BLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 671
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 667
    :cond_2
    :try_start_2
    invoke-virtual {v10}, Landroid/os/Parcel;->readException()V

    .line 668
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 671
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v11, p0

    .line 671
    :goto_2
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 673
    throw v0
.end method

.method public ImportServerCertificate(Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;Lcom/cisco/android/nchs/aidl/ByteArrayParcel;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    move-object v3, p2

    move-object/from16 v5, p4

    .line 893
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    :try_start_0
    const-string v1, "com.cisco.android.nchs.aidl.INetworkComponentSupportService"

    .line 897
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 900
    invoke-virtual {p1, v8, v2}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 903
    :cond_0
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz v3, :cond_1

    .line 906
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    invoke-virtual {p2, v8, v2}, Lcom/cisco/android/nchs/aidl/ByteArrayParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 910
    :cond_1
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    move-object v4, p3

    .line 912
    invoke-virtual {v8, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz v5, :cond_2

    .line 914
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    invoke-virtual {v5, v8, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 918
    :cond_2
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    move-object/from16 v6, p5

    .line 920
    invoke-virtual {v8, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v7, p6

    .line 921
    invoke-virtual {v8, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v10, p0

    .line 922
    :try_start_1
    iget-object v1, v10, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v11, 0x8

    invoke-interface {v1, v11, v8, v9, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 923
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 924
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->ImportServerCertificate(Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;Lcom/cisco/android/nchs/aidl/ByteArrayParcel;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 930
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 931
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 926
    :cond_3
    :try_start_2
    invoke-virtual {v9}, Landroid/os/Parcel;->readException()V

    .line 927
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 930
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 931
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v10, p0

    .line 930
    :goto_3
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 931
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 932
    throw v0
.end method

.method public ImportServerCertificateChain(Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;Lcom/cisco/android/nchs/aidl/CertificateChain;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 840
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentSupportService"

    .line 844
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 846
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    invoke-virtual {p1, v0, v3}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 850
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 853
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    invoke-virtual {p2, v0, v3}, Lcom/cisco/android/nchs/aidl/CertificateChain;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 857
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 860
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 861
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 862
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 863
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->ImportServerCertificateChain(Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;Lcom/cisco/android/nchs/aidl/CertificateChain;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 865
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 866
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 867
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 874
    :goto_2
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

.method public RequestClientCertFromSystem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/IImportClientCertCB;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 592
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentSupportService"

    .line 595
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    .line 599
    invoke-interface {p4}, Lcom/cisco/android/nchs/aidl/IImportClientCertCB;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 600
    iget-object v3, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 601
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 602
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->RequestClientCertFromSystem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/IImportClientCertCB;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 604
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 605
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 606
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception p1

    .line 613
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 615
    throw p1
.end method

.method public SafeActivated()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1066
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1067
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentSupportService"

    .line 1069
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1070
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1071
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1072
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->SafeActivated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1079
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1075
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1078
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1079
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1078
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1079
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1080
    throw v2
.end method

.method public VerifyServerCertificateChain(Lcom/cisco/android/nchs/aidl/CertificateChain;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 985
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentSupportService"

    .line 988
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 990
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 991
    invoke-virtual {p1, v0, v2}, Lcom/cisco/android/nchs/aidl/CertificateChain;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 994
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 996
    :goto_0
    iget-object v3, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 997
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 998
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->VerifyServerCertificateChain(Lcom/cisco/android/nchs/aidl/CertificateChain;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1000
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1001
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1004
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1004
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1006
    throw p1
.end method

.method public VerifyServerCertificateChainForHostname(Lcom/cisco/android/nchs/aidl/CertificateChain;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 947
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentSupportService"

    .line 951
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 953
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    invoke-virtual {p1, v0, v2}, Lcom/cisco/android/nchs/aidl/CertificateChain;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 957
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 960
    iget-object v3, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 961
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 962
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->VerifyServerCertificateChainForHostname(Lcom/cisco/android/nchs/aidl/CertificateChain;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 964
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 965
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 970
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public deleteCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentSupportService"

    .line 769
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    .line 774
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    invoke-virtual {p4, v0, v3}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 778
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    :goto_0
    iget-object v4, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 781
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 782
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->deleteCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 784
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 785
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 788
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 790
    throw p1
.end method

.method public deleteCertificates(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentSupportService"

    .line 731
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    .line 736
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    invoke-virtual {p4, v0, v3}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 740
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    :goto_0
    iget-object v4, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x4

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 743
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 744
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->deleteCertificates(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 746
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 747
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 750
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 752
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.cisco.android.nchs.aidl.INetworkComponentSupportService"

    return-object v0
.end method

.method public handleClientCertRequest(Ljava/util/List;Ljava/util/List;)Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentSupportService"

    .line 1123
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1125
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1126
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1127
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1128
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->handleClientCertRequest(Ljava/util/List;Ljava/util/List;)Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1139
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1130
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1131
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 1132
    sget-object p1, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1139
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1139
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1141
    throw p1
.end method

.method public isCertificateInstalled(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentSupportService"

    .line 805
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 808
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    invoke-virtual {p2, v0, v3}, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 812
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    :goto_0
    iget-object v4, p0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x6

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 815
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 816
    invoke-static {}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->isCertificateInstalled(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 818
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 819
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 822
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 824
    throw p1
.end method

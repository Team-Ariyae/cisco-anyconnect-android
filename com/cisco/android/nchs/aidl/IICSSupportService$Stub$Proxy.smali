.class Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IICSSupportService.java"

# interfaces
.implements Lcom/cisco/android/nchs/aidl/IICSSupportService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/cisco/android/nchs/aidl/IICSSupportService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p1, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addAddress(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 455
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 459
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 460
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->addAddress(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 462
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 463
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 466
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 468
    throw p1
.end method

.method public addAppIds(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 767
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 770
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 772
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 773
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 774
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->addAppIds(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 776
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 777
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 780
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 782
    throw p1
.end method

.method public addDnsServer(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 477
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 480
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 481
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->addDnsServer(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 483
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 484
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 487
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 489
    throw p1
.end method

.method public addRoute(Ljava/lang/String;IZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 498
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 501
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    iget-object v4, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x6

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 503
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 504
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->addRoute(Ljava/lang/String;IZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 506
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 507
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 510
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 512
    throw p1
.end method

.method public addSearchDomain(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 521
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 523
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 524
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 525
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->addSearchDomain(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 527
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 528
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 531
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 533
    throw p1
.end method

.method public allowFamily(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 676
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 680
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 683
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 684
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->allowFamily(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 686
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 687
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 690
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 692
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public establish()Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 542
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 543
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 544
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 545
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 547
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 548
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 556
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 558
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.cisco.android.nchs.aidl.IICSSupportService"

    return-object v0
.end method

.method public isIPv4SplitExcludeFailed()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 791
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 792
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 793
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 794
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->isIPv4SplitExcludeFailed()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 796
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 797
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 800
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 802
    throw v2
.end method

.method public isIPv6SplitExcludeFailed()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 811
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 812
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 813
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 814
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->isIPv6SplitExcludeFailed()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 816
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 817
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 820
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 822
    throw v2
.end method

.method public isKnoxManagedAppTunnel()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 747
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 750
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 751
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 752
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 753
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->isKnoxManagedAppTunnel()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 755
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 756
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 759
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 759
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 761
    throw v2
.end method

.method public isKnoxMetaEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 723
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 724
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 727
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 728
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 729
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 730
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->isKnoxMetaEnabled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 732
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 733
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 736
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 736
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 738
    throw v2
.end method

.method public prepare()Landroid/content/Intent;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 385
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 387
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 388
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->prepare()Landroid/content/Intent;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 390
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 399
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    throw v2
.end method

.method public protect(Landroid/os/ParcelFileDescriptor;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 425
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 428
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 430
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    invoke-virtual {p1, v0, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 434
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    :goto_0
    iget-object v4, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 437
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 438
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->protect(Landroid/os/ParcelFileDescriptor;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 440
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 441
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 444
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 446
    throw p1
.end method

.method public restore()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 409
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 410
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 411
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 412
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 415
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 420
    throw v2
.end method

.method public setConfigureIntent(Landroid/app/PendingIntent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 563
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 567
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 569
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    invoke-virtual {p1, v0, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 573
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    :goto_0
    iget-object v4, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x9

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 576
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 577
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->setConfigureIntent(Landroid/app/PendingIntent;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 579
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 580
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 583
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 585
    throw p1
.end method

.method public setDirectProxy(Ljava/lang/String;ILjava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
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

    .line 632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 636
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 640
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 641
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 642
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->setDirectProxy(Ljava/lang/String;ILjava/util/List;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 644
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 645
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 648
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 650
    throw p1
.end method

.method public setKnoxParams(Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 703
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 705
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    iget-object v3, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 707
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 708
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->setKnoxParams(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 711
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 716
    throw p1
.end method

.method public setMtu(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 594
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 597
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 598
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->setMtu(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 600
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 601
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 604
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 606
    throw p1
.end method

.method public setPACProxy(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 656
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 659
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 661
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 662
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 663
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->setPACProxy(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 665
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 666
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 669
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 671
    throw p1
.end method

.method public setSession(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 615
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 617
    iget-object v2, p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 618
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 619
    invoke-static {}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService;->setSession(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 621
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 622
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 625
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 627
    throw p1
.end method

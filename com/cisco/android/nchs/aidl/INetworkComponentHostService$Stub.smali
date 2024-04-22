.class public abstract Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;
.super Landroid/os/Binder;
.source "INetworkComponentHostService.java"

# interfaces
.implements Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.cisco.android.nchs.aidl.INetworkComponentHostService"

.field static final TRANSACTION_GetAllComponentInfo:I = 0xe

.field static final TRANSACTION_GetNCHSState:I = 0xd

.field static final TRANSACTION_GetNCSS:I = 0x13

.field static final TRANSACTION_GetNativeServiceState:I = 0x5

.field static final TRANSACTION_GetNetworkComponentProperty:I = 0x9

.field static final TRANSACTION_InstallNetworkComponent:I = 0x1

.field static final TRANSACTION_IsDeviceInfoAvailable:I = 0xf

.field static final TRANSACTION_IsNativeServiceRunning:I = 0x6

.field static final TRANSACTION_IsNetworkComponentInstalled:I = 0x7

.field static final TRANSACTION_RegisterShutdownListener:I = 0x10

.field static final TRANSACTION_SetDisplayNotifications:I = 0xb

.field static final TRANSACTION_SetNetworkComponentProperty:I = 0x8

.field static final TRANSACTION_SetUserPreference:I = 0xc

.field static final TRANSACTION_ShutdownService:I = 0x12

.field static final TRANSACTION_StartNativeService:I = 0x3

.field static final TRANSACTION_StartVpnAgent:I = 0x14

.field static final TRANSACTION_StopNativeService:I = 0x4

.field static final TRANSACTION_UninstallNetworkComponent:I = 0x2

.field static final TRANSACTION_UnregisterShutdownListener:I = 0x11

.field static final TRANSACTION_UpdateComponentState:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 201
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 202
    invoke-virtual {p0, p0, v0}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    .line 213
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    instance-of v1, v0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-eqz v1, :cond_1

    .line 215
    check-cast v0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    return-object v0

    .line 217
    :cond_1
    new-instance v0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;
    .locals 1

    .line 1280
    sget-object v0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->sDefaultImpl:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)Z
    .locals 1

    .line 1270
    sget-object v0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->sDefaultImpl:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 1274
    sput-object p0, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub$Proxy;->sDefaultImpl:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1271
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    if-eq p1, v0, :cond_15

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 595
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 587
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->StartVpnAgent()Z

    move-result p1

    .line 589
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 579
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->GetNCSS()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object p1

    .line 581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 582
    invoke-interface {p1}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 561
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 566
    invoke-virtual {p0, p1, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->ShutdownService(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    .line 567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 569
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    invoke-virtual {p1, p3, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 573
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 543
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/cisco/android/nchs/aidl/INCHSShutdownListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;

    move-result-object p2

    .line 548
    invoke-virtual {p0, p1, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->UnregisterShutdownListener(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    .line 549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 551
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    invoke-virtual {p1, p3, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 555
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 525
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/cisco/android/nchs/aidl/INCHSShutdownListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;

    move-result-object p2

    .line 530
    invoke-virtual {p0, p1, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->RegisterShutdownListener(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    .line 531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 533
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    invoke-virtual {p1, p3, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 537
    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 511
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->IsDeviceInfoAvailable()Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    .line 513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 515
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    invoke-virtual {p1, p3, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 519
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1

    .line 503
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->GetAllComponentInfo()[Lcom/cisco/android/nchs/aidl/NativeComponentInfo;

    move-result-object p1

    .line 505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v1

    .line 480
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    new-instance p1, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;

    invoke-direct {p1}, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;-><init>()V

    .line 483
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->GetNCHSState(Lcom/cisco/android/nchs/aidl/NCHSStateParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p2

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p2, :cond_5

    .line 486
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    invoke-virtual {p2, p3, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 490
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    :goto_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    invoke-virtual {p1, p3, v1}, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;->writeToParcel(Landroid/os/Parcel;I)V

    return v1

    .line 462
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    goto :goto_5

    :cond_6
    const/4 p2, 0x0

    .line 467
    :goto_5
    invoke-virtual {p0, p1, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->SetUserPreference(Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_7

    .line 470
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    invoke-virtual {p1, p3, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 474
    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v1

    .line 442
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_8

    const/4 p2, 0x1

    goto :goto_7

    :cond_8
    const/4 p2, 0x0

    .line 449
    :goto_7
    invoke-virtual {p0, p1, p4, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->SetDisplayNotifications(Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_9

    .line 452
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    invoke-virtual {p1, p3, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 456
    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v1

    .line 417
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 424
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;

    .line 429
    :cond_a
    invoke-virtual {p0, p1, p4, v0}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->UpdateComponentState(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSStateParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    .line 430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_b

    .line 432
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    invoke-virtual {p1, p3, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 436
    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v1

    .line 390
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 396
    new-instance p4, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;

    invoke-direct {p4}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;-><init>()V

    .line 397
    invoke-virtual {p0, p1, p2, p4}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->GetNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/StringBuilderParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_c

    .line 400
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    invoke-virtual {p1, p3, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 404
    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    :goto_a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    invoke-virtual {p4, p3, v1}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;->writeToParcel(Landroid/os/Parcel;I)V

    return v1

    .line 370
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 377
    invoke-virtual {p0, p1, p4, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->SetNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_d

    .line 380
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    invoke-virtual {p1, p3, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 384
    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    return v1

    .line 354
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 357
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->IsNetworkComponentInstalled(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_e

    .line 360
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    invoke-virtual {p1, p3, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 364
    :cond_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    return v1

    .line 336
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 341
    invoke-virtual {p0, p1, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->IsNativeServiceRunning(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_f

    .line 344
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    invoke-virtual {p1, p3, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    .line 348
    :cond_f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    return v1

    .line 309
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 315
    new-instance p4, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;

    invoke-direct {p4}, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;-><init>()V

    .line 316
    invoke-virtual {p0, p1, p2, p4}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->GetNativeServiceState(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_10

    .line 319
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    invoke-virtual {p1, p3, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 323
    :cond_10
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    :goto_e
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    invoke-virtual {p4, p3, v1}, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;->writeToParcel(Landroid/os/Parcel;I)V

    return v1

    .line 291
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 296
    invoke-virtual {p0, p1, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->StopNativeService(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_11

    .line 299
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    invoke-virtual {p1, p3, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_f

    .line 303
    :cond_11
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f
    return v1

    .line 273
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 278
    invoke-virtual {p0, p1, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->StartNativeService(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_12

    .line 281
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    invoke-virtual {p1, p3, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_10

    .line 285
    :cond_12
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_10
    return v1

    .line 257
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->UninstallNetworkComponent(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_13

    .line 263
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    invoke-virtual {p1, p3, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_11

    .line 267
    :cond_13
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_11
    return v1

    .line 235
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 244
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->InstallNetworkComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_14

    .line 247
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    invoke-virtual {p1, p3, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 251
    :cond_14
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_12
    return v1

    .line 230
    :cond_15
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public abstract Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;
.super Landroid/os/Binder;
.source "INetworkComponentSupportService.java"

# interfaces
.implements Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.cisco.android.nchs.aidl.INetworkComponentSupportService"

.field static final TRANSACTION_EnableYubikey:I = 0x10

.field static final TRANSACTION_GetACCerts:I = 0xe

.field static final TRANSACTION_GetAliasList:I = 0xc

.field static final TRANSACTION_GetDeviceID:I = 0xb

.field static final TRANSACTION_ImportKeychainAlias:I = 0x3

.field static final TRANSACTION_ImportPKCS12ClientCertificates:I = 0x2

.field static final TRANSACTION_ImportServerCertificate:I = 0x8

.field static final TRANSACTION_ImportServerCertificateChain:I = 0x7

.field static final TRANSACTION_RequestClientCertFromSystem:I = 0x1

.field static final TRANSACTION_SafeActivated:I = 0xd

.field static final TRANSACTION_VerifyServerCertificateChain:I = 0xa

.field static final TRANSACTION_VerifyServerCertificateChainForHostname:I = 0x9

.field static final TRANSACTION_deleteCertificate:I = 0x5

.field static final TRANSACTION_deleteCertificates:I = 0x4

.field static final TRANSACTION_handleClientCertRequest:I = 0xf

.field static final TRANSACTION_isCertificateInstalled:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 217
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.cisco.android.nchs.aidl.INetworkComponentSupportService"

    .line 218
    invoke-virtual {p0, p0, v0}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.cisco.android.nchs.aidl.INetworkComponentSupportService"

    .line 229
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 230
    instance-of v1, v0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    if-eqz v1, :cond_1

    .line 231
    check-cast v0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    return-object v0

    .line 233
    :cond_1
    new-instance v0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;
    .locals 1

    .line 1197
    sget-object v0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;->sDefaultImpl:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;)Z
    .locals 1

    .line 1187
    sget-object v0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;->sDefaultImpl:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 1191
    sput-object p0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub$Proxy;->sDefaultImpl:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1188
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
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v8, p0

    move v0, p1

    move-object v1, p2

    move-object/from16 v9, p3

    const v2, 0x5f4e5446

    const/4 v10, 0x1

    const-string v3, "com.cisco.android.nchs.aidl.INetworkComponentSupportService"

    if-eq v0, v2, :cond_13

    const/4 v2, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 556
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 547
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 550
    :cond_0
    invoke-virtual {p0, v2}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->EnableYubikey(Z)V

    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 529
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 534
    invoke-virtual {p0, v0, v1}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->handleClientCertRequest(Ljava/util/List;Ljava/util/List;)Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;

    move-result-object v0

    .line 535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1

    .line 537
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    invoke-virtual {v0, v9, v10}, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 541
    :cond_1
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v10

    .line 509
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 513
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-virtual {p0, v0, v3, v1}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->GetACCerts(ZLjava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/CertificateChain;

    move-result-object v0

    .line 517
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3

    .line 519
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    invoke-virtual {v0, v9, v10}, Lcom/cisco/android/nchs/aidl/CertificateChain;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 523
    :cond_3
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v10

    .line 502
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->SafeActivated()V

    .line 504
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 492
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-virtual {p0, v0}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->GetAliasList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v10

    .line 484
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->GetDeviceID()Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    .line 469
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 472
    sget-object v0, Lcom/cisco/android/nchs/aidl/CertificateChain;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/cisco/android/nchs/aidl/CertificateChain;

    .line 477
    :cond_4
    invoke-virtual {p0, v4}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->VerifyServerCertificateChain(Lcom/cisco/android/nchs/aidl/CertificateChain;)I

    move-result v0

    .line 478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    .line 452
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 455
    sget-object v0, Lcom/cisco/android/nchs/aidl/CertificateChain;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/cisco/android/nchs/aidl/CertificateChain;

    .line 461
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-virtual {p0, v4, v0}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->VerifyServerCertificateChainForHostname(Lcom/cisco/android/nchs/aidl/CertificateChain;Ljava/lang/String;)I

    move-result v0

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    .line 417
    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 420
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;

    move-object v2, v0

    goto :goto_3

    :cond_6
    move-object v2, v4

    .line 426
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 427
    sget-object v0, Lcom/cisco/android/nchs/aidl/ByteArrayParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/android/nchs/aidl/ByteArrayParcel;

    move-object v3, v0

    goto :goto_4

    :cond_7
    move-object v3, v4

    .line 433
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 436
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    move-object v4, v0

    .line 442
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, v7

    .line 445
    invoke-virtual/range {v0 .. v6}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->ImportServerCertificate(Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;Lcom/cisco/android/nchs/aidl/ByteArrayParcel;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 446
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    .line 385
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 388
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;

    goto :goto_5

    :cond_9
    move-object v0, v4

    .line 394
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 395
    sget-object v3, Lcom/cisco/android/nchs/aidl/CertificateChain;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/cisco/android/nchs/aidl/CertificateChain;

    .line 401
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-virtual {p0, v0, v4, v3, v1}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->ImportServerCertificateChain(Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;Lcom/cisco/android/nchs/aidl/CertificateChain;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object v0

    .line 405
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_b

    .line 407
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    invoke-virtual {v0, v9, v10}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 411
    :cond_b
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v10

    .line 368
    :pswitch_a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    .line 373
    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;

    .line 378
    :cond_c
    invoke-virtual {p0, v0, v4}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->isCertificateInstalled(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;)Z

    move-result v0

    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    .line 347
    :pswitch_b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    .line 356
    sget-object v4, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;

    .line 361
    :cond_d
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->deleteCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;)Z

    move-result v0

    .line 362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    .line 326
    :pswitch_c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    .line 335
    sget-object v4, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;

    .line 340
    :cond_e
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->deleteCertificates(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;)Z

    move-result v0

    .line 341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    .line 305
    :pswitch_d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 308
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;

    .line 314
    :cond_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-virtual {p0, v4, v0, v2, v1}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->ImportKeychainAlias(Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    .line 273
    :pswitch_e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 276
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;

    move-object v2, v0

    goto :goto_7

    :cond_10
    move-object v2, v4

    .line 282
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 289
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    move-object v7, v0

    goto :goto_8

    :cond_11
    move-object v7, v4

    .line 295
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v11

    move-object v7, v12

    .line 298
    invoke-virtual/range {v0 .. v7}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->ImportPKCS12ClientCertificates(Lcom/cisco/android/nchs/aidl/NCHSCertStoreParcel;[BLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    .line 251
    :pswitch_f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/cisco/android/nchs/aidl/IImportClientCertCB$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/IImportClientCertCB;

    move-result-object v1

    .line 260
    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->RequestClientCertFromSystem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/IImportClientCertCB;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object v0

    .line 261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_12

    .line 263
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    invoke-virtual {v0, v9, v10}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 267
    :cond_12
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v10

    .line 246
    :cond_13
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

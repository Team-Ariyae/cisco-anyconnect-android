.class public abstract Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;
.super Landroid/os/Binder;
.source "IPrivateVpnService.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.service.IPrivateVpnService"

.field static final TRANSACTION_Connect:I = 0x1

.field static final TRANSACTION_Disconnect:I = 0x2

.field static final TRANSACTION_GetActiveConnection:I = 0x13

.field static final TRANSACTION_GetSetting:I = 0x3

.field static final TRANSACTION_ImportServerCert:I = 0x12

.field static final TRANSACTION_IsRevocationEnabled:I = 0xc

.field static final TRANSACTION_IsSettingUserControllable:I = 0x4

.field static final TRANSACTION_RegisterSettingListener:I = 0x7

.field static final TRANSACTION_SetDefaultSetting:I = 0x9

.field static final TRANSACTION_SetRevocationEnabled:I = 0xb

.field static final TRANSACTION_SetSetting:I = 0x5

.field static final TRANSACTION_SetSettingUserControllable:I = 0x6

.field static final TRANSACTION_SetStrictMode:I = 0xa

.field static final TRANSACTION_ShowKnoxReconnectNotification:I = 0x11

.field static final TRANSACTION_UnregisterSettingListener:I = 0x8

.field static final TRANSACTION_getBlockedApps:I = 0xe

.field static final TRANSACTION_getDisconnectClientType:I = 0x10

.field static final TRANSACTION_getTunneledApps:I = 0xd

.field static final TRANSACTION_isDisconnected:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 180
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.cisco.anyconnect.vpn.android.service.IPrivateVpnService"

    .line 181
    invoke-virtual {p0, p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.cisco.anyconnect.vpn.android.service.IPrivateVpnService"

    .line 192
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    instance-of v1, v0, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    if-eqz v1, :cond_1

    .line 194
    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    return-object v0

    .line 196
    :cond_1
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;
    .locals 1

    .line 974
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;)Z
    .locals 1

    .line 964
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 968
    sput-object p0, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 965
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.cisco.anyconnect.vpn.android.service.IPrivateVpnService"

    if-eq p1, v0, :cond_8

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 421
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 407
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;->GetActiveConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p1

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 411
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    invoke-virtual {p1, p3, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 415
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 398
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 401
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;->ImportServerCert([B)V

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 389
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 392
    :cond_1
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;->ShowKnoxReconnectNotification(Z)V

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 381
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;->getDisconnectClientType()I

    move-result p1

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 373
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;->isDisconnected()Z

    move-result p1

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 365
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;->getBlockedApps()Ljava/util/List;

    move-result-object p1

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 357
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;->getTunneledApps()Ljava/util/List;

    move-result-object p1

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 349
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;->IsRevocationEnabled()Z

    move-result p1

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 339
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 342
    :cond_2
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;->SetRevocationEnabled(Z)Z

    move-result p1

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 329
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 332
    :cond_3
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;->SetStrictMode(Z)Z

    move-result p1

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 319
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;->SetDefaultSetting(Ljava/lang/String;)Z

    move-result p1

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 309
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/ISettingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;

    move-result-object p1

    .line 312
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;->UnregisterSettingListener(Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;)Z

    move-result p1

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 299
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/ISettingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;

    move-result-object p1

    .line 302
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;->RegisterSettingListener(Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;)Z

    move-result p1

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 287
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    .line 292
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;->SetSettingUserControllable(Ljava/lang/String;Z)Z

    move-result p1

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 275
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;->SetSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 265
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;->IsSettingUserControllable(Ljava/lang/String;)Z

    move-result p1

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 253
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 258
    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;->GetSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 237
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 240
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;->Disconnect(I)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 243
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    invoke-virtual {p1, p3, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 247
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 214
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 217
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    .line 223
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;->Connect(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;I)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_7

    .line 227
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    invoke-virtual {p1, p3, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 231
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1

    .line 209
    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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

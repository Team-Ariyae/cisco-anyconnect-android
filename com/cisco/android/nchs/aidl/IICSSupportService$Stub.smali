.class public abstract Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;
.super Landroid/os/Binder;
.source "IICSSupportService.java"

# interfaces
.implements Lcom/cisco/android/nchs/aidl/IICSSupportService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/aidl/IICSSupportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.cisco.android.nchs.aidl.IICSSupportService"

.field static final TRANSACTION_addAddress:I = 0x4

.field static final TRANSACTION_addAppIds:I = 0x12

.field static final TRANSACTION_addDnsServer:I = 0x5

.field static final TRANSACTION_addRoute:I = 0x6

.field static final TRANSACTION_addSearchDomain:I = 0x7

.field static final TRANSACTION_allowFamily:I = 0xe

.field static final TRANSACTION_establish:I = 0x8

.field static final TRANSACTION_isIPv4SplitExcludeFailed:I = 0x13

.field static final TRANSACTION_isIPv6SplitExcludeFailed:I = 0x14

.field static final TRANSACTION_isKnoxManagedAppTunnel:I = 0x11

.field static final TRANSACTION_isKnoxMetaEnabled:I = 0x10

.field static final TRANSACTION_prepare:I = 0x1

.field static final TRANSACTION_protect:I = 0x3

.field static final TRANSACTION_restore:I = 0x2

.field static final TRANSACTION_setConfigureIntent:I = 0x9

.field static final TRANSACTION_setDirectProxy:I = 0xc

.field static final TRANSACTION_setKnoxParams:I = 0xf

.field static final TRANSACTION_setMtu:I = 0xa

.field static final TRANSACTION_setPACProxy:I = 0xd

.field static final TRANSACTION_setSession:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 109
    invoke-virtual {p0, p0, v0}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/IICSSupportService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.cisco.android.nchs.aidl.IICSSupportService"

    .line 120
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    instance-of v1, v0, Lcom/cisco/android/nchs/aidl/IICSSupportService;

    if-eqz v1, :cond_1

    .line 122
    check-cast v0, Lcom/cisco/android/nchs/aidl/IICSSupportService;

    return-object v0

    .line 124
    :cond_1
    new-instance v0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/cisco/android/nchs/aidl/IICSSupportService;
    .locals 1

    .line 861
    sget-object v0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->sDefaultImpl:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/cisco/android/nchs/aidl/IICSSupportService;)Z
    .locals 1

    .line 851
    sget-object v0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->sDefaultImpl:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 855
    sput-object p0, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub$Proxy;->sDefaultImpl:Lcom/cisco/android/nchs/aidl/IICSSupportService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 852
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

    const-string v2, "com.cisco.android.nchs.aidl.IICSSupportService"

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 360
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 352
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->isIPv6SplitExcludeFailed()Z

    move-result p1

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 344
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->isIPv4SplitExcludeFailed()Z

    move-result p1

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 334
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 337
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->addAppIds(Ljava/util/List;)Z

    move-result p1

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 326
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->isKnoxManagedAppTunnel()Z

    move-result p1

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 318
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->isKnoxMetaEnabled()Z

    move-result p1

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 307
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    .line 312
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->setKnoxParams(Ljava/lang/String;Z)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 297
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 300
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->allowFamily(I)Z

    move-result p1

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 287
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 290
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->setPACProxy(Ljava/lang/String;)Z

    move-result p1

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 273
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p2

    .line 280
    invoke-virtual {p0, p1, p4, p2}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->setDirectProxy(Ljava/lang/String;ILjava/util/List;)Z

    move-result p1

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 263
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 266
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->setSession(Ljava/lang/String;)Z

    move-result p1

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 253
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 256
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->setMtu(I)Z

    move-result p1

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 238
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 241
    sget-object p1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/app/PendingIntent;

    .line 246
    :cond_1
    invoke-virtual {p0, v0}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->setConfigureIntent(Landroid/app/PendingIntent;)Z

    move-result p1

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 224
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 228
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    invoke-virtual {p1, p3, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 214
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->addSearchDomain(Ljava/lang/String;)Z

    move-result p1

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 200
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 v3, 0x1

    .line 207
    :cond_3
    invoke-virtual {p0, p1, p4, v3}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->addRoute(Ljava/lang/String;IZ)Z

    move-result p1

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 190
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->addDnsServer(Ljava/lang/String;)Z

    move-result p1

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 178
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->addAddress(Ljava/lang/String;I)Z

    move-result p1

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 163
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 166
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 171
    :cond_4
    invoke-virtual {p0, v0}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->protect(Landroid/os/ParcelFileDescriptor;)Z

    move-result p1

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 156
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->restore()V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 142
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->prepare()Landroid/content/Intent;

    move-result-object p1

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 146
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 150
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 137
    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

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

.class public abstract Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;
.super Landroid/os/Binder;
.source "IInfoListener.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.service.IInfoListener"

.field static final TRANSACTION_ConnectInProgressCB:I = 0x3

.field static final TRANSACTION_NoticeCB:I = 0x2

.field static final TRANSACTION_StateCB:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.cisco.anyconnect.vpn.android.service.IInfoListener"

    .line 57
    invoke-virtual {p0, p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.cisco.anyconnect.vpn.android.service.IInfoListener"

    .line 68
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    instance-of v1, v0, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    if-eqz v1, :cond_1

    .line 70
    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    return-object v0

    .line 72
    :cond_1
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;
    .locals 1

    .line 268
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z
    .locals 1

    .line 258
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 262
    sput-object p0, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 259
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.cisco.anyconnect.vpn.android.service.IInfoListener"

    if-eq p1, v1, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 85
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 118
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 121
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    .line 126
    :cond_2
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;->ConnectInProgressCB(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 104
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 107
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;

    .line 112
    :cond_4
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;->NoticeCB(Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 90
    :cond_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 93
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    .line 98
    :cond_6
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;->StateCB(Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method

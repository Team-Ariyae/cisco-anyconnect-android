.class public abstract Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;
.super Landroid/os/Binder;
.source "ICertificateListener.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.service.ICertificateListener"

.field static final TRANSACTION_ClientCertificateCB:I = 0x1

.field static final TRANSACTION_ImportPKCS12CompleteCB:I = 0x2

.field static final TRANSACTION_SCEPEnrollExitCB:I = 0x4

.field static final TRANSACTION_SCEPEnrollStartCB:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.cisco.anyconnect.vpn.android.service.ICertificateListener"

    .line 62
    invoke-virtual {p0, p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.cisco.anyconnect.vpn.android.service.ICertificateListener"

    .line 73
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    instance-of v1, v0, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    if-eqz v1, :cond_1

    .line 75
    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    return-object v0

    .line 77
    :cond_1
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;
    .locals 1

    .line 268
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z
    .locals 1

    .line 258
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 262
    sput-object p0, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.cisco.anyconnect.vpn.android.service.ICertificateListener"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 90
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 122
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;->SCEPEnrollExitCB()V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 115
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;->SCEPEnrollStartCB()V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 104
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;->ImportPKCS12CompleteCB([BLjava/lang/String;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 95
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;

    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;->ClientCertificateCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method

.class public abstract Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub;
.super Landroid/os/Binder;
.source "IImportListener.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/IImportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/IImportListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.service.IImportListener"

.field static final TRANSACTION_ImportServerL10nDataCB:I = 0x2

.field static final TRANSACTION_RestoreDefaultL10nDataCB:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.cisco.anyconnect.vpn.android.service.IImportListener"

    .line 41
    invoke-virtual {p0, p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IImportListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.cisco.anyconnect.vpn.android.service.IImportListener"

    .line 52
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    instance-of v1, v0, Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

    if-eqz v1, :cond_1

    .line 54
    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

    return-object v0

    .line 56
    :cond_1
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IImportListener;
    .locals 1

    .line 177
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/cisco/anyconnect/vpn/android/service/IImportListener;)Z
    .locals 1

    .line 167
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 171
    sput-object p0, Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 168
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

    const-string v2, "com.cisco.anyconnect.vpn.android.service.IImportListener"

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 69
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 83
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 86
    :cond_2
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub;->ImportServerL10nDataCB(Z)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 74
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    .line 77
    :cond_4
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub;->RestoreDefaultL10nDataCB(Z)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method

.class public abstract Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService$Stub;
.super Landroid/os/Binder;
.source "IKnoxInteractionService.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.apptunnel.IKnoxInteractionService"

.field static final TRANSACTION_getActiveKnoxProfileName:I = 0x2

.field static final TRANSACTION_getManagedMdmApps:I = 0x3

.field static final TRANSACTION_isKnoxMetaEnabledForActiveConnection:I = 0x4

.field static final TRANSACTION_isMDMInitiatedConnect:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.cisco.anyconnect.vpn.android.apptunnel.IKnoxInteractionService"

    .line 44
    invoke-virtual {p0, p0, v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.cisco.anyconnect.vpn.android.apptunnel.IKnoxInteractionService"

    .line 55
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    instance-of v1, v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;

    if-eqz v1, :cond_1

    .line 57
    check-cast v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;

    return-object v0

    .line 59
    :cond_1
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;
    .locals 1

    .line 234
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;)Z
    .locals 1

    .line 224
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 228
    sput-object p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 225
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

    const-string v1, "com.cisco.anyconnect.vpn.android.apptunnel.IKnoxInteractionService"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 72
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 101
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService$Stub;->isKnoxMetaEnabledForActiveConnection()Z

    move-result p1

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 93
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService$Stub;->getManagedMdmApps()Ljava/util/List;

    move-result-object p1

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 85
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService$Stub;->getActiveKnoxProfileName()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 77
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService$Stub;->isMDMInitiatedConnect()Z

    move-result p1

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.class public abstract Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub;
.super Landroid/os/Binder;
.source "IVpnConnectionList.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.service.IVpnConnectionList"

.field static final TRANSACTION_CreateNew:I = 0x2

.field static final TRANSACTION_Delete:I = 0x3

.field static final TRANSACTION_GetActive:I = 0x6

.field static final TRANSACTION_GetAllNames:I = 0x1

.field static final TRANSACTION_GetConnection:I = 0x7

.field static final TRANSACTION_Save:I = 0x4

.field static final TRANSACTION_SetActive:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.cisco.anyconnect.vpn.android.service.IVpnConnectionList"

    .line 99
    invoke-virtual {p0, p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.cisco.anyconnect.vpn.android.service.IVpnConnectionList"

    .line 110
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    instance-of v1, v0, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    if-eqz v1, :cond_1

    .line 112
    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    return-object v0

    .line 114
    :cond_1
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    .locals 1

    .line 472
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)Z
    .locals 1

    .line 462
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 466
    sput-object p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 463
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

    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnConnectionList"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 202
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p1

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    invoke-virtual {p1, p3, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 194
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub;->GetActive()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 184
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub;->SetActive(Ljava/lang/String;)Z

    move-result p1

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 169
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 172
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 177
    :cond_1
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub;->Save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I

    move-result p1

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 154
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 157
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 162
    :cond_2
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub;->Delete(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z

    move-result p1

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 140
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub;->CreateNew()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p1

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 144
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {p1, p3, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 148
    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 132
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList$Stub;->GetAllNames()Ljava/util/List;

    move-result-object p1

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 127
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

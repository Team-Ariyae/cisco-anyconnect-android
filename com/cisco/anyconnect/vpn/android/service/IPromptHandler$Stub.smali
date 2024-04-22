.class public abstract Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub;
.super Landroid/os/Binder;
.source "IPromptHandler.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.service.IPromptHandler"

.field static final TRANSACTION_BannerCB:I = 0x1

.field static final TRANSACTION_CancelUserPromptCB:I = 0x5

.field static final TRANSACTION_CertBannerCB:I = 0x2

.field static final TRANSACTION_GetStartIntent:I = 0x4

.field static final TRANSACTION_UserPromptCB:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.cisco.anyconnect.vpn.android.service.IPromptHandler"

    .line 102
    invoke-virtual {p0, p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.cisco.anyconnect.vpn.android.service.IPromptHandler"

    .line 113
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    instance-of v1, v0, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    if-eqz v1, :cond_1

    .line 115
    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    return-object v0

    .line 117
    :cond_1
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;
    .locals 1

    .line 407
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z
    .locals 1

    .line 397
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 401
    sput-object p0, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 398
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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.cisco.anyconnect.vpn.android.service.IPromptHandler"

    if-eq p1, v0, :cond_8

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 130
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 189
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub;->CancelUserPromptCB()V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 175
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub;->GetStartIntent()Landroid/content/Intent;

    move-result-object p1

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 179
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 183
    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 161
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 164
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 169
    :goto_1
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub;->UserPromptCB(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 144
    :cond_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_7

    const/4 v5, 0x1

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    .line 154
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    move-object v1, p0

    move-object v3, p1

    .line 155
    invoke-virtual/range {v1 .. v6}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub;->CertBannerCB(Ljava/lang/String;[B[Ljava/lang/String;Z[I)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 135
    :cond_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub;->BannerCB(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method

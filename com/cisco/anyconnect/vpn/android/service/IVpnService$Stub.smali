.class public abstract Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;
.super Landroid/os/Binder;
.source "IVpnService.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/IVpnService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.service.IVpnService"

.field static final TRANSACTION_ClearAppMessages:I = 0x13

.field static final TRANSACTION_Connect:I = 0x18

.field static final TRANSACTION_ConnectWithPrefill:I = 0x19

.field static final TRANSACTION_DeleteCertificates:I = 0x2a

.field static final TRANSACTION_DeleteCurrentProfile:I = 0x26

.field static final TRANSACTION_Disconnect:I = 0x1a

.field static final TRANSACTION_EnableStateNotifications:I = 0x21

.field static final TRANSACTION_EnumerateCertificates:I = 0x29

.field static final TRANSACTION_GetActiveLocale:I = 0x30

.field static final TRANSACTION_GetAnyConnectVersion:I = 0x2b

.field static final TRANSACTION_GetAppMessages:I = 0x12

.field static final TRANSACTION_GetAvailableLocales:I = 0x2f

.field static final TRANSACTION_GetClientCertificates:I = 0x16

.field static final TRANSACTION_GetConnectionList:I = 0x14

.field static final TRANSACTION_GetCurrentProfileContents:I = 0x27

.field static final TRANSACTION_GetErrorString:I = 0x33

.field static final TRANSACTION_GetLastStats:I = 0x22

.field static final TRANSACTION_GetPreferences:I = 0x1e

.field static final TRANSACTION_GetPrivateApi:I = 0x32

.field static final TRANSACTION_GetVpnLogger:I = 0x15

.field static final TRANSACTION_GetVpnServiceVersion:I = 0x1

.field static final TRANSACTION_ImportPKCS12WithPassword:I = 0x24

.field static final TRANSACTION_ImportProfile:I = 0x28

.field static final TRANSACTION_ImportServerL10nData:I = 0x2c

.field static final TRANSACTION_IsConnected:I = 0x17

.field static final TRANSACTION_IsOperatingMode:I = 0x2e

.field static final TRANSACTION_RegisterCertificateListener:I = 0xa

.field static final TRANSACTION_RegisterConnectionListener:I = 0x8

.field static final TRANSACTION_RegisterImportListener:I = 0xe

.field static final TRANSACTION_RegisterInfoListener:I = 0xc

.field static final TRANSACTION_RegisterLogListener:I = 0x6

.field static final TRANSACTION_RegisterPromptHandler:I = 0x10

.field static final TRANSACTION_RegisterServiceStateListener:I = 0x2

.field static final TRANSACTION_RegisterStatsListener:I = 0x4

.field static final TRANSACTION_RequestImportPKCS12:I = 0x23

.field static final TRANSACTION_RestoreDefaultL10nData:I = 0x2d

.field static final TRANSACTION_SavePreferences:I = 0x1f

.field static final TRANSACTION_SetBannerResponse:I = 0x1b

.field static final TRANSACTION_SetCertBannerResponse:I = 0x1c

.field static final TRANSACTION_SetFipsMode:I = 0x31

.field static final TRANSACTION_SetNewTunnelGroup:I = 0x20

.field static final TRANSACTION_ShutdownService:I = 0x25

.field static final TRANSACTION_UnregisterCertificateListener:I = 0xb

.field static final TRANSACTION_UnregisterConnectionListener:I = 0x9

.field static final TRANSACTION_UnregisterImportListener:I = 0xf

.field static final TRANSACTION_UnregisterInfoListener:I = 0xd

.field static final TRANSACTION_UnregisterLogListener:I = 0x7

.field static final TRANSACTION_UnregisterPromptHandler:I = 0x11

.field static final TRANSACTION_UnregisterServiceStateListener:I = 0x3

.field static final TRANSACTION_UnregisterStatsListener:I = 0x5

.field static final TRANSACTION_UserSubmit:I = 0x1d


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 521
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 522
    invoke-virtual {p0, p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    .line 533
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 534
    instance-of v1, v0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    if-eqz v1, :cond_1

    .line 535
    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    return-object v0

    .line 537
    :cond_1
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
    .locals 1

    .line 2600
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)Z
    .locals 1

    .line 2590
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 2594
    sput-object p0, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub$Proxy;->sDefaultImpl:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2591
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

    const-string v2, "com.cisco.anyconnect.vpn.android.service.IVpnService"

    if-eq p1, v0, :cond_14

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1090
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 1093
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 1098
    :cond_0
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetErrorString(Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;)Ljava/lang/String;

    move-result-object p1

    .line 1099
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1082
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object p1

    .line 1084
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 1085
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 1072
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    .line 1075
    :cond_2
    invoke-virtual {p0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->SetFipsMode(Z)Z

    move-result p1

    .line 1076
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1064
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetActiveLocale()Ljava/lang/String;

    move-result-object p1

    .line 1066
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1056
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetAvailableLocales()Ljava/util/List;

    move-result-object p1

    .line 1058
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 1041
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 1044
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;

    .line 1049
    :cond_3
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->IsOperatingMode(Lcom/cisco/anyconnect/vpn/android/service/OperatingModeParcel;)Z

    move-result p1

    .line 1050
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1027
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->RestoreDefaultL10nData()Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    .line 1029
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 1031
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1032
    invoke-virtual {p1, p3, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1035
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 1009
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1013
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1014
    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->ImportServerL10nData(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    .line 1015
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 1017
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1018
    invoke-virtual {p1, p3, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1021
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 1001
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetAnyConnectVersion()Ljava/lang/String;

    move-result-object p1

    .line 1003
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 989
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 993
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p2

    .line 994
    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->DeleteCertificates(ILjava/util/List;)Z

    move-result p1

    .line 995
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 979
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 982
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->EnumerateCertificates(I)Ljava/util/List;

    move-result-object p1

    .line 983
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 967
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 971
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 972
    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->ImportProfile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 973
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 959
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetCurrentProfileContents()Ljava/lang/String;

    move-result-object p1

    .line 961
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 951
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 952
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->DeleteCurrentProfile()Z

    move-result p1

    .line 953
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 942
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 945
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->ShutdownService(Ljava/lang/String;)V

    .line 946
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 924
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 928
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 929
    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->ImportPKCS12WithPassword([BLjava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    .line 930
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    .line 932
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    invoke-virtual {p1, p3, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 936
    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 908
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 911
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->RequestImportPKCS12([B)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    .line 912
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_7

    .line 914
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    invoke-virtual {p1, p3, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 918
    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1

    .line 894
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetLastStats()Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;

    move-result-object p1

    .line 896
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_8

    .line 898
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 899
    invoke-virtual {p1, p3, v1}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 902
    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v1

    .line 885
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    const/4 v3, 0x1

    .line 888
    :cond_9
    invoke-virtual {p0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->EnableStateNotifications(Z)V

    .line 889
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 876
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 879
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->SetNewTunnelGroup(Ljava/lang/String;)V

    .line 880
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 861
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    .line 864
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;

    .line 869
    :cond_a
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->SavePreferences(Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;)Z

    move-result p1

    .line 870
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 847
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetPreferences()Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;

    move-result-object p1

    .line 849
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_b

    .line 851
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    invoke-virtual {p1, p3, v1}, Lcom/cisco/anyconnect/vpn/android/service/PreferenceInfoParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 855
    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v1

    .line 833
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c

    .line 836
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    .line 841
    :cond_c
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->UserSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    .line 842
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 822
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_6

    :cond_d
    const/4 p1, 0x0

    .line 826
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_e

    const/4 v3, 0x1

    .line 827
    :cond_e
    invoke-virtual {p0, p1, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->SetCertBannerResponse(ZZ)V

    .line 828
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 813
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f

    const/4 v3, 0x1

    .line 816
    :cond_f
    invoke-virtual {p0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->SetBannerResponse(Z)V

    .line 817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 806
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->Disconnect()V

    .line 808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 784
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10

    .line 787
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    goto :goto_7

    :cond_10
    move-object p1, v0

    .line 793
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_11

    .line 794
    sget-object p4, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;

    .line 799
    :cond_11
    invoke-virtual {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->ConnectWithPrefill(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;)Z

    move-result p1

    .line 800
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 769
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_12

    .line 772
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 777
    :cond_12
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->Connect(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z

    move-result p1

    .line 778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 761
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->IsConnected()Z

    move-result p1

    .line 763
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 753
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetClientCertificates()Z

    move-result p1

    .line 755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 746
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetVpnLogger()V

    .line 748
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 738
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object p1

    .line 740
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_13

    .line 741
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 731
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->ClearAppMessages()V

    .line 733
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 723
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetAppMessages()Ljava/util/List;

    move-result-object p1

    .line 725
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 713
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    move-result-object p1

    .line 716
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->UnregisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result p1

    .line 717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 703
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    move-result-object p1

    .line 706
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->RegisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result p1

    .line 707
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 693
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

    move-result-object p1

    .line 696
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->UnregisterImportListener(Lcom/cisco/anyconnect/vpn/android/service/IImportListener;)Z

    move-result p1

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 683
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

    move-result-object p1

    .line 686
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->RegisterImportListener(Lcom/cisco/anyconnect/vpn/android/service/IImportListener;)Z

    move-result p1

    .line 687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 673
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    move-result-object p1

    .line 676
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->UnregisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z

    move-result p1

    .line 677
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 663
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    move-result-object p1

    .line 666
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->RegisterInfoListener(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)Z

    move-result p1

    .line 667
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 653
    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    move-result-object p1

    .line 656
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->UnregisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z

    move-result p1

    .line 657
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 643
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    move-result-object p1

    .line 646
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->RegisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z

    move-result p1

    .line 647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 633
    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

    move-result-object p1

    .line 636
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->UnregisterConnectionListener(Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;)Z

    move-result p1

    .line 637
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 623
    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

    move-result-object p1

    .line 626
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->RegisterConnectionListener(Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;)Z

    move-result p1

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 613
    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;

    move-result-object p1

    .line 616
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->UnregisterLogListener(Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;)Z

    move-result p1

    .line 617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 603
    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;

    move-result-object p1

    .line 606
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->RegisterLogListener(Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;)Z

    move-result p1

    .line 607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 593
    :pswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/IStatsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;

    move-result-object p1

    .line 596
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->UnregisterStatsListener(Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;)Z

    move-result p1

    .line 597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 583
    :pswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/IStatsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;

    move-result-object p1

    .line 586
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->RegisterStatsListener(Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;)Z

    move-result p1

    .line 587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 573
    :pswitch_30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;

    move-result-object p1

    .line 576
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->UnregisterServiceStateListener(Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;)Z

    move-result p1

    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 563
    :pswitch_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;

    move-result-object p1

    .line 566
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->RegisterServiceStateListener(Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;)Z

    move-result p1

    .line 567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 555
    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetVpnServiceVersion()I

    move-result p1

    .line 557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 550
    :cond_14
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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

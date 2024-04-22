.class public Lcom/cisco/android/nchs/support/DeviceInfoManager;
.super Ljava/lang/Object;
.source "DeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/android/nchs/support/DeviceInfoManager$NotAvailableException;
    }
.end annotation


# static fields
.field private static final DEVICE_ID_RESTRICTIONS_KEY:Ljava/lang/String; = "vpn_connection_device_id"

.field public static final DEVICE_INFO_PREFS:Ljava/lang/String; = "DeviceInfo"

.field private static final ENTITY_NAME:Ljava/lang/String; = "DeviceInfoManager"

.field private static final KEY_DEVICE_ID_SALTS_FLAG:Ljava/lang/String; = "device-id-salts-flag"

.field private static final KEY_DEVICE_ID_STORED:Ljava/lang/String; = "device_id_stored_portion"

.field private static final KEY_GEN_ID:Ljava/lang/String; = "generated-device-id"

.field private static final KEY_TELEPHONE_ID:Ljava/lang/String; = "telephone-id"

.field private static final KEY_WIFI_ID:Ljava/lang/String; = "wifi-mac"

.field private static final MASK_ANDROID_ID:I = 0x8

.field private static final MASK_MAC_ID:I = 0x2

.field private static final MASK_RANDOM_NUM:I = 0x1

.field private static final MASK_TEL_ID:I = 0x4

.field private static final PROP_CIUS_DEV_ID:Ljava/lang/String; = "vpn.anyconnect.deviceuniqueid"

.field private static final PROP_CIUS_DEV_TYPE:Ljava/lang/String; = "vpn.anyconnect.devicetype"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 116
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "DeviceInfoManager"

    const-string v1, "no context provided"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/cisco/android/nchs/support/DeviceInfoManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private generateRandomID()Ljava/lang/String;
    .locals 5

    .line 170
    iget-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoManager;->mContext:Landroid/content/Context;

    const-string v1, "DeviceInfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "generated-device-id"

    .line 172
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 175
    invoke-static {}, Lcom/cisco/android/nchs/support/CryptoAlgorithms;->GetRandomString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceInfoManager"

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 178
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "random id is not commited"

    invoke-static {v0, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "random id generation failed!"

    invoke-static {v0, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 191
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_0
    return-object v2
.end method

.method private getActiveWifiInterfaceName()Ljava/lang/String;
    .locals 9

    .line 461
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 463
    iget-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 464
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 466
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 469
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 471
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 472
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 474
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAndroidID()Ljava/lang/String;
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLegacyDeviceID()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "vpn.anyconnect.deviceuniqueid"

    .line 549
    invoke-virtual {p0, v0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getCiusProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "device-id-salts-flag"

    .line 555
    invoke-direct {p0, v0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getPreferenceInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    and-int/lit8 v0, v0, 0x8

    const-string v1, ""

    if-lez v0, :cond_2

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getAndroidID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 566
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "device_id_stored_portion"

    invoke-direct {p0, v1}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getPreferenceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/android/nchs/support/CryptoAlgorithms;->hashToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPersistentDeviceId()Ljava/lang/String;
    .locals 1

    .line 513
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getAndroidID()Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/android/nchs/support/CryptoAlgorithms;->sha256HashToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferenceInt(Ljava/lang/String;)I
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoManager;->mContext:Landroid/content/Context;

    const-string v1, "DeviceInfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 250
    :try_start_0
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 255
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error in retrieving preference "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DeviceInfoManager"

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private getPreferenceString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoManager;->mContext:Landroid/content/Context;

    const-string v1, "DeviceInfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 228
    :try_start_0
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_0

    return-object p1

    :cond_0
    return-object v1

    :catch_0
    move-exception p1

    .line 240
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in retrieving preference "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "DeviceInfoManager"

    invoke-static {v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getTelephoneID()Ljava/lang/String;
    .locals 2

    .line 367
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getCurrentTelephoneID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "telephone-id"

    .line 373
    invoke-direct {p0, v0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getPreferenceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 374
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getWifiMac()Ljava/lang/String;
    .locals 2

    .line 491
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getCurrentWifiMac()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "wifi-mac"

    .line 497
    invoke-direct {p0, v0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getPreferenceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 498
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public GetDeviceID()Ljava/lang/String;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoManager;->mDeviceID:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoManager;->mDeviceID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 527
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getLegacyDeviceID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoManager;->mDeviceID:Ljava/lang/String;

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoManager;->mDeviceID:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 533
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoManager;->mDeviceID:Ljava/lang/String;

    .line 537
    :cond_2
    iget-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoManager;->mDeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public GetDeviceType()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "vpn.anyconnect.devicetype"

    .line 286
    invoke-virtual {p0, v0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getCiusProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetPlatformVersion()Ljava/lang/String;
    .locals 1

    .line 278
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public GetRelease24DeviceID()Ljava/lang/String;
    .locals 4

    .line 611
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const-string/jumbo v2, "unknownDevId"

    if-lt v0, v1, :cond_0

    return-object v2

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "DeviceInfoManager"

    const-string v3, "READ_PHONE_STATE permission not granted"

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 621
    instance-of v1, v0, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    .line 623
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 624
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method protected getCiusProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 270
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/util/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getCurrentTelephoneID()Ljava/lang/String;
    .locals 4

    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return-object v2

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "DeviceInfoManager"

    if-eqz v0, :cond_1

    .line 312
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "READ_PHONE_STATE permission not granted"

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoManager;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 317
    instance-of v3, v0, Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_2

    goto :goto_0

    .line 323
    :cond_2
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 324
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-nez v3, :cond_3

    .line 326
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "No phone service"

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 330
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 319
    :cond_4
    :goto_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "No telephone manager"

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getCurrentTelephoneType()I
    .locals 4

    .line 338
    iget-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "DeviceInfoManager"

    if-eqz v0, :cond_2

    .line 339
    instance-of v3, v0, Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 346
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-nez v3, :cond_1

    .line 348
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "No phone service"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 352
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0

    .line 341
    :cond_2
    :goto_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "No telephone manager"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method protected getCurrentWifiMac()Ljava/lang/String;
    .locals 12

    .line 392
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const-string v2, "DeviceInfoManager"

    const/4 v3, 0x0

    if-ge v0, v1, :cond_3

    .line 394
    iget-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 395
    instance-of v1, v0, Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 402
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 405
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "no wifi connection info"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 409
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 411
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 397
    :cond_2
    :goto_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "No wifi manager"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 418
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getActiveWifiInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "wlan0"

    .line 423
    :cond_4
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 424
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 426
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    .line 431
    :cond_6
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v4

    if-nez v4, :cond_7

    return-object v3

    .line 437
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    array-length v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x1

    if-ge v8, v6, :cond_8

    aget-byte v10, v4, v8

    const-string v11, "%02x-"

    new-array v9, v9, [Ljava/lang/Object;

    .line 440
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 442
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 444
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 451
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Error retrieving MAC address"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-object v3
.end method

.method public getRel25DeviceID()Ljava/lang/String;
    .locals 1

    const-string v0, "telephone-id"

    .line 580
    invoke-direct {p0, v0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getPreferenceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "wifi-mac"

    .line 583
    invoke-direct {p0, v0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getPreferenceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getCurrentTelephoneID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getCurrentWifiMac()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public refreshSavedDeviceInfo()Z
    .locals 5

    .line 135
    iget-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoManager;->mContext:Landroid/content/Context;

    const-string v1, "DeviceInfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "wifi-mac"

    .line 139
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getCurrentWifiMac()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 142
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 144
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    const-string v2, "telephone-id"

    .line 149
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getCurrentTelephoneID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 154
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public setDeviceID(Ljava/lang/String;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/cisco/android/nchs/support/DeviceInfoManager;->mDeviceID:Ljava/lang/String;

    return-void
.end method

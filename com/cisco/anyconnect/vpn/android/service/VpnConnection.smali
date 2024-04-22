.class public Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
.super Ljava/lang/Object;
.source "VpnConnection.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;,
        Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;
    }
.end annotation


# static fields
.field private static final CERTIFICATE_REVOCATION_KEY:Ljava/lang/String; = "Certificate_Revocation"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static final DISALLOWED_APPS_KEY:Ljava/lang/String; = "disallowed_apps"

.field private static final ENTITY_NAME:Ljava/lang/String; = "VpnConnection"

.field private static final FIPS_MODE_KEY:Ljava/lang/String; = "Fips_Mode"

.field private static final IS_BYPASS_ALLOWED:Ljava/lang/String; = "is_bypass_allowed"

.field private static final IS_KNOX_AUTO_RETRY_ENABLED_KEY:Ljava/lang/String; = "is_knox_auto_retry_enabled"

.field private static final IS_KNOX_META_ENABLED:Ljava/lang/String; = "is_knox_meta_enabled"

.field private static final KNOX_JSON_PROFILE_KEY:Ljava/lang/String; = "knox_json_profile"

.field private static final STRICT_MODE_KEY:Ljava/lang/String; = "Strict_Mode"

.field private static final TUNNELED_APPS_KEY:Ljava/lang/String; = "tunneled_apps"

.field private static final YUBIKEY_SLOT_STR_KEY:Ljava/lang/String; = "yubikey_slot"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAutoRetryOnTunnelFailure:Z

.field private mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

.field private mCertCommonName:Ljava/lang/String;

.field private mCertHash:[B

.field private mCheckRevocation:Z

.field private mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

.field private mDisallowedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFipsMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

.field private mHost:Ljava/lang/String;

.field private mIKEIdentity:Ljava/lang/String;

.field private mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

.field private mId:Ljava/lang/String;

.field private mIsBypassAllowed:Z

.field private mIsKnoxMetaEnabled:Z

.field private mKnoxJsonProfile:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mProfileName:Ljava/lang/String;

.field private mStrictMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

.field private mTunneledApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

.field private mYubikeySlot:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_ANYCONNECT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    const-string v0, ""

    .line 90
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIKEIdentity:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ssl:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    .line 92
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->Default:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mFipsMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    .line 93
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;->Default:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mStrictMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCheckRevocation:Z

    .line 97
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsKnoxMetaEnabled:Z

    .line 98
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mAutoRetryOnTunnelFailure:Z

    .line 99
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsBypassAllowed:Z

    .line 293
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->initDefaults()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_ANYCONNECT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    const-string v0, ""

    .line 90
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIKEIdentity:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ssl:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    .line 92
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->Default:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mFipsMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    .line 93
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;->Default:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mStrictMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCheckRevocation:Z

    .line 97
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsKnoxMetaEnabled:Z

    .line 98
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mAutoRetryOnTunnelFailure:Z

    .line 99
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsBypassAllowed:Z

    .line 116
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/VpnConnection-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;)V
    .locals 1

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_ANYCONNECT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    const-string v0, ""

    .line 90
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIKEIdentity:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ssl:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    .line 92
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->Default:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mFipsMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    .line 93
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;->Default:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mStrictMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCheckRevocation:Z

    .line 97
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsKnoxMetaEnabled:Z

    .line 98
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mAutoRetryOnTunnelFailure:Z

    .line 99
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsBypassAllowed:Z

    .line 348
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Automatic:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    .line 349
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    .line 350
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ssl:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    .line 352
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->initDefaults()V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)V
    .locals 1

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_ANYCONNECT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    const-string v0, ""

    .line 90
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIKEIdentity:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ssl:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    .line 92
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->Default:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mFipsMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    .line 93
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;->Default:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mStrictMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCheckRevocation:Z

    .line 97
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsKnoxMetaEnabled:Z

    .line 98
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mAutoRetryOnTunnelFailure:Z

    .line 99
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsBypassAllowed:Z

    const/4 v0, 0x1

    .line 301
    invoke-direct {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->clone(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;Z)V

    .line 303
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->initDefaults()V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/jni/HostEntry;)V
    .locals 1

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_ANYCONNECT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    const-string v0, ""

    .line 90
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIKEIdentity:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ssl:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    .line 92
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->Default:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mFipsMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    .line 93
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;->Default:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mStrictMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCheckRevocation:Z

    .line 97
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsKnoxMetaEnabled:Z

    .line 98
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mAutoRetryOnTunnelFailure:Z

    .line 99
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsBypassAllowed:Z

    .line 361
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetHostEntry(Lcom/cisco/anyconnect/vpn/jni/HostEntry;)V

    .line 363
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->initDefaults()V

    return-void
.end method

.method private clone(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;Z)V
    .locals 2

    .line 311
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mName:Ljava/lang/String;

    .line 312
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mHost:Ljava/lang/String;

    .line 313
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mProfileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mProfileName:Ljava/lang/String;

    .line 314
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    .line 315
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    .line 316
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertCommonName:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertCommonName:Ljava/lang/String;

    .line 317
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    .line 318
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIKEIdentity:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIKEIdentity:Ljava/lang/String;

    .line 319
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    .line 320
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertHash:[B

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertHash:[B

    :cond_0
    if-eqz p2, :cond_1

    .line 326
    iget-object p2, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mId:Ljava/lang/String;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mId:Ljava/lang/String;

    .line 329
    :cond_1
    iget-object p2, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mFipsMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mFipsMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    .line 330
    iget-object p2, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mStrictMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mStrictMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    .line 331
    iget-object p2, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mYubikeySlot:Ljava/lang/String;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mYubikeySlot:Ljava/lang/String;

    .line 332
    iget-boolean p2, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCheckRevocation:Z

    iput-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCheckRevocation:Z

    .line 334
    iget-object p2, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mTunneledApps:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mTunneledApps:Ljava/util/ArrayList;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_0
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mTunneledApps:Ljava/util/ArrayList;

    .line 335
    iget-object p2, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mDisallowedApps:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    iget-object p2, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mDisallowedApps:Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_3
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mDisallowedApps:Ljava/util/ArrayList;

    .line 336
    iget-boolean p2, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsBypassAllowed:Z

    iput-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsBypassAllowed:Z

    .line 337
    iget-boolean p2, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsKnoxMetaEnabled:Z

    iput-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsKnoxMetaEnabled:Z

    .line 338
    iget-boolean p2, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mAutoRetryOnTunnelFailure:Z

    iput-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mAutoRetryOnTunnelFailure:Z

    .line 339
    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mKnoxJsonProfile:Ljava/lang/String;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mKnoxJsonProfile:Ljava/lang/String;

    return-void
.end method

.method private initDefaults()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    if-nez v0, :cond_0

    .line 274
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Automatic:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    if-nez v0, :cond_1

    .line 279
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Manual:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    if-nez v0, :cond_2

    .line 284
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ssl:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    :cond_2
    return-void
.end method

.method private declared-synchronized readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    monitor-enter p0

    .line 126
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mId:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->values()[Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v1

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Manual:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ParcelUtils;->intToEnumSafe(I[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mName:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mHost:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->values()[Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    move-result-object v1

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Automatic:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ParcelUtils;->intToEnumSafe(I[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertCommonName:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mProfileName:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->values()[Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    move-result-object v1

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_ANYCONNECT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ParcelUtils;->intToEnumSafe(I[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIKEIdentity:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->values()[Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    move-result-object v1

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ssl:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ParcelUtils;->intToEnumSafe(I[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertHash:[B

    .line 141
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertHash:[B

    .line 148
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 151
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "tunneled_apps"

    .line 154
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mTunneledApps:Ljava/util/ArrayList;

    const-string v0, "disallowed_apps"

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mDisallowedApps:Ljava/util/ArrayList;

    const-string v0, "is_knox_meta_enabled"

    const/4 v1, 0x0

    .line 156
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsKnoxMetaEnabled:Z

    const-string v0, "is_bypass_allowed"

    .line 157
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsBypassAllowed:Z

    const-string v0, "Fips_Mode"

    .line 158
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Fips_Mode"

    .line 159
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->values()[Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    move-result-object v2

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->Disable:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/ParcelUtils;->intToEnumSafe(I[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    goto :goto_1

    .line 160
    :cond_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->Disable:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    :goto_1
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mFipsMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    const-string v0, "Strict_Mode"

    .line 161
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Strict_Mode"

    .line 162
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 163
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;->values()[Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    move-result-object v2

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;->Disable:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    .line 162
    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/ParcelUtils;->intToEnumSafe(I[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    goto :goto_2

    .line 165
    :cond_3
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;->Disable:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    :goto_2
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mStrictMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    const-string/jumbo v0, "yubikey_slot"

    .line 167
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "yubikey_slot"

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mYubikeySlot:Ljava/lang/String;

    :cond_4
    const-string v0, "Certificate_Revocation"

    .line 171
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Certificate_Revocation"

    .line 172
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCheckRevocation:Z

    const-string v0, "is_knox_auto_retry_enabled"

    .line 173
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mAutoRetryOnTunnelFailure:Z

    const-string v0, "knox_json_profile"

    .line 174
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mKnoxJsonProfile:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized GetCertAuthMode()Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;
    .locals 1

    monitor-enter p0

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetCertCommonName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 567
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertCommonName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetCertHash()[B
    .locals 1

    monitor-enter p0

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertHash:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetConnectProtocol()Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;
    .locals 1

    monitor-enter p0

    .line 726
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public GetDescription()Ljava/lang/String;
    .locals 3

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "object ref is"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ID is"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 703
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ConnectionType"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mName is"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 705
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mHost is"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mHost:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mCertAuthMode is"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mCertCommonName is"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertCommonName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mProfileName is"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mIPsecAuthMode is"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mConnectProtocolType is"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mIKEIdentity is"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIKEIdentity:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Per App Allowed: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mTunneledApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 713
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Per App Disallowed: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mDisallowedApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 714
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Bypass: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsBypassAllowed:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized GetFipsMode()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;
    .locals 1

    monitor-enter p0

    .line 807
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mFipsMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetHost()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mHost:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetHostEntry()Lcom/cisco/anyconnect/vpn/jni/HostEntry;
    .locals 3

    monitor-enter p0

    .line 791
    :try_start_0
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/jni/HostEntry;-><init>()V

    .line 792
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->name:Ljava/lang/String;

    .line 793
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mHost:Ljava/lang/String;

    iput-object v1, v0, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->host:Ljava/lang/String;

    .line 794
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    iput-object v1, v0, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->certificateAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    .line 795
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertHash:[B

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/util/ByteUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->certHash:Ljava/lang/String;

    .line 796
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertCommonName:Ljava/lang/String;

    iput-object v1, v0, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->certCommonName:Ljava/lang/String;

    .line 797
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    iput-object v1, v0, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->IPsecureAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    .line 798
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    iput-object v1, v0, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->protocol:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    .line 799
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIKEIdentity:Ljava/lang/String;

    iput-object v1, v0, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->ikeIdentity:Ljava/lang/String;

    .line 800
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Imported:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->isProfileImported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetIKEIdentity()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIKEIdentity:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetIPsecAuthMode()Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;
    .locals 1

    monitor-enter p0

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized GetId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetIsIPsecUsed()Z
    .locals 2

    monitor-enter p0

    .line 470
    :try_start_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ipsec:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetKnoxJsonProfile()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 938
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mKnoxJsonProfile:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetProfileName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mProfileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetStrictMode()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;
    .locals 1

    monitor-enter p0

    .line 816
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mStrictMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetType()Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;
    .locals 1

    monitor-enter p0

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetYubikeySlot()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mYubikeySlot:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized IsKnox()Z
    .locals 2

    monitor-enter p0

    .line 856
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Knox_AppTunnel:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Knox_System:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized IsMDMControlled()Z
    .locals 2

    monitor-enter p0

    .line 840
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Knox_AppTunnel:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized IsMDMImported()Z
    .locals 2

    monitor-enter p0

    .line 848
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Knox_AppTunnel:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Knox_System:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Android_Work:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public IsProfileImportDupeOf(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z
    .locals 3

    .line 672
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 676
    :cond_0
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mHost:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 680
    :cond_1
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetType()Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v0

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    if-eq v0, v2, :cond_2

    return v1

    .line 686
    :cond_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Imported:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    if-ne v0, v2, :cond_3

    .line 688
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetProfileName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized IsRevocationEnabled()Z
    .locals 1

    monitor-enter p0

    .line 828
    :try_start_0
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCheckRevocation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized SetCertAuthMode(Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;)V
    .locals 0

    monitor-enter p0

    .line 425
    :try_start_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized SetCertCommonName(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 578
    :try_start_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertCommonName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized SetCertHash([B)V
    .locals 0

    monitor-enter p0

    .line 446
    :try_start_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertHash:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized SetConnectProtocolType(Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;)V
    .locals 0

    monitor-enter p0

    .line 735
    :try_start_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized SetFipsMode(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;)V
    .locals 0

    monitor-enter p0

    .line 812
    :try_start_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mFipsMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized SetHost(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 489
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ipsec://"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 490
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 493
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ipsec:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetConnectProtocolType(Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;)V

    .line 496
    :cond_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mHost:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized SetHostEntry(Lcom/cisco/anyconnect/vpn/jni/HostEntry;)V
    .locals 2

    monitor-enter p0

    .line 743
    :try_start_0
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mName:Ljava/lang/String;

    .line 744
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->host:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mHost:Ljava/lang/String;

    .line 745
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->profileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mProfileName:Ljava/lang/String;

    .line 746
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->certificateAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    .line 747
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Imported:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    .line 748
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->protocol:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    .line 749
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->IPsecureAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    if-nez v0, :cond_0

    .line 752
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_ANYCONNECT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    .line 755
    :cond_0
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->ikeIdentity:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIKEIdentity:Ljava/lang/String;

    .line 757
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    iget-object v1, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->certificateAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    if-ne v0, v1, :cond_1

    .line 759
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->certHash:Ljava/lang/String;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/ByteUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertHash:[B

    .line 760
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->certCommonName:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertCommonName:Ljava/lang/String;

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 766
    :cond_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mName:Ljava/lang/String;

    .line 771
    :cond_3
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->host:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->userGroup:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->userGroup:Ljava/lang/String;

    .line 773
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 775
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->userGroup:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->userGroup:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mHost:Ljava/lang/String;

    goto :goto_0

    .line 781
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->userGroup:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mHost:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized SetIKEIdentity(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 546
    :try_start_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIKEIdentity:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized SetIPsecAuthMode(Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;)V
    .locals 0

    monitor-enter p0

    .line 512
    :try_start_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized SetIPsecAuthModeViaURI(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "EAP-AnyConnect"

    .line 517
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_ANYCONNECT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    goto :goto_0

    :cond_0
    const-string v0, "EAP-GTC"

    .line 521
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_GTC:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    goto :goto_0

    :cond_1
    const-string v0, "EAP-MD5"

    .line 525
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_MD5:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    goto :goto_0

    :cond_2
    const-string v0, "EAP-MSCHAPv2"

    .line 529
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 531
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_MSCHAPv2:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    goto :goto_0

    :cond_3
    const-string v0, "IKE-RSA"

    .line 533
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 535
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_RSA:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    goto :goto_0

    .line 539
    :cond_4
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_ANYCONNECT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    .line 540
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "VpnConnection"

    const-string v1, "set IPsec Authentication Mode as default: EAP-AnyConnect"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized SetId(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 179
    :try_start_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized SetIsIPsecUsed(Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 553
    :try_start_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ipsec:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    goto :goto_0

    .line 557
    :cond_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ssl:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized SetKnoxJsonProfile(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 943
    :try_start_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mKnoxJsonProfile:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized SetManualCertAuthMode(Ljava/lang/String;[B)V
    .locals 1

    monitor-enter p0

    .line 434
    :try_start_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    .line 435
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertCommonName:Ljava/lang/String;

    .line 436
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertHash:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized SetName(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 507
    :try_start_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized SetProfileName(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 480
    :try_start_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mProfileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized SetRevocationEnabled(Z)V
    .locals 0

    monitor-enter p0

    .line 832
    :try_start_0
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCheckRevocation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized SetStrictMode(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;)V
    .locals 0

    monitor-enter p0

    .line 820
    :try_start_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mStrictMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized SetType(Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;)V
    .locals 0

    monitor-enter p0

    .line 416
    :try_start_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized SetYubikeySlot(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 825
    :try_start_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mYubikeySlot:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public Update(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)V
    .locals 1

    const/4 v0, 0x0

    .line 307
    invoke-direct {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->clone(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;Z)V

    return-void
.end method

.method public declared-synchronized describeContents()I
    .locals 1

    monitor-enter p0

    .line 200
    monitor-exit p0

    const/4 v0, 0x0

    return v0
.end method

.method public equalsIgnoreIDInequality(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 598
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 603
    :cond_2
    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 605
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v0

    .line 611
    :cond_3
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 615
    :cond_4
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mHost:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 619
    :cond_5
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertAuthMode()Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    if-eq v2, v3, :cond_6

    return v1

    .line 623
    :cond_6
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetType()Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    if-eq v2, v3, :cond_7

    return v1

    .line 629
    :cond_7
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetConnectProtocol()Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    if-eq v2, v3, :cond_8

    return v1

    .line 633
    :cond_8
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetIPsecAuthMode()Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    if-eq v2, v3, :cond_9

    return v1

    .line 637
    :cond_9
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetIKEIdentity()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIKEIdentity:Ljava/lang/String;

    if-eq v2, v3, :cond_a

    return v1

    .line 643
    :cond_a
    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    if-ne v2, v3, :cond_b

    .line 645
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertHash:[B

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertHash()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 652
    :cond_b
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Imported:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    if-ne v2, v3, :cond_c

    .line 654
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetProfileName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v1

    :cond_c
    return v0
.end method

.method public declared-synchronized getAutoRetryOnFailure()Z
    .locals 1

    monitor-enter p0

    .line 933
    :try_start_0
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mAutoRetryOnTunnelFailure:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDisallowedApplications()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 895
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mDisallowedApps:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 897
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 900
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mDisallowedApps:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIsBypassAllowed()Z
    .locals 1

    monitor-enter p0

    .line 917
    :try_start_0
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsBypassAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKnoxMetaEnabled()Z
    .locals 1

    monitor-enter p0

    .line 925
    :try_start_0
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsKnoxMetaEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getKnoxProfileName()Ljava/lang/String;
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mName:Ljava/lang/String;

    const-string v1, " (knox)"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getTunnelApplications()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 869
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mTunneledApps:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 871
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 874
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mTunneledApps:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasAllowedApplications()Z
    .locals 1

    monitor-enter p0

    .line 878
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mTunneledApps:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasDisallowedApplications()Z
    .locals 1

    monitor-enter p0

    .line 882
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mDisallowedApps:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isManagedPerApp()Z
    .locals 3

    monitor-enter p0

    .line 904
    :try_start_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Knox_AppTunnel:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 905
    monitor-exit p0

    return v2

    .line 909
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->hasAllowedApplications()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->hasDisallowedApplications()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoRetryOnFailure(Z)V
    .locals 0

    monitor-enter p0

    .line 929
    :try_start_0
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mAutoRetryOnTunnelFailure:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDisallowedApplications(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 888
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mDisallowedApps:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 890
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mDisallowedApps:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setIsBypassAllowed(Z)V
    .locals 0

    monitor-enter p0

    .line 913
    :try_start_0
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsBypassAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setKnoxMetaEnabled(Z)V
    .locals 0

    monitor-enter p0

    .line 921
    :try_start_0
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsKnoxMetaEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTunnelApplications(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 862
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mTunneledApps:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 864
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mTunneledApps:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    monitor-enter p0

    .line 204
    :try_start_0
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mType:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mHost:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertCommonName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIPsecAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIKEIdentity:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mConnectProtocolType:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertHash:[B

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 216
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 218
    :cond_0
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCertHash:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 222
    :goto_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 223
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mTunneledApps:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const-string v1, "tunneled_apps"

    .line 224
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mDisallowedApps:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const-string v1, "disallowed_apps"

    .line 228
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    const-string v0, "is_bypass_allowed"

    .line 231
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsBypassAllowed:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_knox_meta_enabled"

    .line 232
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mIsKnoxMetaEnabled:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mFipsMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    if-eqz v0, :cond_3

    const-string v1, "Fips_Mode"

    .line 240
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->ordinal()I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    const-string v0, "Fips_Mode"

    .line 242
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->Disable:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->ordinal()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    :goto_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mStrictMode:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    if-eqz v0, :cond_4

    const-string v1, "Strict_Mode"

    .line 246
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;->ordinal()I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    const-string v0, "Strict_Mode"

    .line 248
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;->Disable:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    .line 249
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;->ordinal()I

    move-result v1

    .line 248
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    :goto_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mYubikeySlot:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string/jumbo v1, "yubikey_slot"

    .line 253
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "Certificate_Revocation"

    .line 256
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mCheckRevocation:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_knox_auto_retry_enabled"

    .line 257
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mAutoRetryOnTunnelFailure:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->mKnoxJsonProfile:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v1, "knox_json_profile"

    .line 261
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

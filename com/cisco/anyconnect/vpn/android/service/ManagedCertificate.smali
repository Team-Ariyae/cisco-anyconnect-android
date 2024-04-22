.class public Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;
.super Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;
.source "ManagedCertificate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTITY_NAME:Ljava/lang/String; = "ManagedCertificate"

.field private static final PREFIX_ANDROID:Ljava/lang/String; = "ANDROID/"

.field private static final PREFIX_ANYCONNECT:Ljava/lang/String; = "AC/"

.field private static final PREFIX_CISCO_DEVICE:Ljava/lang/String; = "CISCO_DEVICE/"

.field private static final PREFIX_KEYCHAIN:Ljava/lang/String; = "KEYCHAIN/"

.field private static final PREFIX_KNOX_TIMA:Ljava/lang/String; = "KNOX_TIMA/"

.field private static final PREFIX_SYSTEM:Ljava/lang/String; = "SYS/"


# instance fields
.field private mCert:Ljava/security/cert/X509Certificate;

.field private mSubjectShortName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 291
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;-><init>()V

    .line 87
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;-><init>()V

    .line 66
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;->derBlob:[B

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;->derBlob:[B

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->derBlob:[B

    .line 72
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->id:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;->group:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->group:Ljava/lang/String;

    .line 74
    iget v0, p1, Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;->certType:I

    iput v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->certType:I

    .line 75
    iget p1, p1, Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;->certProperty:I

    iput p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->certProperty:I

    .line 77
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->initialize()V

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no DER blob provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private derToX509Certificate([B)Ljava/security/cert/X509Certificate;
    .locals 4

    const-string v0, "ManagedCertificate"

    :try_start_0
    const-string v1, "X509"

    .line 120
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 121
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 122
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 123
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 132
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "derToX509Certificate: IOException while parsing certificate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 128
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "derToX509Certificate: CertificateException while parsing certificate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private initialize()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->derBlob:[B

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->derToX509Certificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->mCert:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/cisco/anyconnect/common/X509NameParser;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->mCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/common/X509NameParser;-><init>(Ljava/security/Principal;)V

    .line 102
    invoke-virtual {v0}, Lcom/cisco/anyconnect/common/X509NameParser;->getShortName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->mSubjectShortName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->derBlob:[B

    .line 258
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->derBlob:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->id:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->group:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->certType:I

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->certProperty:I

    .line 264
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->initialize()V

    return-void
.end method


# virtual methods
.method public GetCertProperty()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->certProperty:I

    return v0
.end method

.method public GetCertType()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->certType:I

    return v0
.end method

.method public GetDerBlob()[B
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->derBlob:[B

    return-object v0
.end method

.method public GetGroup()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->group:Ljava/lang/String;

    return-object v0
.end method

.method public GetHash()[B
    .locals 3

    :try_start_0
    const-string v0, "SHA1"

    .line 151
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 153
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->derBlob:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 154
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ManagedCertificate"

    const-string v2, "NoSuchAlgorithmException in GetHash"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public GetId()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->id:Ljava/lang/String;

    return-object v0
.end method

.method public GetX509()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->mCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 317
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 318
    :cond_1
    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;

    .line 319
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->mCert:Ljava/security/cert/X509Certificate;

    iget-object v3, p1, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->mCert:Ljava/security/cert/X509Certificate;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->mSubjectShortName:Ljava/lang/String;

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->mSubjectShortName:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getSubjectShortName()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->mSubjectShortName:Ljava/lang/String;

    return-object v0
.end method

.method public isAndroidKeystoreCert()Z
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->group:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->group:Ljava/lang/String;

    const-string v1, "ANDROID/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAnyConnectCert()Z
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->group:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->group:Ljava/lang/String;

    const-string v1, "AC/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCiscoDeviceCert()Z
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->group:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->group:Ljava/lang/String;

    const-string v1, "CISCO_DEVICE/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isKeyChainCert()Z
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->group:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->group:Ljava/lang/String;

    const-string v1, "KEYCHAIN/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isKnoxTimaCert()Z
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->group:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->group:Ljava/lang/String;

    const-string v1, "KNOX_TIMA/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 310
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->isSystemCert()Z

    move-result v0

    return v0
.end method

.method public isSystemCert()Z
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->group:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->group:Ljava/lang/String;

    const-string v1, "SYS/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 282
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->derBlob:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->derBlob:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 284
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->group:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->certType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->certProperty:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

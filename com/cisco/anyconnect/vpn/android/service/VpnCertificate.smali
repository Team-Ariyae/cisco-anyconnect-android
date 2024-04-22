.class public Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;
.super Ljava/lang/Object;
.source "VpnCertificate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;",
            ">;"
        }
    .end annotation
.end field

.field private static ENTITY_NAME:Ljava/lang/String; = "VpnCertificate"


# instance fields
.field private mCertDER:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->mCertDER:[B

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 53
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->mCertDER:[B

    return-void
.end method


# virtual methods
.method public GetDER()[B
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->mCertDER:[B

    return-object v0
.end method

.method public GetHash()[B
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->mCertDER:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->ENTITY_NAME:Ljava/lang/String;

    const-string/jumbo v3, "unexpected null DER in GetHash"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "SHA1"

    .line 131
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 133
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->mCertDER:[B

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 134
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->ENTITY_NAME:Ljava/lang/String;

    const-string v3, "NoSuchAlgorithmException in GetHash"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public GetX509()Ljava/security/cert/X509Certificate;
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->mCertDER:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 92
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->ENTITY_NAME:Ljava/lang/String;

    const-string/jumbo v3, "unexpected null DER in GetX509"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "X.509"

    .line 99
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 100
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->mCertDER:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 101
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 102
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-object v1, v0

    goto :goto_0

    :catch_1
    move-object v1, v0

    goto :goto_1

    .line 110
    :catch_2
    :goto_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->ENTITY_NAME:Ljava/lang/String;

    const-string v3, "CertificateException in GetX509"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 106
    :catch_3
    :goto_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->ENTITY_NAME:Ljava/lang/String;

    const-string v3, "IOException in GetX509"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v0, v1

    :goto_3
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCommonName()Ljava/lang/String;
    .locals 2

    .line 151
    new-instance v0, Lcom/cisco/anyconnect/common/X509NameParser;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->GetX509()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/common/X509NameParser;-><init>(Ljava/security/Principal;)V

    .line 152
    invoke-virtual {v0}, Lcom/cisco/anyconnect/common/X509NameParser;->getShortName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    const/4 v0, 0x0

    .line 164
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->GetX509()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->GetX509()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Empty certificate"

    return-object v0

    .line 186
    :cond_0
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 195
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->mCertDER:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->mCertDER:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

.class public Lcom/cisco/android/filesignerlib/CodeSignTlv;
.super Ljava/lang/Object;
.source "CodeSignTlv.java"


# static fields
.field private static final COOKIE:Ljava/lang/String; = "S!cV!j!dqeayIVDMPT!A!kfkjvddSBJJJ!V!eznRGBF"

.field private static final STR_NATIVE_ARCHIVE:Ljava/lang/String; = "anyconnect_native_component.zip"

.field private static final STR_VPNDOWNLOADER_BIN:Ljava/lang/String; = "vpndownloader"

.field private static final STR_VPNDOWNLOADER_SH:Ljava/lang/String; = "vpndownloader.sh"

.field private static final TYPE_CERTIFICATE:S = 0x2s

.field private static final TYPE_COOKIE:S = 0x1s

.field public static final TYPE_DATA:S = 0x64s

.field private static final TYPE_DATE:S = 0x4s

.field private static final TYPE_IM_CERTIFICATE:S = 0x3s

.field private static final TYPE_INVALID:S


# instance fields
.field private mTlv:Lcom/cisco/android/filesignerlib/TLV;


# direct methods
.method public constructor <init>(Lcom/cisco/android/filesignerlib/LogInterface;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/cisco/android/filesignerlib/TLV;

    invoke-direct {v0}, Lcom/cisco/android/filesignerlib/TLV;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/filesignerlib/CodeSignTlv;->mTlv:Lcom/cisco/android/filesignerlib/TLV;

    .line 68
    invoke-virtual {v0, p1}, Lcom/cisco/android/filesignerlib/TLV;->setLogger(Lcom/cisco/android/filesignerlib/LogInterface;)V

    return-void
.end method


# virtual methods
.method public AddCookie()V
    .locals 2

    .line 331
    new-instance v0, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;

    invoke-direct {v0}, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;-><init>()V

    const/4 v1, 0x1

    .line 332
    iput-short v1, v0, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;->mType:S

    const-string v1, "S!cV!j!dqeayIVDMPT!A!kfkjvddSBJJJ!V!eznRGBF"

    .line 333
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;->mValueBytes:[B

    .line 335
    iget-object v1, p0, Lcom/cisco/android/filesignerlib/CodeSignTlv;->mTlv:Lcom/cisco/android/filesignerlib/TLV;

    invoke-virtual {v1, v0}, Lcom/cisco/android/filesignerlib/TLV;->AddAttribute(Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;)V

    return-void
.end method

.method public AddImCert([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 244
    new-instance v0, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;

    invoke-direct {v0}, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;-><init>()V

    const/4 v1, 0x3

    .line 245
    iput-short v1, v0, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;->mType:S

    .line 246
    iput-object p1, v0, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;->mValueBytes:[B

    .line 248
    iget-object p1, p0, Lcom/cisco/android/filesignerlib/CodeSignTlv;->mTlv:Lcom/cisco/android/filesignerlib/TLV;

    invoke-virtual {p1, v0}, Lcom/cisco/android/filesignerlib/TLV;->AddAttribute(Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;)V

    return-void

    .line 241
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CodeSignTlv.AddImCert - certBytes must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetCert()[B
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/cisco/android/filesignerlib/CodeSignTlv;->mTlv:Lcom/cisco/android/filesignerlib/TLV;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cisco/android/filesignerlib/TLV;->GetInfoByType(S)[B

    move-result-object v0

    return-object v0
.end method

.method public GetCodeSignTlv()[B
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/cisco/android/filesignerlib/CodeSignTlv;->mTlv:Lcom/cisco/android/filesignerlib/TLV;

    invoke-virtual {v0}, Lcom/cisco/android/filesignerlib/TLV;->GetTlv()[B

    move-result-object v0

    return-object v0
.end method

.method public GetImCert()[B
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/cisco/android/filesignerlib/CodeSignTlv;->mTlv:Lcom/cisco/android/filesignerlib/TLV;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/cisco/android/filesignerlib/TLV;->GetInfoByType(S)[B

    move-result-object v0

    return-object v0
.end method

.method public GetSignatureForFileType(S)[B
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/filesignerlib/CodeSignTlv;->mTlv:Lcom/cisco/android/filesignerlib/TLV;

    invoke-virtual {v0, p1}, Lcom/cisco/android/filesignerlib/TLV;->GetInfoByType(S)[B

    move-result-object p1

    return-object p1
.end method

.method public IsValid()Z
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/cisco/android/filesignerlib/CodeSignTlv;->mTlv:Lcom/cisco/android/filesignerlib/TLV;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cisco/android/filesignerlib/TLV;->GetInfoByType(S)[B

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 136
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "S!cV!j!dqeayIVDMPT!A!kfkjvddSBJJJ!V!eznRGBF"

    .line 138
    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public SetCert([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 192
    new-instance v0, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;

    invoke-direct {v0}, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;-><init>()V

    const/4 v1, 0x2

    .line 193
    iput-short v1, v0, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;->mType:S

    .line 194
    iput-object p1, v0, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;->mValueBytes:[B

    .line 196
    iget-object p1, p0, Lcom/cisco/android/filesignerlib/CodeSignTlv;->mTlv:Lcom/cisco/android/filesignerlib/TLV;

    invoke-virtual {p1, v0}, Lcom/cisco/android/filesignerlib/TLV;->AddAttribute(Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;)V

    return-void

    .line 189
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CodeSignTlv.SetCert - certBytes must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public SetCodeSignTlv([B)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/cisco/android/filesignerlib/CodeSignTlv;->mTlv:Lcom/cisco/android/filesignerlib/TLV;

    invoke-virtual {v0, p1}, Lcom/cisco/android/filesignerlib/TLV;->SetTlv([B)V

    return-void
.end method

.method public SetSignature(Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/cisco/android/filesignerlib/CodeSignException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 311
    new-instance p1, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;

    invoke-direct {p1}, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;-><init>()V

    const/16 v0, 0x64

    .line 312
    iput-short v0, p1, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;->mType:S

    .line 313
    iput-object p2, p1, Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;->mValueBytes:[B

    .line 315
    iget-object p2, p0, Lcom/cisco/android/filesignerlib/CodeSignTlv;->mTlv:Lcom/cisco/android/filesignerlib/TLV;

    invoke-virtual {p2, p1}, Lcom/cisco/android/filesignerlib/TLV;->AddAttribute(Lcom/cisco/android/filesignerlib/TLV$NonBasicTLV;)V

    return-void

    .line 308
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Signature buffer must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 303
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "filePath must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.class public Lcom/cisco/anyconnect/vpn/android/crypto/ACLegacyCertStore;
.super Lcom/cisco/anyconnect/vpn/android/crypto/FileKsCertStore;
.source "ACLegacyCertStore.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[C[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 28
    invoke-direct/range {p0 .. p5}, Lcom/cisco/anyconnect/vpn/android/crypto/FileKsCertStore;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[C[C)V

    return-void
.end method

.method protected static getCertAliasForKeyAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "_key"

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 37
    array-length v1, v0

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 43
    aget-object p0, v0, p0

    return-object p0
.end method

.method protected static getKeyAliasForCertAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_key"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

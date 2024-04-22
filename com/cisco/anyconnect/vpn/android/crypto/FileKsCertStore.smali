.class public Lcom/cisco/anyconnect/vpn/android/crypto/FileKsCertStore;
.super Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;
.source "FileKsCertStore.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "FileKsCertStore"


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[C[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/cisco/anyconnect/vpn/android/crypto/KsCertStore;-><init>(Ljava/lang/String;Ljava/lang/String;[C[C)V

    .line 22
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileKsCertStore;->mFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public loadKeystore()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileKsCertStore;->mKeyStore:Ljava/security/KeyStore;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 36
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileKsCertStore;->mType:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileKsCertStore;->mKeyStore:Ljava/security/KeyStore;

    .line 37
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileKsCertStore;->mKeyStore:Ljava/security/KeyStore;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileKsCertStore;->mStorePass:[C

    invoke-virtual {v2, v0, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 39
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileKsCertStore;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 44
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileKsCertStore;->mFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileKsCertStore;->mKeyStore:Ljava/security/KeyStore;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileKsCertStore;->mStorePass:[C

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 50
    :goto_0
    :try_start_3
    new-instance v1, Ljava/security/cert/CertStoreException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v2, :cond_2

    .line 58
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 62
    :catch_3
    :cond_2
    throw v0
.end method

.method protected saveKeyStore()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 71
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileKsCertStore;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileKsCertStore;->mKeyStore:Ljava/security/KeyStore;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileKsCertStore;->mStorePass:[C

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 76
    :goto_0
    :try_start_3
    new-instance v2, Ljava/security/cert/CertStoreException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 84
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 88
    :catch_3
    :cond_0
    throw v0
.end method

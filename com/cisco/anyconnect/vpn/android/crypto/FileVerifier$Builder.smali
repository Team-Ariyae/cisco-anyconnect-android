.class public Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;
.super Ljava/lang/Object;
.source "FileVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCatalog:[B

.field private final mDataFile:Ljava/io/File;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCatalog(Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;)[B
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;->mCatalog:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataFile(Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;->mDataFile:Ljava/io/File;

    return-object p0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;->mDataFile:Ljava/io/File;

    return-void

    .line 101
    :cond_0
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Data file does not exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;

    const-string v0, "Unexpected null data file."

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 87
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;->mDataFile:Ljava/io/File;

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Data file does not exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;

    const-string v0, "Unexpected null data file."

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;
    .locals 2

    .line 139
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;-><init>(Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier-IA;)V

    return-object v0
.end method

.method public setCatalog(Ljava/io/File;)Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;
        }
    .end annotation

    const-string v0, "Catalog file does not exist: "

    if-eqz p1, :cond_1

    .line 124
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/android/filesignerlib/BinaryFile;->Read(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;->mCatalog:[B

    return-object p0

    .line 126
    :cond_0
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 122
    :cond_1
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;

    const-string v0, "Unexpected null catalog file."

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;

    const-string v1, "setCatalog failed"

    invoke-direct {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setCatalog([B)Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 108
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 112
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;->mCatalog:[B

    return-object p0

    .line 110
    :cond_0
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;

    const-string v0, "Invalid catalog."

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

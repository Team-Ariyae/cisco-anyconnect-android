.class public Lcom/cisco/android/nchs/codesign/VerifySignFile;
.super Ljava/lang/Object;
.source "VerifySignFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;
    }
.end annotation


# static fields
.field private static final FILE_READ_BUFFER_SIZE:I = 0x1000

.field private static final bashSizeDefault:Ljava/lang/String; = "0x00000000"

.field private static final mBashSize:Ljava/lang/String; = "BASH_BASE_SIZE="

.field private static final m_strBashHeader_bash:Ljava/lang/String; = "#!/bin/bash"

.field private static final m_strBashHeader_sh:Ljava/lang/String; = "#!/bin/sh"


# instance fields
.field private mCsTlv:Lcom/cisco/android/filesignerlib/CodeSignTlv;

.field private mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

.field private mSignedFilePath:Ljava/lang/String;

.field private mVerificationBytes:[B


# direct methods
.method public constructor <init>(Lcom/cisco/android/filesignerlib/LogInterface;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mVerificationBytes:[B

    .line 60
    iput-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mCsTlv:Lcom/cisco/android/filesignerlib/CodeSignTlv;

    .line 62
    iput-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mSignedFilePath:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    return-void
.end method

.method private GetBashBinaryLength()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/android/filesignerlib/CodeSignException;
        }
    .end annotation

    .line 693
    invoke-direct {p0}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->GetBashBinarySizeOffset()I

    move-result v0

    .line 696
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mVerificationBytes:[B

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v2, v0, 0xa

    .line 700
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 703
    iget-object v1, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SignFile::GetBashBinaryLength strBaseSize = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/cisco/android/filesignerlib/LogInterface;->debuglog(Ljava/lang/String;)V

    .line 706
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 707
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 712
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mSignedFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 713
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    return v0
.end method

.method private GetBashBinarySizeOffset()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/android/filesignerlib/CodeSignException;
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mVerificationBytes:[B

    if-eqz v0, :cond_1

    .line 639
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    const-string v0, "BASH_BASE_SIZE="

    .line 641
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    add-int/lit8 v0, v0, 0xf

    return v0

    .line 644
    :cond_0
    new-instance v0, Lcom/cisco/android/filesignerlib/CodeSignException;

    const-string v1, "Not a signable Bashe file"

    invoke-direct {v0, v1}, Lcom/cisco/android/filesignerlib/CodeSignException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_1
    new-instance v0, Lcom/cisco/android/filesignerlib/CodeSignException;

    const-string v1, "SignFile has not been initialized.  Must call SignFile.open"

    invoke-direct {v0, v1}, Lcom/cisco/android/filesignerlib/CodeSignException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private IsBashFile()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mVerificationBytes:[B

    if-eqz v0, :cond_2

    .line 496
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    const-string v0, "#!/bin/bash"

    .line 498
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "#!/bin/sh"

    .line 499
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 492
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "IsBashFile - Sign File must have verification bytes read before checking type"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getElfBinaryLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/android/filesignerlib/CodeSignException;
        }
    .end annotation

    .line 739
    new-instance v0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;

    iget-object v1, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mVerificationBytes:[B

    invoke-direct {v0, p0, v1}, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;-><init>(Lcom/cisco/android/nchs/codesign/VerifySignFile;[B)V

    .line 741
    invoke-virtual {v0}, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->IsElfFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    invoke-virtual {v0}, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->GetElfBinaryLength()I

    move-result v0

    return v0

    .line 743
    :cond_0
    new-instance v0, Lcom/cisco/android/filesignerlib/CodeSignException;

    const-string v1, "Unable to retrieve length of non-Elf file"

    invoke-direct {v0, v1}, Lcom/cisco/android/filesignerlib/CodeSignException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getTLVBytesFromSignedFile(I)[B
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mSignedFilePath:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/cisco/android/filesignerlib/BinaryFile;->readFromOffsetToEndOfFile(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method private hashTLVEmbeddedFile(Ljava/security/Signature;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mSignedFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/cisco/android/filesignerlib/BinaryFile;->openFile(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 222
    iget-object p1, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    const-string v0, "Could not open file."

    invoke-interface {p1, v0}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V

    return v1

    .line 228
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->getTLVOffset()I

    move-result v2
    :try_end_0
    .catch Lcom/cisco/android/filesignerlib/CodeSignException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    const/16 v3, 0x1000

    if-ge v3, v2, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit16 v3, v2, -0x1000

    .line 250
    :goto_0
    new-array v4, v3, [B

    .line 251
    invoke-static {v0, v4}, Lcom/cisco/android/filesignerlib/BinaryFile;->ReadNextChunk(Ljava/io/FileInputStream;[B)I

    move-result v5

    .line 252
    invoke-direct {p0, p1, v4, v5, v3}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->updateSignatureWithBytes(Ljava/security/Signature;[BII)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    const/4 v3, -0x1

    if-ne v5, v3, :cond_1

    .line 261
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1

    :catch_1
    move-exception p1

    .line 232
    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CodeSignException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V

    return v1
.end method

.method private hashZipFile(Ljava/security/Signature;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mSignedFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/cisco/android/filesignerlib/BinaryFile;->openFile(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 169
    iget-object p1, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    const-string v0, "Could not open file."

    invoke-interface {p1, v0}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    const/16 v2, 0x1000

    new-array v3, v2, [B

    .line 177
    :cond_1
    invoke-static {v0, v3}, Lcom/cisco/android/filesignerlib/BinaryFile;->ReadNextChunk(Ljava/io/FileInputStream;[B)I

    move-result v4

    .line 178
    invoke-direct {p0, p1, v3, v4, v2}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->updateSignatureWithBytes(Ljava/security/Signature;[BII)Z

    move-result v5

    if-nez v5, :cond_2

    return v1

    :cond_2
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 187
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 191
    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException occurred when closing zip file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isElfFile()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mVerificationBytes:[B

    if-eqz v0, :cond_0

    .line 531
    new-instance v1, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;

    invoke-direct {v1, p0, v0}, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;-><init>(Lcom/cisco/android/nchs/codesign/VerifySignFile;[B)V

    .line 533
    invoke-virtual {v1}, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->IsElfFile()Z

    move-result v0

    return v0

    .line 528
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "isElfFile - Sign File must have verification bytes read before checking type"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isZipFile()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mVerificationBytes:[B

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mSignedFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 568
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mSignedFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0

    .line 560
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "isZipFile - Sign File name must be passed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "isZipFile - Sign File must have verification bytes read before checking type"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateSignatureWithBytes(Ljava/security/Signature;[BII)Z
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne v0, p3, :cond_0

    return v1

    :cond_0
    const-string v0, "SignatureException: "

    const/4 v2, 0x0

    if-ne p3, p4, :cond_1

    .line 301
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/security/Signature;->update([B)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 305
    iget-object p2, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V

    return v2

    .line 311
    :cond_1
    new-array p4, p3, [B

    .line 312
    invoke-static {p2, v2, p4, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    :try_start_1
    invoke-virtual {p1, p4}, Ljava/security/Signature;->update([B)V
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v1

    :catch_1
    move-exception p1

    .line 319
    iget-object p2, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public GetTlv()Lcom/cisco/android/filesignerlib/CodeSignTlv;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Lcom/cisco/android/filesignerlib/CodeSignException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mVerificationBytes:[B

    if-eqz v0, :cond_3

    .line 354
    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mCsTlv:Lcom/cisco/android/filesignerlib/CodeSignTlv;

    if-eqz v0, :cond_0

    return-object v0

    .line 359
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mSignedFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->getTLVOffset()I

    move-result v1

    int-to-long v2, v1

    .line 362
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 367
    new-instance v0, Lcom/cisco/android/filesignerlib/CodeSignTlv;

    iget-object v2, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    invoke-direct {v0, v2}, Lcom/cisco/android/filesignerlib/CodeSignTlv;-><init>(Lcom/cisco/android/filesignerlib/LogInterface;)V

    .line 369
    invoke-direct {p0, v1}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->getTLVBytesFromSignedFile(I)[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 375
    invoke-virtual {v0, v1}, Lcom/cisco/android/filesignerlib/CodeSignTlv;->SetCodeSignTlv([B)V

    return-object v0

    .line 372
    :cond_1
    new-instance v0, Lcom/cisco/android/filesignerlib/CodeSignException;

    const-string v1, "tlv could not be read from file"

    invoke-direct {v0, v1}, Lcom/cisco/android/filesignerlib/CodeSignException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_2
    new-instance v0, Lcom/cisco/android/filesignerlib/CodeSignException;

    const-string v1, "File has not been signed, there is no signature structure attached to the file"

    invoke-direct {v0, v1}, Lcom/cisco/android/filesignerlib/CodeSignException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "GetTlv - Signable file was not opened"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public SetTlv(Lcom/cisco/android/filesignerlib/CodeSignTlv;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 468
    iput-object p1, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mCsTlv:Lcom/cisco/android/filesignerlib/CodeSignTlv;

    const/4 p1, 0x1

    return p1

    .line 464
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CodeSignTlv parameter must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public SetTlv([B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 428
    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mCsTlv:Lcom/cisco/android/filesignerlib/CodeSignTlv;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Lcom/cisco/android/filesignerlib/CodeSignTlv;

    new-instance v1, Lcom/cisco/android/nchs/codesign/JavaLogger;

    invoke-direct {v1}, Lcom/cisco/android/nchs/codesign/JavaLogger;-><init>()V

    invoke-direct {v0, v1}, Lcom/cisco/android/filesignerlib/CodeSignTlv;-><init>(Lcom/cisco/android/filesignerlib/LogInterface;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mCsTlv:Lcom/cisco/android/filesignerlib/CodeSignTlv;

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mCsTlv:Lcom/cisco/android/filesignerlib/CodeSignTlv;

    invoke-virtual {v0, p1}, Lcom/cisco/android/filesignerlib/CodeSignTlv;->SetCodeSignTlv([B)V

    const/4 p1, 0x1

    return p1

    .line 425
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byte[] parameter must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addFileContentsToSignatureHash(Ljava/security/Signature;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/cisco/android/filesignerlib/CodeSignException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->IsBashFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->hashTLVEmbeddedFile(Ljava/security/Signature;)Z

    move-result p1

    return p1

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->isElfFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->hashTLVEmbeddedFile(Ljava/security/Signature;)Z

    move-result p1

    return p1

    .line 141
    :cond_1
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->hashZipFile(Ljava/security/Signature;)Z

    move-result p1

    return p1
.end method

.method public getTLVOffset()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/android/filesignerlib/CodeSignException;
        }
    .end annotation

    .line 596
    invoke-direct {p0}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->IsBashFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    invoke-direct {p0}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->GetBashBinaryLength()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    return v0

    .line 600
    :cond_0
    invoke-direct {p0}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->isElfFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    invoke-direct {p0}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->getElfBinaryLength()I

    move-result v0

    goto :goto_0

    .line 604
    :cond_1
    invoke-direct {p0}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->isZipFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    new-instance v0, Lcom/cisco/android/filesignerlib/CodeSignException;

    const-string v1, "Cannot embed TLV in zip file"

    invoke-direct {v0, v1}, Lcom/cisco/android/filesignerlib/CodeSignException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_2
    new-instance v0, Lcom/cisco/android/filesignerlib/CodeSignException;

    const-string v1, "Only support signable bash, binary, or zip files"

    invoke-direct {v0, v1}, Lcom/cisco/android/filesignerlib/CodeSignException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public open(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/cisco/android/filesignerlib/CodeSignException;
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mSignedFilePath:Ljava/lang/String;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 97
    iput-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mVerificationBytes:[B

    .line 98
    invoke-static {p1, v0}, Lcom/cisco/android/filesignerlib/BinaryFile;->Read(Ljava/lang/String;[B)I

    .line 103
    invoke-virtual {p0}, Lcom/cisco/android/nchs/codesign/VerifySignFile;->GetTlv()Lcom/cisco/android/filesignerlib/CodeSignTlv;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile;->mCsTlv:Lcom/cisco/android/filesignerlib/CodeSignTlv;

    return-void
.end method

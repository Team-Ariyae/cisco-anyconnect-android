.class public Lcom/cisco/anyconnect/vpn/android/io/FileBundler;
.super Ljava/lang/Object;
.source "FileBundler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;
    }
.end annotation


# instance fields
.field private final mFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 88
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->mTempDir:Ljava/io/File;

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->mFileList:Ljava/util/List;

    return-void

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid temp dir specified- either does not exist or is not a directory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null temp dir"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private clearTempFiles()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->mFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 254
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->mFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private getTempFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 74
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->mTempDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addExistingFile(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->addExistingFile(Ljava/io/File;Z)V

    return-void
.end method

.method public addExistingFile(Ljava/io/File;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 143
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 148
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 153
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 166
    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 168
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 169
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 171
    :try_start_2
    invoke-static {p2, v1}, Lcom/cisco/android/nchs/io/FileUtils;->CopyStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, p2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_0
    move-object v0, p2

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :cond_0
    move-object v1, v0

    .line 177
    :goto_1
    :try_start_3
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->mFileList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v1, :cond_2

    .line 188
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_2
    return-void

    :catchall_3
    move-exception p1

    :goto_2
    if-eqz v0, :cond_3

    .line 183
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v1, :cond_4

    .line 188
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 190
    :cond_4
    throw p1

    .line 155
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "input is not a file!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "no permissions to read input file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "input file does not exist"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "unexpected null input"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTextFile(Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;->fileName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 113
    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;->header:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;->header:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    .line 116
    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 119
    :cond_0
    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;->content:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 122
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 125
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->mFileList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 106
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unexpected null TextFile"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createBundle(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 221
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x8

    .line 222
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    const/4 p1, 0x0

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->mFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 228
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 231
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->mTempDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 232
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 233
    invoke-static {v3, v0}, Lcom/cisco/android/nchs/io/FileUtils;->CopyStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 234
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 241
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 244
    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 246
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->clearTempFiles()V

    return-void

    :catchall_1
    move-exception v1

    move-object v3, p1

    move-object p1, v1

    :goto_1
    if-eqz v3, :cond_2

    .line 241
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 244
    :cond_2
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 246
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->clearTempFiles()V

    .line 247
    throw p1

    .line 217
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo v0, "unexpected null input"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

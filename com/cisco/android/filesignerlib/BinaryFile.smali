.class public Lcom/cisco/android/filesignerlib/BinaryFile;
.super Ljava/lang/Object;
.source "BinaryFile.java"


# static fields
.field private static mLogger:Lcom/cisco/android/filesignerlib/LogInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Read(Ljava/lang/String;[B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "IOException "

    const/4 v1, -0x1

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x0

    .line 123
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 144
    sget-object p1, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    if-eqz p1, :cond_2

    .line 146
    sget-object p1, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v2, p0

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v2, p0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 130
    :goto_1
    :try_start_3
    sget-object p0, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    if-eqz p0, :cond_1

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    if-eqz v2, :cond_2

    .line 140
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 144
    sget-object p1, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    if-eqz p1, :cond_2

    .line 146
    sget-object p1, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_2
    return v1

    :goto_3
    if-eqz v2, :cond_3

    .line 140
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 144
    sget-object v1, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    if-eqz v1, :cond_3

    .line 146
    sget-object v1, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V

    .line 150
    :cond_3
    :goto_4
    throw p1

    :cond_4
    :goto_5
    return v1
.end method

.method public static Read(Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "IOException "

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 60
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v3, v2

    new-array v1, v3, [B

    .line 64
    invoke-virtual {p0, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 82
    sget-object v2, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    if-eqz v2, :cond_3

    .line 84
    sget-object v2, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_3

    :catch_2
    move-exception v2

    move-object p0, v1

    .line 68
    :goto_0
    :try_start_3
    sget-object v3, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    if-eqz v3, :cond_1

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    if-eqz v1, :cond_2

    .line 78
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    .line 82
    sget-object v2, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    if-eqz v2, :cond_2

    .line 84
    sget-object v2, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move-object v1, p0

    :cond_3
    :goto_2
    return-object v1

    :goto_3
    if-eqz p0, :cond_4

    .line 78
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 82
    sget-object v2, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    if-eqz v2, :cond_4

    .line 84
    sget-object v2, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V

    .line 88
    :cond_4
    :goto_4
    throw v1
.end method

.method public static ReadNextChunk(Ljava/io/FileInputStream;[B)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 186
    sget-object p1, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    if-eqz p1, :cond_1

    .line 188
    sget-object p1, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public static openFile(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 222
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 228
    sget-object v1, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    if-eqz v1, :cond_1

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static readFromOffsetToEndOfFile(Ljava/lang/String;I)[B
    .locals 6

    const-string v0, "IOException "

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 267
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    int-to-long p0, p1

    cmp-long v5, v3, p0

    if-gez v5, :cond_1

    return-object v1

    .line 274
    :cond_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 275
    :try_start_1
    invoke-virtual {v3, p0, p1}, Ljava/io/FileInputStream;->skip(J)J

    .line 276
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    sub-long/2addr v4, p0

    long-to-int p0, v4

    .line 277
    new-array v1, p0, [B

    .line 278
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 296
    sget-object p1, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    if-eqz p1, :cond_4

    .line 298
    sget-object p1, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_3

    :catch_1
    move-exception p0

    move-object p1, v1

    move-object v1, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    move-object p1, v1

    .line 282
    :goto_0
    :try_start_3
    sget-object v2, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    if-eqz v2, :cond_2

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    if-eqz v1, :cond_3

    .line 292
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    .line 296
    sget-object v1, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    if-eqz v1, :cond_3

    .line 298
    sget-object v1, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V

    :cond_3
    :goto_1
    move-object v1, p1

    :cond_4
    :goto_2
    return-object v1

    :goto_3
    if-eqz v1, :cond_5

    .line 292
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 296
    sget-object v1, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    if-eqz v1, :cond_5

    .line 298
    sget-object v1, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/cisco/android/filesignerlib/LogInterface;->log(Ljava/lang/String;)V

    .line 302
    :cond_5
    :goto_4
    throw p0
.end method

.method public static setLogger(Lcom/cisco/android/filesignerlib/LogInterface;)V
    .locals 0

    .line 27
    sput-object p0, Lcom/cisco/android/filesignerlib/BinaryFile;->mLogger:Lcom/cisco/android/filesignerlib/LogInterface;

    return-void
.end method

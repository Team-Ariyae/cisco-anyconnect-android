.class public final Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils;
.super Ljava/lang/Object;
.source "ProcessUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils$ProcessLaunchException;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final ENTITY_NAME:Ljava/lang/String; = "ProcessUtils"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "ProcessUtils cannot be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static KillPid(Landroid/content/Context;I)V
    .locals 5

    const-string p0, "ProcessUtils"

    const-string v0, "Cmd: "

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kill "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 247
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    .line 248
    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils;->runCmd(Ljava/lang/String;Ljava/lang/StringBuilder;Z)I

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed with ouput: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and ret code: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils$ProcessLaunchException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 257
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception on running cmd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static runCmd(Ljava/lang/String;Ljava/io/File;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils$ProcessLaunchException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 114
    invoke-static {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils;->runCmd(Ljava/lang/String;Ljava/io/File;Z)I

    move-result p0

    return p0
.end method

.method public static runCmd(Ljava/lang/String;Ljava/io/File;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils$ProcessLaunchException;
        }
    .end annotation

    const-string v0, "failed to launch"

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 132
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils;->verifySignature(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 139
    :try_start_0
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/process/ProcessLauncherFactory;->getInstance(Z)Lcom/cisco/anyconnect/vpn/android/process/ProcessLauncher;

    move-result-object p2

    invoke-interface {p2, p0, v1, v1}, Lcom/cisco/anyconnect/vpn/android/process/ProcessLauncher;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 141
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/cisco/android/nchs/io/FileUtils;->CopyStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 142
    invoke-virtual {p2}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 156
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz p2, :cond_0

    .line 166
    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V

    :cond_0
    return p0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object p2, v1

    goto :goto_2

    :catch_3
    move-exception p1

    move-object p2, v1

    .line 147
    :goto_1
    :try_start_4
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils$ProcessLaunchException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, p1}, Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils$ProcessLaunchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :goto_2
    if-eqz v1, :cond_1

    .line 155
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 156
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    nop

    :cond_1
    :goto_3
    if-eqz p2, :cond_2

    .line 166
    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V

    .line 168
    :cond_2
    throw p0

    .line 129
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unexpected null input"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static runCmd(Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils$ProcessLaunchException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 64
    invoke-static {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils;->runCmd(Ljava/lang/String;Ljava/lang/StringBuilder;Z)I

    move-result p0

    return p0
.end method

.method public static runCmd(Ljava/lang/String;Ljava/lang/StringBuilder;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils$ProcessLaunchException;
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 84
    :try_start_0
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/process/ProcessLauncherFactory;->getInstance(Z)Lcom/cisco/anyconnect/vpn/android/process/ProcessLauncher;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, p0, v0, v0}, Lcom/cisco/anyconnect/vpn/android/process/ProcessLauncher;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object p2

    .line 85
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 90
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 94
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-nez v1, :cond_0

    .line 99
    invoke-virtual {p2}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 104
    new-instance p2, Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils$ProcessLaunchException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to launch"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils$ProcessLaunchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 79
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unexpected null input"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p0

    :goto_1
    goto :goto_0
.end method

.method public static runCmdInShell(Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils$ProcessLaunchException;
        }
    .end annotation

    const-string v0, "Command :"

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sh"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-c"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p0, v1, v2

    .line 191
    :try_start_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "ProcessUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x1000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 198
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 201
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 202
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-nez v2, :cond_0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 212
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils$ProcessLaunchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to launch"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils$ProcessLaunchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 182
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unexpected null input"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p0

    :goto_1
    goto :goto_0
.end method

.method private static verifySignature(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils$ProcessLaunchException;
        }
    .end annotation

    const-string v0, "Failed the integrity of: "

    const-string v1, " "

    .line 222
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    .line 226
    :try_start_0
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->isFileSigned(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->getFileSignature(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;->setCatalog([B)Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;->build()Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->verify()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils$ProcessLaunchException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils$ProcessLaunchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .line 237
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils$ProcessLaunchException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils$ProcessLaunchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

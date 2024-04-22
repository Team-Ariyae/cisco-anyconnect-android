.class Lcom/cisco/umbrella/tnd/TNDHandler$PostDeviceIdentityToVA;
.super Ljava/lang/Object;
.source "TNDHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/tnd/TNDHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostDeviceIdentityToVA"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/tnd/TNDHandler;

.field va:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/tnd/TNDHandler;Ljava/lang/String;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/cisco/umbrella/tnd/TNDHandler$PostDeviceIdentityToVA;->this$0:Lcom/cisco/umbrella/tnd/TNDHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p2, p0, Lcom/cisco/umbrella/tnd/TNDHandler$PostDeviceIdentityToVA;->va:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "POST"

    const-string v2, "VA "

    const-string v3, "VERSION=1.0&Type=Login&IP="

    const-string v4, "Exception occurred while posting to VA :"

    const-string v5, "Timeout occurred while posting to VA :"

    const-string v6, "URL was malformed :"

    const-string v7, "https://"

    .line 341
    sget-object v8, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "In getHttpResponse posting to VA : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/cisco/umbrella/tnd/TNDHandler$PostDeviceIdentityToVA;->va:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 345
    :try_start_0
    new-instance v9, Ljava/net/URL;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/cisco/umbrella/tnd/TNDHandler$PostDeviceIdentityToVA;->va:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 348
    :try_start_1
    invoke-virtual {v7, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v8, "Access-Control-Allow-Origin"

    const-string v9, "*"

    .line 349
    invoke-virtual {v7, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Access-Control-Allow-Headers"

    const-string v9, "Cache-Control, Pragma, Origin, Authorization, Content-Type, X-Requested-With"

    .line 350
    invoke-virtual {v7, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Access-Control-Allow-Methods"

    .line 351
    invoke-virtual {v7, v8, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v8, "application/x-www-form-urlencoded"

    .line 352
    invoke-virtual {v7, v0, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 353
    invoke-virtual {v7, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/16 v8, 0xbb8

    .line 354
    invoke-virtual {v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 357
    :try_start_2
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 358
    :try_start_3
    new-instance v9, Ljava/io/OutputStreamWriter;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v8, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 361
    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cisco/umbrella/network/NetworkUtils;->getIPAddress(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/cisco/umbrella/tnd/TNDHandler$PostDeviceIdentityToVA;->this$0:Lcom/cisco/umbrella/tnd/TNDHandler;

    invoke-static {v3}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$1100(Lcom/cisco/umbrella/tnd/TNDHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&Username="

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/cisco/umbrella/tnd/TNDHandler$PostDeviceIdentityToVA;->this$0:Lcom/cisco/umbrella/tnd/TNDHandler;

    invoke-static {v3}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$1200(Lcom/cisco/umbrella/tnd/TNDHandler;)Lcom/cisco/umbrella/registration/RegistrationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cisco/umbrella/registration/RegistrationData;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->flush()V

    .line 364
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 366
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    const/16 v10, 0xc8

    if-ne v3, v10, :cond_5

    .line 370
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 371
    :try_start_5
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 374
    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    const-string v13, "Success!"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 375
    sget-object v13, Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;->UMBRELLA_CONFIG:Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;

    sget-object v14, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$000()Ljava/lang/String;

    move-result-object v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/cisco/umbrella/tnd/TNDHandler$PostDeviceIdentityToVA;->va:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Response body :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Response code :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v14, v15, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logVerboseMessage(Lcom/cisco/anyconnect/vpn/android/util/CustLogComponent;Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 377
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 379
    :try_start_7
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v10, :cond_0

    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 381
    :cond_0
    :try_start_9
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v8, :cond_1

    :try_start_a
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    :cond_1
    if-eqz v7, :cond_2

    .line 392
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_2
    return-object v0

    .line 379
    :cond_3
    :try_start_b
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v10, :cond_5

    :try_start_c
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 369
    :try_start_d
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_e
    invoke-static {v2, v3}, Lkotlinx/coroutines/CoroutineId$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v10, :cond_4

    :try_start_f
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_10
    invoke-static {v2, v3}, Lkotlinx/coroutines/CoroutineId$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 381
    :cond_5
    :goto_2
    :try_start_11
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    if-eqz v8, :cond_7

    :try_start_12
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 356
    :try_start_13
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v3, v0

    :try_start_14
    invoke-static {v2, v3}, Lkotlinx/coroutines/CoroutineId$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    if-eqz v8, :cond_6

    :try_start_15
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    goto :goto_4

    :catchall_7
    move-exception v0

    move-object v3, v0

    :try_start_16
    invoke-static {v2, v3}, Lkotlinx/coroutines/CoroutineId$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw v2
    :try_end_16
    .catch Ljava/net/SocketException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    :catch_0
    move-exception v0

    .line 384
    :try_start_17
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_1
    move-exception v0

    .line 382
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/net/MalformedURLException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    :cond_7
    :goto_5
    if-eqz v7, :cond_8

    .line 392
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_9

    :catchall_8
    move-exception v0

    move-object v8, v7

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v8, v7

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v8, v7

    goto :goto_7

    :catchall_9
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    .line 389
    :goto_6
    :try_start_18
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_8

    goto :goto_8

    :catch_5
    move-exception v0

    .line 387
    :goto_7
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    if-eqz v8, :cond_8

    .line 392
    :goto_8
    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_8
    :goto_9
    const/4 v0, 0x0

    .line 395
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :goto_a
    if-eqz v8, :cond_9

    .line 392
    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 393
    :cond_9
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 329
    invoke-virtual {p0}, Lcom/cisco/umbrella/tnd/TNDHandler$PostDeviceIdentityToVA;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

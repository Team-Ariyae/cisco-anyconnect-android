.class Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$2;
.super Landroid/os/ResultReceiver;
.source "CredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->saveCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$2;->val$username:Ljava/lang/String;

    iput-object p4, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$2;->val$password:Ljava/lang/String;

    iput-object p5, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$2;->val$host:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5

    const-string p2, "Successfully saved credentials for host "

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 278
    :try_start_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$2;->val$username:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$2;->val$password:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 284
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$2;->val$host:Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 285
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;

    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->haveSavedCredentials(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;

    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->deleteCredentials(Ljava/lang/String;)V

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;

    invoke-static {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->-$$Nest$mgetKey(Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;Ljava/lang/String;)Ljava/security/Key;

    move-result-object v1

    if-nez v1, :cond_2

    .line 294
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;

    invoke-static {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->-$$Nest$mgenerateKey(Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;Ljava/lang/String;)Ljava/security/Key;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p1, "Encryption key null, unable to save credentials"

    .line 297
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 302
    :cond_2
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->-$$Nest$fgetmContext(Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "Credentials"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 303
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "host"

    .line 305
    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "username"

    .line 306
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$2;->val$username:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "AES/GCM/NoPadding"

    .line 308
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x1

    .line 309
    invoke-virtual {v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 311
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$2;->val$password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    const-string v4, "password"

    .line 312
    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 314
    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    const-string v3, "iv"

    .line 315
    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 317
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$2;->val$username:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "Unable to save credentials due to empty username or password"

    .line 280
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Exception saving credentials"

    .line 321
    invoke-static {p0, p2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

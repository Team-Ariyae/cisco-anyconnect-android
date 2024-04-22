.class public Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;
.super Ljava/lang/Object;
.source "CredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$ICredentialManagerCB;
    }
.end annotation


# static fields
.field private static final CREDENTIALS_FILENAME:Ljava/lang/String; = "Credentials"

.field private static final HOST_KEY:Ljava/lang/String; = "host"

.field private static final IV_KEY:Ljava/lang/String; = "iv"

.field private static final PASSWORD_KEY:Ljava/lang/String; = "password"

.field private static final USERNAME_KEY:Ljava/lang/String; = "username"


# instance fields
.field private mCB:Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$ICredentialManagerCB;

.field private mContext:Landroid/content/Context;

.field private mKeyStore:Ljava/security/KeyStore;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgenerateKey(Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;Ljava/lang/String;)Ljava/security/Key;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->generateKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCredentials(Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->getCredentials(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetKey(Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;Ljava/lang/String;)Ljava/security/Key;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->getKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$ICredentialManagerCB;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->mCB:Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$ICredentialManagerCB;

    .line 60
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->loadKeystore()Z

    return-void
.end method

.method private authenticateUser(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 2

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.FINGERPRINT_AUTH_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "description"

    .line 187
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "resultReceiver"

    .line 188
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 189
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private generateKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 7

    const-string v0, "Created credential encryption key for "

    :try_start_0
    const-string v1, "AES"

    const-string v2, "AndroidKeyStore"

    .line 152
    invoke-static {v1, v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 154
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 158
    new-instance v2, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v3, 0x3

    invoke-direct {v2, p1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "GCM"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 160
    invoke-virtual {v2, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "NoPadding"

    aput-object v5, v4, v6

    .line 161
    invoke-virtual {v2, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    .line 162
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    const/16 v3, 0x3c

    .line 163
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 167
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const-string v0, "Exception while generating credential encryption key"

    .line 174
    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCredentials(Ljava/lang/String;)V
    .locals 6

    const-string v0, ""

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->mContext:Landroid/content/Context;

    const-string v2, "Credentials"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "iv"

    .line 247
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 248
    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    invoke-direct {v4, v5, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const-string v2, "/"

    .line 250
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v3

    .line 251
    invoke-direct {p0, p1, v4}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->getDecryptCipher(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/Cipher;

    move-result-object p1

    const-string/jumbo v2, "username"

    const/4 v4, 0x0

    .line 253
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "password"

    .line 255
    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 256
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 258
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->mCB:Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$ICredentialManagerCB;

    invoke-interface {p1, v2, v1}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$ICredentialManagerCB;->savedCredentialsCB(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Exception retrieving saved credentials"

    .line 262
    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private getDecryptCipher(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/Cipher;
    .locals 2

    .line 129
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->getKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "AES/GCM/NoPadding"

    .line 134
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 135
    invoke-virtual {v0, v1, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string p2, "Exception while initializing decrypt cipher"

    .line 140
    invoke-static {p0, p2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 3

    const-string v0, "Credential key for "

    .line 91
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->loadKeystore()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 98
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v1, p1, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 105
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    const-string v0, "Exception getting credential encryption key"

    .line 116
    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 111
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key invalidated, deleting saved credentials for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->deleteCredentials(Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method private loadKeystore()Z
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->mKeyStore:Ljava/security/KeyStore;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "AndroidKeyStore"

    .line 72
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->mKeyStore:Ljava/security/KeyStore;

    const/4 v2, 0x0

    .line 73
    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v1, "Exception loading AndroidKeyStore"

    .line 78
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public deleteCredentials(Ljava/lang/String;)V
    .locals 3

    .line 331
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->loadKeystore()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "/"

    .line 336
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->mContext:Landroid/content/Context;

    const-string v2, "Credentials"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "Cleared saved credentials"

    .line 343
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception deleting credential encryption key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getSavedCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const p2, 0x7f11014f

    .line 211
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const v1, 0x7f110150

    .line 217
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v1, "/"

    .line 220
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    .line 222
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;Landroid/os/Handler;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0, p2, v0}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->authenticateUser(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public haveSavedCredentials(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "/"

    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 198
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->mContext:Landroid/content/Context;

    const-string v2, "Credentials"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "host"

    const-string v3, ""

    .line 199
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->getKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public saveCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 271
    new-instance v6, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$2;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager$2;-><init>(Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f11014d

    .line 326
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v6}, Lcom/cisco/anyconnect/vpn/android/service/CredentialManager;->authenticateUser(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-void
.end method

.class public Lcom/cisco/android/nchs/ImportCertToSystemActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "ImportCertToSystemActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "ImportCertToSystemActivity"

.field private static final PKCS12_USER_CERT_IMPORT_PRE_JELLY_BEAN:I = 0x1


# instance fields
.field private mCertName:Ljava/lang/String;

.field private mPkcs12Extracted:Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->mCertName:Ljava/lang/String;

    return-void
.end method

.method public static extractPkcs12(Ljava/lang/String;[B)Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;
    .locals 10

    const-string v0, "NoSuchAlgorithmException"

    const-string v1, "ImportCertToSystemActivity"

    .line 184
    new-instance v2, Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;

    invoke-direct {v2}, Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "PKCS12"

    .line 189
    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 190
    new-instance v5, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-direct {v5, p0}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_5

    .line 193
    :try_start_1
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 194
    invoke-virtual {v5}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object p1

    .line 193
    invoke-virtual {v4, p0, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_5

    .line 212
    :try_start_2
    invoke-virtual {v4}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p0

    .line 214
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-nez p1, :cond_0

    return-object v3

    .line 219
    :cond_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 221
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_5

    .line 224
    :try_start_3
    invoke-virtual {v4, p1, v5}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v6

    .line 225
    sget-object v7, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "extracted alias = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", entry="

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    instance-of p1, v6, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz p1, :cond_0

    .line 229
    check-cast v6, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 230
    invoke-virtual {v6}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p0

    iput-object p0, v2, Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;->mUserKey:Ljava/security/PrivateKey;

    .line 231
    invoke-virtual {v6}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    iput-object p0, v2, Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 233
    invoke-virtual {v6}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object p0

    .line 234
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# certs extracted = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance p1, Ljava/util/ArrayList;

    array-length v4, p0

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, v2, Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;->mCaCerts:Ljava/util/List;

    .line 236
    array-length p1, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_2

    aget-object v5, p0, v4

    .line 238
    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 239
    iget-object v6, v2, Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;->mUserCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v5, v6}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 241
    iget-object v6, v2, Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;->mCaCerts:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 244
    :cond_2
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# ca certs extracted = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;->mCaCerts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_5

    return-object v2

    :catch_0
    move-exception p0

    .line 255
    :try_start_4
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "UnrecoverableEntryException"

    invoke-static {p1, v1, v0, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :catch_1
    move-exception p0

    .line 250
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p1, v1, v0, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :cond_3
    return-object v2

    :catch_2
    move-exception p0

    .line 208
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "CertificateException"

    invoke-static {p1, v1, v0, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :catch_3
    move-exception p0

    .line 203
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p1, v1, v0, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :catch_4
    move-exception p0

    .line 198
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "IOException"

    invoke-static {p1, v1, v0, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_5

    return-object v3

    :catch_5
    move-exception p0

    .line 263
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "KeyStoreException"

    invoke-static {p1, v1, v0, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 117
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Spawned Activity finished. RequestCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImportCertToSystemActivity"

    invoke-static {p3, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    const-string v0, "CertificateEncodingException"

    const-string v2, "CERT"

    const-string v3, "name"

    const/4 v4, 0x0

    if-ne p1, p3, :cond_0

    .line 121
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    move-result-object p1

    .line 122
    iget-object p2, p0, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->mCertName:Ljava/lang/String;

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    :try_start_0
    iget-object p2, p0, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->mPkcs12Extracted:Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;

    iget-object p2, p2, Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;->mUserCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    invoke-virtual {p0, p1, v4}, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :catch_0
    move-exception p1

    .line 129
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p2, v1, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    invoke-virtual {p0, v4}, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->setResult(I)V

    .line 131
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->finish()V

    return-void

    .line 138
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 p3, -0x1

    const-string v5, "com.cisco.android.nchs.KEY_CERT_IMPORT_RESULT"

    if-ne p2, p3, :cond_2

    .line 142
    iget-object p3, p0, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->mPkcs12Extracted:Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;

    if-eqz p3, :cond_1

    iget-object p3, p3, Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;->mCaCerts:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1

    .line 144
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    move-result-object p1

    .line 145
    iget-object p2, p0, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->mCertName:Ljava/lang/String;

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object p2, p0, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->mPkcs12Extracted:Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;

    iget-object p2, p2, Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;->mCaCerts:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 150
    :try_start_1
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    iget-object p2, p0, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->mPkcs12Extracted:Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;

    iget-object p2, p2, Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;->mCaCerts:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 160
    invoke-virtual {p0, p1, v4}, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :catch_1
    move-exception p1

    .line 154
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p2, v1, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    invoke-virtual {p0, v4}, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->setResult(I)V

    .line 156
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->finish()V

    return-void

    .line 164
    :cond_1
    sget-object p3, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_OPERATION_SUCCESS:Lcom/cisco/android/nchs/aidl/CertOpCode;

    invoke-virtual {p3}, Lcom/cisco/android/nchs/aidl/CertOpCode;->ordinal()I

    move-result p3

    invoke-virtual {p1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 168
    sget-object p3, Lcom/cisco/android/nchs/aidl/CertOpCode;->RESULT_CERTIFICATE_IMPORT_CANCELLED_BY_USER:Lcom/cisco/android/nchs/aidl/CertOpCode;

    invoke-virtual {p3}, Lcom/cisco/android/nchs/aidl/CertOpCode;->ordinal()I

    move-result p3

    invoke-virtual {p1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    :cond_3
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->setResult(ILandroid/content/Intent;)V

    .line 172
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "onCreate"

    const-string v1, "ImportCertToSystemActivity"

    .line 65
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "cert_alias"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->mCertName:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "cert_pkcs12"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 70
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "cert_blob"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "cert_password"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "name"

    .line 74
    iget-object v6, p0, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->mCertName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_2

    .line 85
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "htc"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "PKCS12"

    .line 87
    invoke-virtual {v4, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {v3, v0}, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->extractPkcs12(Ljava/lang/String;[B)Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->mPkcs12Extracted:Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;

    if-nez p1, :cond_1

    .line 94
    invoke-virtual {p0, v2}, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->setResult(I)V

    .line 95
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->finish()V

    return-void

    .line 101
    :cond_1
    iget-object p1, p1, Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;->mUserKey:Ljava/security/PrivateKey;

    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object p1

    const-string v0, "PKEY"

    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 102
    iget-object p1, p0, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->mPkcs12Extracted:Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;

    iget-object p1, p1, Lcom/cisco/android/nchs/ImportCertToSystemActivity$ExtractedPkcs12;->mUserCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    const-string v0, "KEY"

    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 104
    :goto_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Importing certificate from PKCS12: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->mCertName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "CERT"

    .line 108
    invoke-virtual {v4, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 109
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Importing certificate: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->mCertName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_1
    invoke-virtual {p0, v4, v2}, Lcom/cisco/android/nchs/ImportCertToSystemActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

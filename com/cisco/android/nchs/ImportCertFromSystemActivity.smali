.class public Lcom/cisco/android/nchs/ImportCertFromSystemActivity;
.super Landroid/app/Activity;
.source "ImportCertFromSystemActivity.java"


# static fields
.field protected static final CERT_ALIAS:Ljava/lang/String; = "cert_alias"

.field protected static final CERT_CATEGORY:Ljava/lang/String; = "cert_category"

.field protected static final CERT_GROUP:Ljava/lang/String; = "cert_group"

.field private static final ENTITY_NAME:Ljava/lang/String; = "ImportCertFromSystemActivity"


# instance fields
.field private final mInvocationHandler:Ljava/lang/reflect/InvocationHandler;


# direct methods
.method static bridge synthetic -$$Nest$monImportFailed(Lcom/cisco/android/nchs/ImportCertFromSystemActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/android/nchs/ImportCertFromSystemActivity;->onImportFailed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monImportSucceeded(Lcom/cisco/android/nchs/ImportCertFromSystemActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/ImportCertFromSystemActivity;->onImportSucceeded(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-instance v0, Lcom/cisco/android/nchs/ImportCertFromSystemActivity$1;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/ImportCertFromSystemActivity$1;-><init>(Lcom/cisco/android/nchs/ImportCertFromSystemActivity;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/ImportCertFromSystemActivity;->mInvocationHandler:Ljava/lang/reflect/InvocationHandler;

    return-void
.end method

.method private onImportFailed()V
    .locals 3

    const-string v0, "onImportFailed"

    .line 152
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.cisco.android.nchs.ACTION_CERT_IMPORT_RESULT"

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-class v1, Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 157
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 159
    new-instance v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    invoke-direct {v2, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    const-string v1, "success"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Lcom/cisco/android/nchs/ImportCertFromSystemActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 161
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ImportCertFromSystemActivity;->finish()V

    return-void
.end method

.method private onImportSucceeded(Ljava/lang/String;)V
    .locals 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onImportSucceeded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.cisco.android.nchs.ACTION_CERT_IMPORT_RESULT"

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-class v1, Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-nez p1, :cond_0

    .line 135
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_USER_CANCELLED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    .line 137
    :goto_0
    new-instance v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    invoke-direct {v2, v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    const-string v1, "success"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ImportCertFromSystemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cert_group"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ImportCertFromSystemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cert_category"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v1, "cert_alias"

    .line 143
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    :cond_1
    invoke-virtual {p0, v0}, Lcom/cisco/android/nchs/ImportCertFromSystemActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 147
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ImportCertFromSystemActivity;->finish()V

    return-void
.end method

.method private requestImport()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "requestImport start"

    .line 97
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.security.KeyChainAliasCallback"

    .line 98
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 99
    const-class v1, Lcom/cisco/android/nchs/ImportCertFromSystemActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v5, p0, Lcom/cisco/android/nchs/ImportCertFromSystemActivity;->mInvocationHandler:Ljava/lang/reflect/InvocationHandler;

    invoke-static {v1, v3, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "android.security.KeyChain"

    .line 103
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x7

    new-array v6, v5, [Ljava/lang/Class;

    .line 105
    const-class v7, Landroid/app/Activity;

    aput-object v7, v6, v4

    aput-object v0, v6, v2

    const-class v0, [Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const-class v0, [Ljava/security/Principal;

    const/4 v8, 0x3

    aput-object v0, v6, v8

    const-class v0, Ljava/lang/String;

    const/4 v9, 0x4

    aput-object v0, v6, v9

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x5

    aput-object v0, v6, v10

    const-class v0, Ljava/lang/String;

    const/4 v11, 0x6

    aput-object v0, v6, v11

    const-string v0, "choosePrivateKeyAlias"

    .line 113
    invoke-virtual {v3, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v6, v7, [Ljava/lang/String;

    const-string v12, "RSA"

    aput-object v12, v6, v4

    const-string v12, "EC"

    aput-object v12, v6, v2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    aput-object v1, v5, v2

    aput-object v6, v5, v7

    const/4 v1, 0x0

    aput-object v1, v5, v8

    aput-object v1, v5, v9

    const/4 v1, -0x1

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v10

    .line 122
    invoke-virtual {p0}, Lcom/cisco/android/nchs/ImportCertFromSystemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cert_alias"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v11

    .line 124
    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/android/nchs/ImportCertFromSystemActivity;->requestImport()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ImportCertFromSystemActivity"

    const-string v2, "Failed to request import."

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    invoke-direct {p0}, Lcom/cisco/android/nchs/ImportCertFromSystemActivity;->onImportFailed()V

    :goto_0
    return-void
.end method

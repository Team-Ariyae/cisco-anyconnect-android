.class public Lcom/cisco/android/nchs/NCHSProxyActivity;
.super Landroid/app/Activity;
.source "NCHSProxyActivity.java"


# static fields
.field private static final DELETE_ID:I = 0x42

.field private static final ENTITY_NAME:Ljava/lang/String; = "NCHSProxyActivity"

.field private static final INSTALL_ID:I = 0x21

.field private static final START_ACTIVITY_ID:I = 0x63


# instance fields
.field private mOperationCompletedSuccessfully:Z

.field private mPackageID:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResultAction:Landroid/content/Intent;

.field private mTargetIPCServer:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPackageID(Lcom/cisco/android/nchs/NCHSProxyActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/NCHSProxyActivity;->mPackageID:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmOperationCompletedSuccessfully(Lcom/cisco/android/nchs/NCHSProxyActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/android/nchs/NCHSProxyActivity;->mOperationCompletedSuccessfully:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getFailIntent()Landroid/content/Intent;
    .locals 3

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.android.nchs.NCHS_EXTERNAL_OPERATION_FAILED_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "KEY_IPC_TARGET_SERVER"

    .line 62
    iget-object v2, p0, Lcom/cisco/android/nchs/NCHSProxyActivity;->mTargetIPCServer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "KEY_IPC_TARGET_SERVER"

    .line 270
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/android/nchs/NCHSProxyActivity;->mTargetIPCServer:Ljava/lang/String;

    const-string v1, "NCHSProxyActivity"

    if-nez v0, :cond_0

    .line 273
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "No target IPC server passed, cannot start activity."

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->getFailIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 275
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->finish()V

    return-void

    :cond_0
    const-string v0, "KEY_RECEIVER"

    .line 279
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/cisco/android/nchs/NCHSProxyActivity;->mResultAction:Landroid/content/Intent;

    const-string v0, "proxy_action"

    .line 281
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 284
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "no action passed"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-direct {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->getFailIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 287
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->finish()V

    return-void

    :cond_1
    const-string v2, "start_activity"

    .line 291
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "packageID"

    .line 293
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cisco/android/nchs/NCHSProxyActivity;->mPackageID:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 296
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "no packageID passed"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-direct {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->getFailIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 299
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->finish()V

    return-void

    .line 304
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->initBroadcastReceiver(Ljava/lang/String;Landroid/content/Intent;)V

    const-string v3, "install"

    .line 306
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 308
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->performInstall(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v3, "delete"

    .line 310
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 312
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->performDelete(Landroid/content/Intent;)V

    goto :goto_0

    .line 314
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "intent_action"

    .line 316
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 319
    invoke-direct {p0, v0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->performStartActivity(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "intent_key"

    .line 323
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-nez p1, :cond_6

    .line 326
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "No intent action passed, cannot start activity."

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-direct {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->getFailIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 328
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->finish()V

    return-void

    .line 332
    :cond_6
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->performStartActivity(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 334
    invoke-direct {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->getFailIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 335
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->finish()V

    :cond_7
    :goto_0
    return-void

    .line 342
    :cond_8
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo v0, "unknown action passed"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-direct {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->getFailIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 344
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->finish()V

    return-void
.end method

.method private initBroadcastReceiver(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2

    const-string p2, "install"

    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "package"

    const-string v1, "android.intent.category.DEFAULT"

    if-eqz p2, :cond_0

    .line 124
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.PACKAGE_ADDED"

    .line 125
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.PACKAGE_REPLACED"

    .line 126
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "delete"

    .line 130
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 132
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    .line 133
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 152
    :goto_0
    new-instance p2, Lcom/cisco/android/nchs/NCHSProxyActivity$1;

    invoke-direct {p2, p0}, Lcom/cisco/android/nchs/NCHSProxyActivity$1;-><init>(Lcom/cisco/android/nchs/NCHSProxyActivity;)V

    iput-object p2, p0, Lcom/cisco/android/nchs/NCHSProxyActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    invoke-virtual {p0, p2, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_1
    const-string p2, "start_activity"

    .line 137
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 144
    :cond_2
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "NCHSProxyActivity"

    const-string v0, "Unknown action passed to initBroadcastReceiver"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->getFailIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->finish()V

    return-void
.end method

.method private performDelete(Landroid/content/Intent;)V
    .locals 2

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 p1, 0x42

    .line 76
    invoke-virtual {p0, v0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private performInstall(Landroid/content/Intent;)V
    .locals 2

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x21

    .line 70
    invoke-virtual {p0, v0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private performStartActivity(Ljava/lang/String;)V
    .locals 4

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    const-string v1, "NCHSProxyActivity"

    if-nez p1, :cond_0

    .line 85
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "intent action passed is not valid (no activities respond to it)"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->getFailIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->finish()V

    return-void

    :cond_0
    const/16 p1, 0x63

    .line 94
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 98
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "activity can\'t be started"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->getFailIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->finish()V

    :goto_0
    return-void
.end method

.method private performStartActivity(Landroid/content/Intent;)Z
    .locals 3

    const/16 v0, 0x63

    .line 109
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 113
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activity can\'t be started"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NCHSProxyActivity"

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private wasLaunchedFromRecents()Z
    .locals 2

    .line 183
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 189
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Spawned Activity finished. RequestCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NCHSProxyActivity"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x63

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    .line 199
    iput-boolean p1, p0, Lcom/cisco/android/nchs/NCHSProxyActivity;->mOperationCompletedSuccessfully:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 203
    iput-boolean p1, p0, Lcom/cisco/android/nchs/NCHSProxyActivity;->mOperationCompletedSuccessfully:Z

    .line 217
    :goto_0
    iget-boolean p1, p0, Lcom/cisco/android/nchs/NCHSProxyActivity;->mOperationCompletedSuccessfully:Z

    if-eqz p1, :cond_2

    .line 219
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.cisco.android.nchs.NCHS_EXTERNAL_OPERATION_COMPLETED_INTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.cisco.android.nchs.NCHS_EXTERNAL_OPERATION_FAILED_INTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string p2, "KEY_IPC_TARGET_SERVER"

    .line 227
    iget-object v0, p0, Lcom/cisco/android/nchs/NCHSProxyActivity;->mTargetIPCServer:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object p2, p0, Lcom/cisco/android/nchs/NCHSProxyActivity;->mResultAction:Landroid/content/Intent;

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    const-string v0, "KEY_RETURN_CODE"

    .line 232
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    const-string p2, "KEY_RECEIVER"

    .line 234
    iget-object p3, p0, Lcom/cisco/android/nchs/NCHSProxyActivity;->mResultAction:Landroid/content/Intent;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 238
    :cond_4
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 246
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "NCHSProxyActivity"

    const-string v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 249
    invoke-direct {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->wasLaunchedFromRecents()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Launched from recents. Redirecting to Home"

    .line 251
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 253
    const-class v0, Lcom/cisco/anyconnect/ui/PrimaryActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    .line 254
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.LAUNCHER"

    .line 255
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->startActivity(Landroid/content/Intent;)V

    .line 257
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->finish()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 262
    iput-boolean p1, p0, Lcom/cisco/android/nchs/NCHSProxyActivity;->mOperationCompletedSuccessfully:Z

    .line 264
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 265
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 352
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 353
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "NCHSProxyActivity"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/cisco/android/nchs/NCHSProxyActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0, v0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 364
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 365
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNewIntent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NCHSProxyActivity"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NCHSProxyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->setIntent(Landroid/content/Intent;)V

    .line 372
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->handleIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/NCHSProxyActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

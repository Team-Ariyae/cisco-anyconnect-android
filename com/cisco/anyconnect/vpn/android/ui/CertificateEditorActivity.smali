.class public Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "CertificateEditorActivity.java"


# static fields
.field private static final CONTEXT_MENU_CERT_DETAILS_ID:I = 0x0

.field private static final ENTITY_NAME:Ljava/lang/String; = "CertificateEditorActivity"

.field private static final IMPORT_CERTIFICATE_REQUEST:I = 0x1


# instance fields
.field private mCertAuthMode:Ljava/lang/String;

.field private mCertList:Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;

.field private mCertListener:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

.field private mContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;

.field mListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOriginalSelectedHash:[B

.field private mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCertAuthMode(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mCertAuthMode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCertList(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mCertList:Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCertListener(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mCertListener:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListAdapter(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOriginalSelectedHash(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)[B
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mOriginalSelectedHash:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCertList(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mCertList:Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmListAdapter(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    .line 343
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$5;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$5;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    const-string p1, "cert_hash"

    .line 304
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 307
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mOriginalSelectedHash:[B

    .line 309
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object p1

    const-string p2, "CertificateEditorActivity"

    if-nez p1, :cond_0

    .line 312
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "Unexpected null VpnService"

    invoke-static {p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 318
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetClientCertificates()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 321
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;

    if-nez p1, :cond_1

    const-string p1, "Unexpected null list adapter"

    .line 323
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 327
    :cond_1
    sget-object p3, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-virtual {p1, p3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->setCertAuthMethod(Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;)V

    goto :goto_0

    .line 331
    :cond_2
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "GetClientCertificates failed"

    invoke-static {p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 336
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Unexpected RemoteException"

    invoke-static {p3, p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mOriginalSelectedHash:[B

    if-eqz v0, :cond_0

    .line 379
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "CertAuthMode"

    .line 380
    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 381
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mListAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;

    .line 382
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->getSelectedCert()Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    move-result-object v1

    const-string v2, "SelectedCertificate"

    .line 381
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 384
    invoke-virtual {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 387
    :cond_0
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "onCreate()"

    const-string v1, "CertificateEditorActivity"

    .line 72
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "CertHash"

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mOriginalSelectedHash:[B

    const-string v0, "CertAuthMode"

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mCertAuthMode:Ljava/lang/String;

    .line 83
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mCertAuthMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mOriginalSelectedHash:[B

    .line 88
    :cond_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "hash passed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mOriginalSelectedHash:[B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cert auth mode passed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mCertAuthMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_1
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mCertListener:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    .line 170
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 219
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;Landroid/content/Context;)V

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    .line 271
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Activate()Z

    move-result p1

    if-nez p1, :cond_2

    .line 275
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "ServiceConnMgr.Activate failed"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f110139

    .line 276
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_2
    const p1, 0x7f0d002d

    .line 280
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->setContentView(I)V

    const p1, 0x7f0a00a7

    .line 283
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 284
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$4;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$4;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x102000a

    .line 293
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 294
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "CertificateEditorActivity"

    const-string v1, "onDestroy()"

    .line 423
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Deactivate()V

    .line 425
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->OnVisibilityChange(Z)V

    const-string v0, "CertificateEditorActivity"

    const-string v1, "onPause()"

    .line 416
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    const-string v0, "CertificateEditorActivity"

    const-string v1, "onRestart()"

    .line 400
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "CertificateEditorActivity"

    const-string v1, "onResume()"

    .line 407
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->OnVisibilityChange(Z)V

    .line 409
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "CertificateEditorActivity"

    const-string v1, "onStop()"

    .line 393
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onStop()V

    return-void
.end method

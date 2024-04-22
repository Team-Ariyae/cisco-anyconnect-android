.class public Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;
.source "ProfileManagementActivity.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;
    }
.end annotation


# static fields
.field private static final CERT_IMPORT_URI_KEY:Ljava/lang/String; = "uri_profile"

.field private static final ENTITY_NAME:Ljava/lang/String; = "ProfileManagmentActivity"

.field private static final MAX_DISPLAY_PROFILE_SIZE:I = 0xc350

.field private static final MIN_URI_LEN:I = 0x4

.field private static final PROFILE_DELETE_REQUEST_ID:I = 0x7

.field private static final PROFILE_FILE_IMPORT_REQUEST_ID:I = 0x6

.field private static final PROFILE_URI_IMPORT_REQUEST_ID:I = 0x5


# instance fields
.field private mAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;

.field private mDeleteButtonListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mExitInProgress:Z

.field private mExpandableProfile:Landroid/widget/ExpandableListView;

.field private mImportButtonListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;

.field private mImportURIStr:Ljava/lang/String;

.field private mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private mUriImportDialog:Landroidx/appcompat/app/AlertDialog;

.field private mVPNServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

.field private mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExitInProgress(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mExitInProgress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmExpandableProfile(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;)Landroid/widget/ExpandableListView;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mExpandableProfile:Landroid/widget/ExpandableListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVpnService(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDialog(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmExitInProgress(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mExitInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVpnService(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearPopups(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->clearPopups()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetProfileContents(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->getProfileContents()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mimportURIpopup(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->importURIpopup()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetImportURI(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->setImportURI(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartFilePickerImport(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->startFilePickerImport()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mExitInProgress:Z

    .line 106
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mDeleteButtonListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;

    .line 161
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mImportButtonListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;

    .line 304
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$5;

    invoke-direct {v1, p0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$5;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mVPNServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    return-void
.end method

.method private clearPopups()V
    .locals 2

    const-string v0, "ProfileManagmentActivity"

    const-string v1, "clearPopups"

    .line 523
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mUriImportDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 531
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mSpinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 536
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method private exitActivity(ZLjava/lang/String;)V
    .locals 2

    const-string v0, "ProfileManagmentActivity"

    const-string v1, "exitActivity"

    .line 449
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$6;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getProfileContents()V
    .locals 7

    .line 328
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    const-string v1, "ProfileManagmentActivity"

    if-nez v0, :cond_0

    .line 330
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo v2, "unexpected null VPNservice in getProfileContents"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f110139

    .line 331
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 337
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetCurrentProfileContents()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-eqz v0, :cond_2

    const-string v4, ""

    .line 338
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 340
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->getAdapter()Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;->setToolEnabled(IZ)Z

    .line 341
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const v5, 0xc350

    if-le v4, v5, :cond_1

    .line 343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f1102e8

    invoke-static {v6}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->updateProfileView(Ljava/lang/String;)V

    .line 346
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Profile Too Large, truncated before displaying"

    invoke-static {v0, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->updateProfileView(Ljava/lang/String;)V

    .line 363
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->isDisconnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 365
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->getAdapter()Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;->setToolEnabled(IZ)Z

    goto :goto_1

    .line 355
    :cond_2
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->getAdapter()Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;->setToolEnabled(IZ)Z

    const v0, 0x7f110205

    .line 358
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->updateProfileView(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 376
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "large profile truncation error"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    .line 370
    :catch_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "remote exception thrown trying to get profile contents"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f1100ed

    .line 371
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private importProfileFromFile(Landroid/content/Intent;)V
    .locals 7

    .line 382
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-direct {v0, p0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V

    .line 383
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const v3, 0x7f110204

    const/4 v4, 0x0

    const-string v5, "null file returned from FilePickerActivity"

    const-string v6, "ProfileManagmentActivity"

    if-ge v1, v2, :cond_1

    const-string v1, "handleCertFileLocationResult"

    .line 385
    invoke-static {v6, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PICKED_FILE"

    .line 386
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 389
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p1, v6, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->exitActivity(ZLjava/lang/String;)V

    return-void

    .line 394
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->file:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    invoke-virtual {v0, p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->processImport(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;)Z

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 402
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 407
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p1, v6, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->exitActivity(ZLjava/lang/String;)V

    return-void

    .line 412
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->file:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    invoke-virtual {v0, p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->processImport(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;)Z

    :goto_1
    return-void
.end method

.method private importProfileFromUri()V
    .locals 4

    const v0, 0x7f110260

    .line 421
    :try_start_0
    new-instance v1, Ljava/net/URI;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mImportURIStr:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 433
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 437
    :cond_0
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-direct {v0, p0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V

    .line 439
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mImportURIStr:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->processImport(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;)Z

    return-void

    :catch_0
    move-exception v1

    .line 425
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    .line 426
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "ProfileManagmentActivity"

    const-string v3, "Invalid URI specified."

    invoke-static {v0, v2, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private importURIpopup()V
    .locals 5

    .line 236
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00d3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 238
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v2, 0x7f120131

    invoke-direct {v1, p0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f110262

    .line 239
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 240
    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v2, 0x7f0a02f6

    .line 242
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 243
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;

    const-string/jumbo v3, "uri_profile"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;->GetStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mImportURIStr:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v3, 0x4

    .line 244
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mImportURIStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_0
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;Landroid/widget/EditText;)V

    const v0, 0x7f110221

    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 259
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$4;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$4;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;)V

    const v2, 0x7f110050

    invoke-virtual {v1, v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 266
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mUriImportDialog:Landroidx/appcompat/app/AlertDialog;

    .line 267
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private setImportURI(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mImportURIStr:Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;

    const-string/jumbo v1, "uri_profile"

    invoke-virtual {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;->SetStringProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 282
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->importProfileFromUri()V

    return-void

    :cond_1
    :goto_0
    const p1, 0x7f110260

    .line 274
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    .line 275
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "ProfileManagmentActivity"

    const-string v1, "Unexpected null or empty URL"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startFilePickerImport()V
    .locals 3

    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.FILE_PICKER_SHOW_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x7f11025f

    .line 218
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "INSTRUCTION_TEXT"

    .line 217
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 223
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    .line 225
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/4 v1, 0x6

    .line 228
    invoke-virtual {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public ImportAlertCB(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    const-string v0, "ProfileManagmentActivity"

    const-string v1, "ImportAlertCB"

    .line 598
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$8;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p3, "ProfileManagmentActivity"

    const-string v0, "ImportEndCB"

    .line 570
    invoke-static {p3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    new-instance p3, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$7;

    invoke-direct {p3, p0, p2, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$7;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;Ljava/lang/String;Z)V

    invoke-virtual {p0, p3}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ImportStartCB(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ProfileManagmentActivity"

    const-string v1, "ImportStartCB"

    .line 564
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 565
    invoke-static {p0, v0, p1, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mSpinner:Landroid/app/ProgressDialog;

    return-void
.end method

.method public LaunchActivityOrService(Landroid/content/Intent;Z)V
    .locals 1

    .line 617
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "ProfileManagmentActivity"

    const-string v0, "LaunchActivityOrService called unexpectedly"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public RegisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z
    .locals 2

    .line 635
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "ProfileManagmentActivity"

    const-string v1, "RegisterCertificateListener called unexpectedly"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public RegisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z
    .locals 2

    .line 623
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "ProfileManagmentActivity"

    const-string v1, "RegisterPromptHandler called unexpectedly"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public UnregisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z
    .locals 2

    .line 641
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "ProfileManagmentActivity"

    const-string v1, "UnregisterCertificateListener called unexpectedly"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public UnregisterPromptHandler()Z
    .locals 3

    .line 629
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ProfileManagmentActivity"

    const-string v2, "UnregisterPromptHandler called unexpectedly"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected initializeToolList()Ljava/util/LinkedList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 543
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 544
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f11025f

    .line 546
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "INSTRUCTION_TEXT"

    .line 545
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;

    const v3, 0x7f1102dd

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v3, 0x7f1102dc

    .line 549
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    iget-object v9, v0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mImportButtonListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;)V

    .line 548
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 554
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;

    const v3, 0x7f1102cf

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v3, 0x7f1102ce

    .line 555
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x7

    iget-object v15, v0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mDeleteButtonListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;

    const/16 v16, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;)V

    .line 554
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-string v0, "ProfileManagmentActivity"

    const-string v1, "onActivityResult"

    .line 288
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq v0, p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    return-void

    .line 298
    :cond_1
    invoke-direct {p0, p3}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->importProfileFromFile(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "onCreate()"

    const-string v1, "ProfileManagmentActivity"

    .line 480
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0d00b3

    .line 481
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->setLayoutResource(I)V

    .line 482
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 484
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;

    const-string v0, "UserPreferences"

    const/4 v2, 0x0

    .line 485
    invoke-virtual {p0, v0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;

    .line 487
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mVPNServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Activate()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f110139

    .line 490
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_0
    const p1, 0x7f0a01c4

    .line 494
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 495
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const p1, 0x7f0a0156

    .line 497
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ExpandableListView;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mExpandableProfile:Landroid/widget/ExpandableListView;

    if-nez p1, :cond_1

    const p1, 0x7f11012d

    .line 500
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    .line 501
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "failed to get expandable list view"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 505
    :cond_1
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;

    .line 506
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mExpandableProfile:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 507
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mExpandableProfile:Landroid/widget/ExpandableListView;

    invoke-virtual {p1, v2}, Landroid/widget/ExpandableListView;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 515
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->onDestroy()V

    .line 517
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mVPNServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Deactivate()V

    .line 518
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->clearPopups()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 648
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->onResume()V

    .line 650
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    if-eqz v0, :cond_0

    .line 652
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->getProfileContents()V

    :cond_0
    return-void
.end method

.method updateProfileView(Ljava/lang/String;)V
    .locals 2

    .line 659
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 660
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;->PROFILE_CONTENT:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$ProfileContentItem;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->mAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter;->update(Ljava/util/Map;)V

    return-void
.end method

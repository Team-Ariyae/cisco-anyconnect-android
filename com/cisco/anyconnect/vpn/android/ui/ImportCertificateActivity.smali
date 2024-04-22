.class public Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "ImportCertificateActivity.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "ImportCertificateActivity"

.field private static final REQUEST_CERT_IMPORT_FILE_LOCATION:I = 0x4d

.field private static final REQUEST_CERT_IMPORT_URI:I = 0x4e


# instance fields
.field private mCurrentPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mDisplayedCertImportOptions:Z

.field private mIsPromptHandlerRegistered:Z

.field private mMenuDialog:Landroidx/appcompat/app/AlertDialog;

.field private mNcss:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

.field mNcssConnection:Landroid/content/ServiceConnection;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

.field mVpnServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpinner(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mSpinner:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDialog(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNcss(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mNcss:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVpnService(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    return-void
.end method

.method static bridge synthetic -$$Nest$monImportFailed(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->onImportFailed(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monImportSucceeded(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->onImportSucceeded([B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartFilePickerImport(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->startFilePickerImport()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartKeyChainImport(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->startKeyChainImport()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartUriImport(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->startUriImport()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 94
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mNcssConnection:Landroid/content/ServiceConnection;

    .line 108
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mVpnServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private displayCertImportOptions()V
    .locals 3

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f110176

    .line 215
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f110177

    .line 216
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f110175

    .line 221
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v2, 0x7f120131

    invoke-direct {v1, p0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f110179

    .line 226
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 227
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$3;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 236
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$4;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$4;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 265
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mMenuDialog:Landroidx/appcompat/app/AlertDialog;

    .line 266
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private finishFilePickerImport(Landroid/content/Intent;)V
    .locals 6

    .line 596
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-direct {v0, p0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V

    .line 597
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const v3, 0x7f110200

    const-string v4, "null file returned from FilePickerActivity"

    const-string v5, "ImportCertificateActivity"

    if-ge v1, v2, :cond_1

    const-string v1, "PICKED_FILE"

    .line 599
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 603
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p1, v5, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 608
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->pkcs12:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->file:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    invoke-virtual {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->processImport(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 616
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 621
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p1, v5, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 626
    :cond_3
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->pkcs12:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->file:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->processImport(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;Ljava/lang/String;)Z

    :goto_1
    return-void
.end method

.method private finishUriImport(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "Encoded URL: "

    const-string/jumbo v1, "uri"

    .line 632
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ImportCertificateActivity"

    const v2, 0x7f11009e

    if-nez p1, :cond_0

    .line 635
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    .line 636
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Unexpected null URL"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v3, 0x2f

    .line 643
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 644
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 645
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 658
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 662
    :cond_1
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-direct {v1, p0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V

    .line 664
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->pkcs12:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->processImport(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;Ljava/lang/String;)Z

    return-void

    :catch_0
    move-exception p1

    .line 650
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    .line 651
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Invalid URI specified."

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private onImportFailed(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->setResult(I)V

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 184
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->finish()V

    :goto_0
    return-void
.end method

.method private onImportSucceeded([B)V
    .locals 2

    .line 390
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cert_hash"

    .line 391
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 393
    invoke-virtual {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->setResult(ILandroid/content/Intent;)V

    .line 395
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->finish()V

    return-void
.end method

.method private startFilePickerImport()V
    .locals 3

    .line 297
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.FILE_PICKER_SHOW_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x7f11009c

    .line 302
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "INSTRUCTION_TEXT"

    .line 301
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 307
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 308
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    .line 309
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/16 v1, 0x4d

    .line 312
    invoke-virtual {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startKeyChainImport()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mNcss:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    const-string v1, "ImportCertificateActivity"

    if-eqz v0, :cond_0

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mNcss:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;)V

    const/4 v3, 0x0

    invoke-interface {v0, v3, v3, v3, v2}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->RequestClientCertFromSystem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/IImportClientCertCB;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->checkCertImportError(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    const v0, 0x7f110236

    .line 379
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v3, v0, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mSpinner:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 383
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "RemoteException on ImportClientCert."

    invoke-static {v2, v1, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException;

    const v1, 0x7f110173

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Unexpected null NCSS"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException;

    const v1, 0x7f110172

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startUriImport()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException;
        }
    .end annotation

    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.CERTIFICATE_URI_IMPORT_SHOW_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x4e

    .line 322
    invoke-virtual {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public ImportAlertCB(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 578
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$7;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

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

    .line 431
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$6;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;ZLjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ImportStartCB(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 426
    invoke-static {p0, v0, p1, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mSpinner:Landroid/app/ProgressDialog;

    return-void
.end method

.method public LaunchActivityOrService(Landroid/content/Intent;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 566
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 570
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public RegisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z
    .locals 3

    const-string v0, "ImportCertificateActivity"

    const/4 v1, 0x0

    .line 526
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 528
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RegisterCertificateListener failed"

    invoke-static {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 536
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RemoteException occurred while registering callbacks"

    invoke-static {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public RegisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z
    .locals 3

    const-string v0, "ImportCertificateActivity"

    .line 465
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mIsPromptHandlerRegistered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 469
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-interface {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 472
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "RegisterPromptHandler failed"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f11013c

    .line 473
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v1, 0x1

    .line 477
    iput-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mIsPromptHandlerRegistered:Z

    .line 478
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mCurrentPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 483
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "RemoteException occurred while registering promptHandler"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v2
.end method

.method public UnregisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z
    .locals 3

    const-string v0, "ImportCertificateActivity"

    const/4 v1, 0x0

    .line 546
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 548
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "UnregisterCertificateListener failed"

    invoke-static {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 556
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RemoteException occurred while unregistering callbacks"

    invoke-static {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public UnregisterPromptHandler()Z
    .locals 5

    const-string v0, "ImportCertificateActivity"

    .line 492
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mIsPromptHandlerRegistered:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mCurrentPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    .line 498
    :try_start_0
    invoke-interface {v3, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 501
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "UnregisterPromptHandler failed"

    invoke-static {v1, v0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    :goto_0
    iput-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mIsPromptHandlerRegistered:Z

    .line 515
    iput-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mCurrentPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    return v2

    .line 514
    :cond_0
    iput-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mIsPromptHandlerRegistered:Z

    .line 515
    iput-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mCurrentPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    const/4 v0, 0x1

    return v0

    .line 509
    :catch_0
    :try_start_1
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "RemoteException on UnregisterPromptHandler"

    invoke-static {v1, v0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 514
    iput-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mIsPromptHandlerRegistered:Z

    .line 515
    iput-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mCurrentPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    .line 516
    throw v0

    :cond_1
    return v2
.end method

.method protected checkCertImportError(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException;
        }
    .end annotation

    .line 400
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-ne v0, p1, :cond_0

    return-void

    .line 405
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$8;->$SwitchMap$com$cisco$android$nchs$aidl$NCHSReturnCode:[I

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 414
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException;

    const v0, 0x7f110173

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 412
    :cond_1
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException;

    const-string v0, ""

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 410
    :cond_2
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException;

    const v0, 0x7f110171

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 408
    :cond_3
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException;

    const v0, 0x7f110174

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-eq v0, p2, :cond_0

    const-string p1, ""

    .line 274
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->onImportFailed(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 p2, 0x4d

    if-eq p1, p2, :cond_2

    const/16 p2, 0x4e

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 284
    :cond_1
    invoke-direct {p0, p3}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->finishUriImport(Landroid/content/Intent;)V

    goto :goto_0

    .line 281
    :cond_2
    invoke-direct {p0, p3}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->finishFilePickerImport(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 125
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    const-class v0, Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mNcssConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    const v0, 0x7f110172

    if-nez p1, :cond_0

    .line 137
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->onImportFailed(Ljava/lang/String;)V

    return-void

    .line 141
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mVpnServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1, v2, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 147
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->onImportFailed(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 155
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 157
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mMenuDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mMenuDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mMenuDialog:Landroidx/appcompat/app/AlertDialog;

    .line 168
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mNcssConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 173
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mVpnServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onServiceBound()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mNcss:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    if-nez v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mDisplayedCertImportOptions:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mDisplayedCertImportOptions:Z

    .line 209
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->displayCertImportOptions()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 4

    const-string v0, "ImportCertificateActivity"

    .line 696
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 698
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mCurrentPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    if-eqz v1, :cond_1

    .line 700
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mIsPromptHandlerRegistered:Z

    if-nez v3, :cond_1

    const v3, 0x7f11013c

    .line 704
    :try_start_0
    invoke-interface {v2, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 707
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RegisterPromptHandler failed"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 719
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mIsPromptHandlerRegistered:Z

    goto :goto_0

    .line 714
    :catch_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RemoteException on RegisterPromptHandler"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 4

    const-string v0, "ImportCertificateActivity"

    .line 670
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 672
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mCurrentPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mIsPromptHandlerRegistered:Z

    if-eqz v3, :cond_1

    .line 676
    :try_start_0
    invoke-interface {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 679
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "UnregisterPromptHandler failed"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 689
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->mIsPromptHandlerRegistered:Z

    goto :goto_0

    .line 685
    :catch_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RemoteException on UnregisterPromptHandler"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

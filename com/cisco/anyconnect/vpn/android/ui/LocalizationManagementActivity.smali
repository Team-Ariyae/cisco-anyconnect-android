.class public Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;
.source "LocalizationManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "LocalizationManagmentActivity"


# instance fields
.field private mCurrentOp:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mImportListener:Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

.field private mServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

.field private onToolResult:Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;


# direct methods
.method static bridge synthetic -$$Nest$fgetmImportListener(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;)Lcom/cisco/anyconnect/vpn/android/service/IImportListener;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->mImportListener:Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDialog(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVpnService(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    return-void
.end method

.method static bridge synthetic -$$Nest$monOperationFinished(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->onOperationFinished(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monRequestOperation(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->onRequestOperation(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpopulateLocaleList(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->populateLocaleList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestOperation(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->requestOperation(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;-><init>()V

    .line 118
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->mImportListener:Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

    .line 351
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$4;

    invoke-direct {v1, p0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$4;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->mServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    .line 409
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$5;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$5;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->onToolResult:Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;

    return-void
.end method

.method private importServerLocalization(Landroid/content/Intent;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "address"

    .line 177
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "langcode"

    .line 178
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-interface {v1, v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->ImportServerL10nData(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    return-object p1

    .line 182
    :cond_1
    :goto_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "LocalizationManagmentActivity"

    const-string v1, "importSGLocalization failed due to null data"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->OPERATION_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1
.end method

.method private onOperationFinished(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;Z)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->mCurrentOp:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->mCurrentOp:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    .line 159
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->mSpinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    if-nez p2, :cond_2

    .line 166
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->getFailureMsg()I

    move-result p2

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    .line 167
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Operation failed for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalizationManagmentActivity"

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 171
    :cond_2
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->mChangeListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;->ApplyChanges()V

    .line 172
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->getSuccessMsg()I

    move-result p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private onRequestOperation(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;Landroid/content/Intent;)V
    .locals 3

    .line 247
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->shouldPrompt()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->requestOperation(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;Landroid/content/Intent;)V

    return-void

    .line 253
    :cond_0
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f120131

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 254
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->getPromptMsg()I

    move-result v1

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f1102d1

    .line 257
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const/4 v1, 0x1

    .line 258
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f110343

    .line 260
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const p1, 0x7f1101fc

    .line 269
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$3;

    invoke-direct {p2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 278
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 279
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private populateLocaleList()V
    .locals 8

    const-string v0, "LocalizationManagmentActivity"

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->mServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v1

    .line 289
    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetAvailableLocales()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    const v1, 0x7f110195

    .line 293
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    .line 294
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Failed to get list of available locales"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 299
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 301
    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetActiveLocale()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const v1, 0x7f110194

    .line 305
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Failed to get the active locale"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const v3, 0x7f110198

    .line 311
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 312
    invoke-interface {v2, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 313
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    move-object v1, v3

    :cond_2
    const v3, 0x7f0a01d1

    .line 319
    invoke-virtual {p0, v3}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 321
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 327
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 329
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0d0069

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a01cb

    .line 330
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a01cd

    .line 331
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 333
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f110197

    .line 337
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    :cond_3
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 345
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Unexpected RemoteException"

    invoke-static {v2, v0, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const v0, 0x7f110139

    .line 346
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private requestOperation(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;Landroid/content/Intent;)V
    .locals 6

    .line 191
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    const-string v1, "LocalizationManagmentActivity"

    if-nez v0, :cond_0

    const p1, 0x7f110139

    .line 193
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo p2, "unexpected null"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->mCurrentOp:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    const v2, 0x7f1102a5

    if-eqz v0, :cond_1

    .line 200
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "An operation is currently in progress."

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 207
    :cond_1
    :try_start_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->OPERATION_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 208
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$7;->$SwitchMap$com$cisco$anyconnect$vpn$android$ui$LocalizationManagementActivity$Operation:[I

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    goto :goto_0

    .line 214
    :cond_2
    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->importServerLocalization(Landroid/content/Intent;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_3
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-interface {p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RestoreDefaultL10nData()Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object v0

    .line 219
    :goto_0
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    if-eq p2, v0, :cond_5

    .line 221
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$7;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$VpnServiceResult:[I

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->ordinal()I

    move-result v0

    aget p2, p2, v0

    if-eq p2, v4, :cond_4

    .line 229
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->getFailureMsg()I

    move-result p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Operation failed"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 224
    :cond_4
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Another operation is currently in progress."

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_5
    const p2, 0x7f110236

    .line 241
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p0, v0, p2, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->mSpinner:Landroid/app/ProgressDialog;

    .line 242
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->mCurrentOp:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    return-void

    :catch_0
    move-exception p1

    .line 237
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Unexpected RemoteException"

    invoke-static {p2, v1, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected initializeToolList()Ljava/util/LinkedList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;",
            ">;"
        }
    .end annotation

    .line 429
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 431
    new-instance v7, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;

    const v1, 0x7f1102d7

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f1102d3

    .line 432
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->ImportServerL10n:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    .line 433
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->getRequestId()I

    move-result v4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v5, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->ImportServerL10n:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    .line 436
    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->getRequestId()I

    move-result v5

    const-string v6, "com.cisco.anyconnect.vpn.android.LOCALIZATION_SERVER_IMPORT_SHOW_INTENT"

    .line 434
    invoke-virtual {p0, v6, v1, v5}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->getDefaultOnClickHander(Ljava/lang/String;Landroid/os/Bundle;I)Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;

    move-result-object v5

    iget-object v6, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->onToolResult:Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;)V

    .line 431
    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 439
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;

    const v2, 0x7f1102e2

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v2, 0x7f1102e0

    .line 440
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->RestoreDefaultL10n:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    .line 441
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->getRequestId()I

    move-result v11

    new-instance v12, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$6;

    invoke-direct {v12, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$6;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;)V

    const/4 v13, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;)V

    .line 439
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f0d006a

    .line 385
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->setLayoutResource(I)V

    .line 386
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 388
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->mServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Activate()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f110139

    .line 391
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 399
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->onDestroy()V

    .line 401
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->mServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Deactivate()V

    .line 403
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->mSpinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.class public Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "BannerActivity.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "BannerActivity"

.field private static final REQUEST_SHOW_CERT_DETAILS:I = 0x37


# instance fields
.field private mAllowImport:Z

.field private mBannerCert:Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

.field private mBannerString:Ljava/lang/String;

.field private mConfirmReasons:[Ljava/lang/String;

.field private mGenericUsage:Z

.field private mNoBannerResponse:Z

.field private mParentInfo:Landroid/content/pm/PackageItemInfo;

.field private mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAllowImport(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mAllowImport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBannerCert(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;)Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mBannerCert:Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfirmReasons(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mConfirmReasons:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitializeBanner(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->initializeBanner()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBannerAccept(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->onBannerAccept(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBannerReject(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->onBannerReject()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    .line 68
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private initializeBanner()V
    .locals 4

    .line 141
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a007a

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 146
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mBannerString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_0
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v2, 0x7f120131

    invoke-direct {v1, p0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 150
    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f1100aa

    .line 151
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f110044

    .line 152
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f110050

    .line 153
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$4;

    invoke-direct {v3, p0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$4;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$3;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;)V

    .line 161
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 172
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mBannerCert:Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    if-eqz v2, :cond_1

    .line 174
    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->initializeCertificateBanner(Landroid/view/View;Landroidx/appcompat/app/AlertDialog;)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->initializeNormalBanner()V

    .line 181
    :goto_0
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private initializeCertificateBanner(Landroid/view/View;Landroidx/appcompat/app/AlertDialog;)V
    .locals 3

    const v0, 0x7f0a007b

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f110265

    .line 204
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f110045

    .line 209
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x3

    invoke-virtual {p2, v2, v0, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 211
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;

    invoke-direct {v0, p0, p2}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const v0, 0x7f1100e6

    .line 237
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x1

    invoke-virtual {p2, v2, v0, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const p2, 0x7f0a0077

    .line 240
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 241
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mConfirmReasons:[Ljava/lang/String;

    invoke-static {p0, p2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertConfirmReasons;->initializeConfirmationReasons(Landroid/app/Activity;Landroid/view/ViewGroup;[Ljava/lang/String;)V

    const p2, 0x7f0a0078

    .line 244
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const p2, 0x7f1101d2

    .line 247
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 248
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private initializeNormalBanner()V
    .locals 2

    const v0, 0x7f0a007b

    .line 189
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f110264

    .line 192
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private onBannerAccept(Z)V
    .locals 1

    .line 284
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->sendUserAcceptNotification()V

    const/4 v0, 0x1

    .line 286
    invoke-direct {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->submitUserResponse(ZZ)V

    return-void
.end method

.method private onBannerReject()V
    .locals 1

    const/4 v0, 0x0

    .line 291
    invoke-direct {p0, v0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->submitUserResponse(ZZ)V

    return-void
.end method

.method private sendUserAcceptNotification()V
    .locals 4

    .line 254
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mParentInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v0, :cond_2

    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.BANNER_RESULT_BANNER_ACCEPTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mParentInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mParentInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 259
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mBannerCert:Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    if-eqz v1, :cond_0

    const-string v2, "com.cisco.anyconnect.vpn.android.BANNER_RESULT_BANNER_ACCEPTED_KEY_CERT"

    .line 261
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 266
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mParentInfo:Landroid/content/pm/PackageItemInfo;

    instance-of v1, v1, Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1

    .line 268
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 277
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "BannerActivity"

    const-string v3, "Failed to send send Banner Notification to parent"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private submitUserResponse(ZZ)V
    .locals 3

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Submitting user response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 305
    :goto_0
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->setResult(I)V

    .line 306
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->finish()V

    const-string v0, "BannerActivity"

    if-eqz p1, :cond_1

    .line 310
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "User accepted banner"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 314
    :cond_1
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "User rejected banner"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :goto_1
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mGenericUsage:Z

    if-nez v1, :cond_5

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v1

    if-nez v1, :cond_2

    const p1, 0x7f1100e1

    .line 324
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    .line 325
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Unexpected NULL VpnService; cannot submit user response."

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 329
    :cond_2
    iget-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mNoBannerResponse:Z

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mBannerCert:Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    if-eqz v2, :cond_3

    .line 331
    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object p1

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mBannerCert:Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->GetDER()[B

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->ImportServerCert([B)V

    return-void

    .line 335
    :cond_3
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mBannerCert:Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    if-nez v2, :cond_4

    .line 337
    invoke-interface {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->SetBannerResponse(Z)V

    goto :goto_2

    .line 341
    :cond_4
    invoke-interface {v1, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->SetCertBannerResponse(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 346
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Cannot submit user response due to RemoteException"

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 385
    invoke-super {p0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x37

    const-string v1, "BannerActivity"

    if-eq p1, v0, :cond_0

    .line 399
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Received result for unexpected request: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p1, p2, :cond_1

    const-string p1, "import_cert"

    const/4 p2, 0x0

    .line 391
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 393
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Component installation successful."

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 394
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->onBannerAccept(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 297
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "BannerActivity"

    const-string v2, "onBackPressed"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 298
    invoke-direct {p0, v0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->submitUserResponse(ZZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 84
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ParentInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    const-string v0, "BannerActivity"

    if-eqz p1, :cond_2

    .line 90
    instance-of v1, p1, Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_1

    instance-of v1, p1, Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Parent Info specified but is of invalid type- must be ActivityInfo or ServiceInfo"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :cond_1
    :goto_0
    check-cast p1, Landroid/content/pm/PackageItemInfo;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mParentInfo:Landroid/content/pm/PackageItemInfo;

    .line 100
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "KEY_BANNER_CERTIFICATE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mBannerCert:Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    .line 101
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "CONFIRM_REASONS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mConfirmReasons:[Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "KEY_BANNER_STRING"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mBannerString:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 105
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "No banner string passed, finishing()"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->finish()V

    return-void

    .line 110
    :cond_3
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "IMPORT_ALLOWED"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mAllowImport:Z

    .line 111
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "NO_BANNER_RESPONSE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mNoBannerResponse:Z

    .line 112
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "GENERIC_USAGE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mGenericUsage:Z

    if-nez p1, :cond_4

    .line 115
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;Landroid/content/Context;)V

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    .line 125
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Activate()Z

    goto :goto_2

    .line 129
    :cond_4
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->initializeBanner()V

    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 375
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mGenericUsage:Z

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Deactivate()V

    .line 379
    :cond_0
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 365
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mGenericUsage:Z

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->OnVisibilityChange(Z)V

    .line 369
    :cond_0
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 355
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mGenericUsage:Z

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->OnVisibilityChange(Z)V

    .line 359
    :cond_0
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onResume()V

    return-void
.end method

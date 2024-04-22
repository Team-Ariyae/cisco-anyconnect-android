.class public Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "CertificateManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;,
        Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertificateContextMenu;,
        Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertificatePage;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "CertificateManagementActivity"

.field private static final IMPORT_CERTIFICATE_REQUEST:I = 0x1

.field private static final OPTION_MENU_CLEAR_ALL:I = 0x1

.field private static final OPTION_MENU_IMPORT_CERTIFICATE:I

.field private static final OPTION_MENU_ITEMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdminCertIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAnyConnectList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

.field private final mCertificateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mNcss:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

.field private mNcssConnection:Landroid/content/ServiceConnection;

.field private mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private mServerList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

.field private mSystemList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

.field private mVPNServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

.field private mViewPager:Landroidx/viewpager2/widget/ViewPager2;

.field private mViewPagerAdapter:Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;

.field private mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;


# direct methods
.method public static synthetic $r8$lambda$vqvMC0MCtY6LHzlfzHiyQkAR0Qs(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->updateCertLists()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCertificateListeners(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mCertificateListeners:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmNcss(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mNcss:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVpnService(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    return-void
.end method

.method static bridge synthetic -$$Nest$mconfirmDeleteCertificate(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->confirmDeleteCertificate(Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAdminCertsFromTag(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->getAdminCertsFromTag()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCurrentCertListAdapter(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->getCurrentCertListAdapter()Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateCertLists(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->updateCertLists()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mviewCertficateDetails(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->viewCertficateDetails(Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->OPTION_MENU_ITEMS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    .line 183
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mCertificateListeners:Ljava/util/List;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mAdminCertIdList:Ljava/util/List;

    .line 193
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mNcssConnection:Landroid/content/ServiceConnection;

    .line 211
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$3;

    invoke-direct {v1, p0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mVPNServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    return-void
.end method

.method private clearPopups()V
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    :cond_0
    return-void
.end method

.method private confirmDeleteAllCertificates()V
    .locals 3

    .line 541
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f120131

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f110059

    .line 542
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f11005c

    .line 545
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const/4 v1, 0x1

    .line 546
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f110343

    .line 549
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f1101fc

    .line 557
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 562
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 563
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private confirmDeleteCertificate(Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)V
    .locals 6

    .line 452
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mAdminCertIdList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->GetId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f110025

    .line 453
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 457
    :cond_0
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f120131

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 460
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->isKeyChainCert()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const v1, 0x7f11005b

    .line 461
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->getSubjectShortName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f11005a

    .line 463
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->getSubjectShortName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 466
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f11005c

    .line 467
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 468
    invoke-virtual {v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f110343

    .line 471
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda4;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const p1, 0x7f1101fc

    .line 493
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda5;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 498
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 499
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private deleteAllCertificates()V
    .locals 9

    .line 567
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 570
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->getCurrentCertType()I

    move-result v1

    const v2, 0x7f110025

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    const/4 v5, 0x2

    if-eq v1, v5, :cond_0

    .line 606
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot delete unknown certificate type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->getCurrentCertType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CertificateManagementActivity"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mServerList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;->getAdapter()Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    move-result-object v1

    const/4 v5, 0x0

    .line 590
    :goto_0
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->getItemCount()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 591
    invoke-virtual {v1, v4}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->getItem(I)Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;

    move-result-object v6

    .line 592
    iget-object v7, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mAdminCertIdList:Ljava/util/List;

    invoke-virtual {v6}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->GetId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    .line 596
    :cond_1
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    .line 600
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    .line 603
    :cond_3
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->deleteServerCerts(Ljava/util/List;)V

    goto :goto_4

    .line 572
    :cond_4
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mAnyConnectList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;->getAdapter()Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    move-result-object v1

    const/4 v5, 0x0

    .line 573
    :goto_2
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->getItemCount()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 574
    invoke-virtual {v1, v4}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->getItem(I)Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;

    move-result-object v6

    .line 575
    iget-object v7, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mAdminCertIdList:Ljava/util/List;

    invoke-virtual {v6}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->GetId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    .line 579
    :cond_5
    invoke-virtual {v1, v4}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->getItem(I)Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    .line 583
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    .line 586
    :cond_7
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->deleteClientCerts(Ljava/util/List;)V

    :goto_4
    return-void
.end method

.method private deleteCertificates(ILjava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;",
            ">;)I"
        }
    .end annotation

    const-string v0, "CertificateManagementActivity"

    if-eqz p2, :cond_4

    .line 688
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    .line 694
    :try_start_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 696
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;

    .line 697
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mAdminCertIdList:Ljava/util/List;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->GetId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 701
    :cond_1
    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->GetId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 704
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    .line 705
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-interface {v3, p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->DeleteCertificates(ILjava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_3

    return v1

    :cond_3
    return p2

    :catch_0
    move-exception p1

    .line 710
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remote exception during certificate delete: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 689
    :cond_4
    :goto_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "no certificates to delete!"

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private deleteClientCerts(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 629
    invoke-direct {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->deleteCertificates(ILjava/util/List;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    const p1, 0x7f11005d

    .line 631
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez v1, :cond_1

    return-void

    .line 642
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v1

    .line 643
    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetAllNames()Ljava/util/List;

    move-result-object v2

    .line 650
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 651
    invoke-interface {v1, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 652
    sget-object v4, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertAuthMode()Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 653
    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertCommonName()Ljava/lang/String;

    move-result-object v4

    .line 654
    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertHash()[B

    move-result-object v5

    .line 656
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;

    .line 657
    invoke-virtual {v7}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->getSubjectShortName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->GetHash()[B

    move-result-object v7

    invoke-static {v7, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 658
    sget-object v4, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Automatic:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-virtual {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetCertAuthMode(Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;)V

    const/4 v4, 0x0

    .line 659
    invoke-virtual {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetCertCommonName(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetCertHash([B)V

    .line 661
    invoke-interface {v1, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->Save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I

    goto :goto_0

    .line 668
    :cond_4
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->updateCertLists()V

    const p1, 0x7f11005e

    .line 671
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 673
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "CertificateManagementActivity"

    const-string v2, "failed to fetch new list after delete or failed to fetch the connection list"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const p1, 0x7f11008d

    .line 674
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private deleteServerCerts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 615
    invoke-direct {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->deleteCertificates(ILjava/util/List;)I

    move-result p1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    const p1, 0x7f11005d

    .line 617
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 622
    :cond_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->updateCertLists()V

    return-void
.end method

.method private getAdminCertsFromTag()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mNcss:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    const-string v1, "CERTIFICATE_MDM_SERVER_TAG"

    invoke-interface {v0, v1}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->GetAliasList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mAdminCertIdList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mNcss:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    const-string v1, "CERTIFICATE_ADMIN_TAG"

    invoke-interface {v0, v1}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->GetAliasList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 743
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mAdminCertIdList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mNcss:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    const-string v1, "CERTIFICATE_MDM_PROVISIONED_TAG"

    invoke-interface {v0, v1}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->GetAliasList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 748
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mAdminCertIdList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method

.method private getCurrentCertListAdapter()Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;
    .locals 2

    .line 523
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->getCurrentCertType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mServerList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;->getAdapter()Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    move-result-object v0

    return-object v0

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mSystemList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;->getAdapter()Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    move-result-object v0

    return-object v0

    .line 527
    :cond_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mAnyConnectList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;->getAdapter()Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentCertType()I
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    .line 518
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Cert Type"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CertificateManagementActivity"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    return v0

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private updateCertLists()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 383
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->getCurrentCertType()I

    move-result v0

    .line 385
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda6;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;I)V

    .line 425
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private updateClearButton()V
    .locals 3

    .line 430
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->getCurrentCertType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mServerList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;->getAdapter()Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->hasDeletableCerts()Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->setMenuItemEnabled(IZ)V

    goto :goto_0

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mSystemList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;->getAdapter()Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->hasDeletableCerts()Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->setMenuItemEnabled(IZ)V

    goto :goto_0

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mAnyConnectList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;->getAdapter()Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->hasDeletableCerts()Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->setMenuItemEnabled(IZ)V

    :goto_0
    return-void
.end method

.method private viewCertficateDetails(Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)Z
    .locals 2

    .line 368
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->GetDerBlob()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;-><init>([B)V

    .line 369
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.CERTIFICATE_SUMMARY_SHOW_INTENT"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "VpnCertificate"

    .line 370
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 371
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method synthetic lambda$confirmDeleteAllCertificates$6$com-cisco-anyconnect-vpn-android-ui-CertificateManagementActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 550
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x0

    .line 551
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 553
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->deleteAllCertificates()V

    return-void
.end method

.method synthetic lambda$confirmDeleteAllCertificates$7$com-cisco-anyconnect-vpn-android-ui-CertificateManagementActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 558
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x0

    .line 559
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$confirmDeleteCertificate$4$com-cisco-anyconnect-vpn-android-ui-CertificateManagementActivity(Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 472
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p2, 0x0

    .line 473
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 476
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 477
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->getCurrentCertType()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    .line 487
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected cert type to delete: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->getCurrentCertType()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CertificateManagementActivity"

    invoke-static {p1, p3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_0
    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->deleteServerCerts(Ljava/util/List;)V

    goto :goto_0

    .line 484
    :cond_1
    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->deleteClientCerts(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$confirmDeleteCertificate$5$com-cisco-anyconnect-vpn-android-ui-CertificateManagementActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 494
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x0

    .line 495
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$onCreate$0$com-cisco-anyconnect-vpn-android-ui-CertificateManagementActivity(Landroid/view/MenuItem;)Z
    .locals 3

    .line 307
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a00da

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a0272

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a02b0

    if-eq p1, v0, :cond_0

    return v1

    .line 317
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 318
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->updateCertLists()V

    return v2

    .line 313
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v2, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 314
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->updateCertLists()V

    return v2

    .line 309
    :cond_2
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 310
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->updateCertLists()V

    return v2
.end method

.method synthetic lambda$updateCertLists$1$com-cisco-anyconnect-vpn-android-ui-CertificateManagementActivity(ILjava/util/List;)V
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mServerList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;->getAdapter()Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->submitList(Ljava/util/List;)V

    .line 405
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mServerList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;->showEmptyView()V

    goto :goto_0

    .line 406
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mServerList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;->hideEmptyView()V

    goto :goto_0

    .line 409
    :cond_2
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mSystemList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;->getAdapter()Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->submitList(Ljava/util/List;)V

    .line 410
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mSystemList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;->showEmptyView()V

    goto :goto_0

    .line 411
    :cond_3
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mSystemList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;->hideEmptyView()V

    goto :goto_0

    .line 399
    :cond_4
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mAnyConnectList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;->getAdapter()Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->submitList(Ljava/util/List;)V

    .line 400
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mAnyConnectList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;->showEmptyView()V

    goto :goto_0

    .line 401
    :cond_5
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mAnyConnectList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;->hideEmptyView()V

    .line 415
    :goto_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->updateClearButton()V

    return-void
.end method

.method synthetic lambda$updateCertLists$2$com-cisco-anyconnect-vpn-android-ui-CertificateManagementActivity()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method synthetic lambda$updateCertLists$3$com-cisco-anyconnect-vpn-android-ui-CertificateManagementActivity(I)V
    .locals 3

    const-string v0, "CertificateManagementActivity"

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-interface {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->EnumerateCertificates(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 390
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "EnumerateCertificates failed."

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    .line 395
    :cond_0
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;ILjava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 418
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "EnumerateCertificates failed"

    invoke-static {v1, v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 422
    :goto_0
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;)V

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 724
    invoke-super {p0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p3, p1, :cond_0

    const/4 p1, -0x1

    if-ne p1, p2, :cond_0

    .line 727
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->updateCertLists()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "onCreate()"

    const-string v1, "CertificateManagementActivity"

    .line 274
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    .line 277
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->OPTION_MENU_ITEMS:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->setOptionsMenu(Ljava/util/List;)V

    .line 280
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const p1, 0x7f0d0030

    .line 283
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->setContentView(I)V

    const p1, 0x7f0a00c0

    .line 286
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 288
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 289
    new-instance p1, Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mViewPagerAdapter:Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;

    .line 293
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-direct {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mAnyConnectList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    .line 294
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-direct {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mSystemList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    .line 295
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-direct {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mServerList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    .line 296
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mViewPagerAdapter:Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mAnyConnectList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-virtual {p1, v2}, Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;->addFragment(Landroidx/fragment/app/Fragment;)V

    .line 297
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mViewPagerAdapter:Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mServerList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-virtual {p1, v2}, Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;->addFragment(Landroidx/fragment/app/Fragment;)V

    .line 298
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mViewPagerAdapter:Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mSystemList:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertListFragment;

    invoke-virtual {p1, v2}, Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;->addFragment(Landroidx/fragment/app/Fragment;)V

    .line 300
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 301
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mViewPagerAdapter:Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p1, 0x7f0a0087

    .line 305
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/navigation/NavigationBarView;

    .line 306
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda7;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationBarView;->setOnItemSelectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    .line 323
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v0, 0x7f0a00da

    .line 324
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f11006f

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const v0, 0x7f0a0272

    .line 325
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f11006d

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const v0, 0x7f0a02b0

    .line 326
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f11006e

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const p1, 0x7f0a00bb

    .line 329
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 330
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda8;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;)V

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 333
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mVPNServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Activate()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f110139

    .line 335
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->finish()V

    return-void

    .line 340
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    const-class v0, Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mNcssConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 346
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Failed to bind to NCSS"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 352
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onDestroy()V

    .line 354
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mVPNServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Deactivate()V

    .line 355
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->clearPopups()V

    .line 356
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 357
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->mNcssConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 257
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    .line 268
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->confirmDeleteAllCertificates()V

    return v1

    .line 263
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.android.IMPORT_CERTIFICATE_SHOW_INTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v1
.end method

.method updateImportMenuItem()V
    .locals 3

    .line 238
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->getCurrentCertType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 250
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected cert type for display: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->getCurrentCertType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CertificateManagementActivity"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->setMenuItemEnabled(IZ)V

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->setMenuItemEnabled(IZ)V

    goto :goto_0

    .line 244
    :cond_2
    invoke-virtual {p0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->setMenuItemEnabled(IZ)V

    :goto_0
    return-void
.end method

.class public Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "URIHandlerActivity.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;
.implements Lcom/cisco/anyconnect/ui/UserAgreementFragment$UserAgreementCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;,
        Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "URIHandlerActivity"

.field private static final FLAG_ACTIVITY_CLEAR_TASK:I = 0x8000

.field private static final ICON_LOCK_KEY:Ljava/lang/String; = "URIHandlerActivity"

.field private static final PREFILL_PREFIX:Ljava/lang/String; = "prefill_"


# instance fields
.field private isCreatePending:Z

.field private mAction:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

.field private mAllowAppExits:Z

.field private mCertImporter:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

.field private mCertList:Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;

.field private mCertificateListener:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

.field private mCertificateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mEulaFrag:Lcom/cisco/anyconnect/ui/UserAgreementFragment;

.field private mExitInProgress:Z

.field private mImportListener:Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

.field private mIsLocalizationImportRequested:Z

.field private mIsPromptHandlerRegistered:Z

.field private mKeychainImportedCertHash:[B

.field private mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

.field private mNCHSConnection:Landroid/content/ServiceConnection;

.field private final mOnErrorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnSuccessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefill:Lcom/cisco/anyconnect/vpn/jni/JniHashMap;

.field private mProfileImporter:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;

.field private mRemoteControlMode:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private mVPNServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

.field private final mVPNServiceLock:Ljava/lang/Object;

.field private mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;


# direct methods
.method static bridge synthetic -$$Nest$fgetisCreatePending(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->isCreatePending:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAction(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mAction:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAllowAppExits(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mAllowAppExits:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCertList(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mCertList:Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCertificateListener(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mCertificateListener:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCertificateListeners(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mCertificateListeners:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExitInProgress(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mExitInProgress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImportListener(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Lcom/cisco/anyconnect/vpn/android/service/IImportListener;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mImportListener:Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsLocalizationImportRequested(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mIsLocalizationImportRequested:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeychainImportedCertHash(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)[B
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mKeychainImportedCertHash:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNCHS(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmParameters(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpinner(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mSpinner:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVpnService(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisCreatePending(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->isCreatePending:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCertList(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mCertList:Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDialog(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmExitInProgress(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mExitInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsLocalizationImportRequested(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mIsLocalizationImportRequested:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmKeychainImportedCertHash(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;[B)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mKeychainImportedCertHash:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNCHS(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVpnService(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    return-void
.end method

.method static bridge synthetic -$$Nest$mexitActivity(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->exitActivity(ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessAction(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->processAction()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessCreate(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->processCreate()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mprocessURI(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->processURI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpromptEula(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->promptEula()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartParseUri(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->startParseUri()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 121
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mOnSuccessList:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mOnErrorList:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVPNServiceLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mExitInProgress:Z

    .line 138
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mCertificateListeners:Ljava/util/List;

    const/4 v1, 0x0

    .line 146
    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mEulaFrag:Lcom/cisco/anyconnect/ui/UserAgreementFragment;

    .line 152
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->isCreatePending:Z

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mAllowAppExits:Z

    .line 155
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mImportListener:Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

    .line 272
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$2;

    invoke-direct {v1, p0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVPNServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    .line 1614
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mCertificateListener:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    return-void
.end method

.method private completeCreate()V
    .locals 3

    .line 379
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$3;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mNCHSConnection:Landroid/content/ServiceConnection;

    .line 412
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mNCHSConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "URIHandlerActivity"

    const-string v2, "failed to bind to NCHS service"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private exitActivity(ZLjava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 1430
    invoke-direct/range {v0 .. v5}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->exitActivity(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method private exitActivity(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 8

    .line 1444
    new-instance v7, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$7;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {p0, v7}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getPromptMessage()Ljava/lang/String;
    .locals 8

    .line 854
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$10;->$SwitchMap$com$cisco$anyconnect$vpn$android$ui$URIHandlerActivity$Actions:[I

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mAction:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_7

    const/4 v5, 0x3

    if-eq v0, v5, :cond_6

    const/4 v6, 0x4

    if-eq v0, v6, :cond_5

    const/4 v3, 0x5

    const-string v6, "URIHandlerActivity"

    if-eq v0, v3, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 915
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Invalid \'action\' type."

    invoke-static {v0, v6, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const v0, 0x7f1100b3

    .line 912
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 893
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->TYPE:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 894
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    move-result-object v0

    .line 895
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$10;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$uri$ImportTypes:[I

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->ordinal()I

    move-result v7

    aget v3, v3, v7

    if-eq v3, v4, :cond_4

    if-eq v3, v1, :cond_3

    if-eq v3, v5, :cond_2

    .line 907
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid import type:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v6, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    const v0, 0x7f11017c

    .line 904
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const v0, 0x7f11017d

    .line 901
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    const v0, 0x7f11017a

    .line 898
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    const v0, 0x7f1100f7

    .line 889
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->HOST:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const v0, 0x7f110123

    .line 886
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 857
    :cond_7
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->NAME:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 858
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v5, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->NAME:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 859
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-static {v0, v1, v5}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->getConnection(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v5

    if-nez v0, :cond_8

    if-nez v1, :cond_8

    const v0, 0x7f1100cd

    .line 863
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    if-eqz v5, :cond_9

    const v0, 0x7f1100cc

    .line 868
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    if-eqz v1, :cond_a

    const v0, 0x7f1100f1

    .line 876
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 919
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f110340

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    const v0, 0x7f1100f6

    .line 880
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->exitActivity(ZLjava/lang/String;)V

    return-object v2
.end method

.method private handleImportResult(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 1299
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to perform the requested action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mAction:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "URIHandlerActivity"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mAction:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->exitActivity(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private importKeyChainAlias(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "Failed to initiate keychain cert import: "

    .line 996
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mCertificateListener:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->RegisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "URIHandlerActivity"

    if-nez v1, :cond_0

    .line 998
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "failed to register cert listener"

    invoke-static {p1, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1003
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-nez v1, :cond_1

    .line 1004
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Unexpected null NCSS"

    invoke-static {p1, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1010
    :cond_1
    :try_start_0
    invoke-interface {v1}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetNCSS()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v1

    new-instance v4, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$6;

    invoke-direct {v4, p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$6;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)V

    const/4 v5, 0x0

    .line 1011
    invoke-interface {v1, p1, v5, v5, v4}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->RequestClientCertFromSystem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/IImportClientCertCB;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    .line 1055
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v1

    sget-object v4, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v1, v4, :cond_2

    .line 1056
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v1

    sget-object v4, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_CERTIFICATE_ALREADY_EXISTS:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v1, v4, :cond_2

    .line 1057
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1057
    invoke-static {v1, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 1065
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Exception in importCertAlias"

    invoke-static {v0, v3, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method private parseURI(Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "UTF-8"

    const/4 v3, 0x0

    const-string v4, "URIHandlerActivity"

    if-nez v0, :cond_0

    .line 533
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Invalid null AnyConnect URI."

    invoke-static {v0, v4, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    const-string v5, "anyconnect:[^/]+"

    .line 538
    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ":"

    const-string v6, "://"

    .line 540
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v5, v0

    .line 547
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    .line 557
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "anyconnect"

    .line 558
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 561
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Invalid scheme: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Must be \"anyconnect\"."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v4, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 566
    :cond_2
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 569
    :try_start_1
    invoke-static {v6}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->stringToEnum(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    move-result-object v7

    iput-object v7, v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mAction:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 577
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "anyconnect://"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v8, "?"

    .line 584
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&"

    .line 585
    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 589
    array-length v9, v0

    const-string v10, ""

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_7

    aget-object v12, v0, v11

    const-string v13, "="

    .line 592
    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 593
    array-length v15, v14

    const/4 v6, 0x2

    if-eq v15, v6, :cond_3

    .line 596
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Invalid parameter format. Must be in the form \'name=value\': "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v4, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 605
    :cond_3
    :try_start_2
    aget-object v6, v14, v3

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x1

    .line 606
    aget-object v14, v14, v15

    invoke-static {v14, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 607
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "****"

    const-string v15, "prefill_"

    .line 610
    invoke-virtual {v6, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    move-object v3, v14

    .line 614
    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 623
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->ON_SUCCESS:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 625
    iget-object v3, v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mOnSuccessList:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 627
    :cond_5
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->ON_ERROR:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 629
    iget-object v3, v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mOnErrorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 633
    :cond_6
    iget-object v3, v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v3, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v11, v11, 0x1

    move-object v10, v8

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 619
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to decode parameter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v4, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    .line 638
    :cond_7
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received command: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v4, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-direct/range {p0 .. p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->validateParameters()Z

    move-result v0

    if-nez v0, :cond_8

    .line 643
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid URI parameters: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v4, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :cond_8
    const/4 v0, 0x1

    return v0

    :catch_1
    const/4 v2, 0x0

    .line 573
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Invalid action: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catch_2
    move-exception v0

    .line 551
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Invalid URI syntax: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    return v2
.end method

.method private parseURIpara(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "anyconnect://close"

    .line 1099
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    const-string v1, "anyconnect:close"

    .line 1100
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "://"

    .line 1105
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, ":"

    if-nez v1, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1107
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gt v2, p1, :cond_3

    return v2

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v2
.end method

.method private processAction()V
    .locals 6

    .line 938
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$10;->$SwitchMap$com$cisco$anyconnect$vpn$android$ui$URIHandlerActivity$Actions:[I

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mAction:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const-string v2, "URIHandlerActivity"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    const/4 v4, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 978
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Invalid \'action\' type."

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_0

    .line 974
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->finish()V

    goto :goto_0

    .line 965
    :cond_1
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->get(Landroid/content/Context;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 966
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->blockUserCreateVpnConnection()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Managed config does not allow user to create new VPN connections, skipping IMPORT URI"

    .line 967
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f110259

    .line 968
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->exitActivity(ZLjava/lang/String;)V

    return-void

    .line 971
    :cond_2
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->processImport()Z

    move-result v4

    goto :goto_0

    .line 948
    :cond_3
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->get(Landroid/content/Context;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 949
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->blockUserCreateVpnConnection()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Managed config does not allow user to create new VPN connections, skipping CREATE URI"

    .line 950
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1100f5

    .line 951
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->exitActivity(ZLjava/lang/String;)V

    return-void

    .line 954
    :cond_4
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->KEYCHAINALIAS:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 957
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->importKeyChainAlias(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 961
    :cond_5
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->processCreate()Z

    move-result v4

    goto :goto_0

    .line 944
    :cond_6
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->processDisconnect()V

    goto :goto_0

    .line 941
    :cond_7
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->processConnect()Z

    move-result v4

    :goto_0
    if-nez v4, :cond_8

    .line 985
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Failed to perform the requested action: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mAction:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mAction:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->exitActivity(ZLjava/lang/String;)V

    :cond_8
    return-void
.end method

.method private processConnect()Z
    .locals 7

    .line 1084
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->NAME:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 1085
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->HOST:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 1086
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-direct {v1, p0, v0, v4}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V

    .line 1089
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mPrefill:Lcom/cisco/anyconnect/vpn/jni/JniHashMap;

    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mOnSuccessList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mOnErrorList:Ljava/util/ArrayList;

    invoke-virtual/range {v1 .. v6}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->processConnect(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/JniHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private processCreate()Z
    .locals 10

    .line 1133
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->NAME:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 1134
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->HOST:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 1137
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->USECERT:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 1138
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->CERT_COMMON_NAME:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 1141
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->PROTOCOL:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1144
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ssl:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v6, v0

    .line 1146
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->AUTHENTICATION:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1147
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    const-string v7, "ike-identity"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1152
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_ANYCONNECT:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v7, v0

    .line 1156
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->Ipsec:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1158
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_GTC:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_MD5:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    .line 1159
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->USER_AUTH_IKE_EAP_MSCHAPv2:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

    .line 1160
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1162
    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1164
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IPsec Authentication mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is missing IKE identity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "URIHandlerActivity"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 1170
    :cond_3
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v9, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-direct {v1, p0, v0, v9}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V

    .line 1171
    invoke-virtual/range {v1 .. v8}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->processCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private processDisconnect()V
    .locals 3

    .line 1122
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-direct {v0, p0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V

    .line 1123
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mOnSuccessList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mOnErrorList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->processDisconnect(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private processImport()Z
    .locals 7

    .line 1212
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->TYPE:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "URIHandlerActivity"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1215
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "null type parameter."

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1223
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1231
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->localization:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    if-ne v3, v0, :cond_1

    .line 1233
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->requestImportLocalization()Z

    move-result v0

    return v0

    .line 1237
    :cond_1
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->URI:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "://"

    .line 1238
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1241
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "null URI scheme."

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1248
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1256
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->file:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;

    if-ne v4, v5, :cond_3

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1257
    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    const-string v0, "Requesting permission to import from file system."

    .line 1258
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x5

    .line 1259
    invoke-static {p0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v0

    .line 1263
    :cond_3
    invoke-static {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever;->getFileLocationFromUri(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;)Ljava/lang/String;

    move-result-object v3

    .line 1265
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->pkcs12:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    if-ne v5, v0, :cond_4

    .line 1267
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-direct {v1, p0, v2, v5}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mCertImporter:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    .line 1268
    invoke-virtual {v1, v0, v4, v3}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->processImport(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1270
    :cond_4
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->profile:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    if-ne v5, v0, :cond_5

    .line 1272
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-direct {v0, p0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mProfileImporter:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;

    .line 1273
    invoke-virtual {v0, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->processImport(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;)Z

    move-result v0

    return v0

    .line 1276
    :cond_5
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unknown ImportType encountered: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1252
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported scheme: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1227
    :catch_1
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid import type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private processURI()V
    .locals 9

    .line 310
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    const-string v1, "URIHandlerActivity"

    if-nez v0, :cond_0

    .line 312
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Unexpected: VPN service is null"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 316
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$10;->$SwitchMap$com$cisco$anyconnect$vpn$android$ui$helpers$RemoteControlMode:[I

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mRemoteControlMode:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 335
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RemoteControlMode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mRemoteControlMode:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was not explictly handled. will not continue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.android.SETTINGS_SHOW_INTENT"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mAllowAppExits:Z

    if-eqz v0, :cond_1

    const v0, 0x10008000

    .line 340
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_1
    const/4 v4, 0x0

    const v0, 0x7f110272

    .line 346
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f11018e

    .line 347
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f1100a2

    .line 348
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v3, p0

    .line 345
    invoke-direct/range {v3 .. v8}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->exitActivity(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void

    .line 331
    :cond_2
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->processAction()V

    goto :goto_0

    .line 320
    :cond_3
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->promptForAction()Z

    move-result v0

    if-nez v0, :cond_4

    .line 322
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to perform the requested action: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mAction:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mAction:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->exitActivity(ZLjava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    const v0, 0x7f110139

    .line 355
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mImportListener:Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

    invoke-interface {v2, v4}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterImportListener(Lcom/cisco/anyconnect/vpn/android/service/IImportListener;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 358
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->exitActivity(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 363
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "Unexpected RemoteException"

    invoke-static {v4, v1, v5, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->exitActivity(ZLjava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private promptEula()V
    .locals 3

    .line 1760
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mEulaFrag:Lcom/cisco/anyconnect/ui/UserAgreementFragment;

    if-eqz v0, :cond_0

    return-void

    .line 1766
    :cond_0
    invoke-static {p0}, Lcom/cisco/anyconnect/ui/PrimaryActivity;->getEulaFragment(Landroid/content/Context;)Lcom/cisco/anyconnect/ui/UserAgreementFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mEulaFrag:Lcom/cisco/anyconnect/ui/UserAgreementFragment;

    .line 1767
    invoke-virtual {v0, p0}, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->setCallback(Lcom/cisco/anyconnect/ui/UserAgreementFragment$UserAgreementCallback;)V

    .line 1768
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mEulaFrag:Lcom/cisco/anyconnect/ui/UserAgreementFragment;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "user_agreement_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private promptForAction()Z
    .locals 4

    .line 808
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->getPromptMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 811
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "URIHandlerActivity"

    const-string v3, "Failed to get a prompt message to display."

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 816
    :cond_0
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v3, 0x7f120131

    invoke-direct {v2, p0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 817
    invoke-virtual {v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 818
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f110343

    .line 819
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$5;

    invoke-direct {v3, p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$5;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f1101fc

    .line 828
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$4;

    invoke-direct {v3, p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$4;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 838
    invoke-virtual {v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 839
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 840
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    const/4 v0, 0x1

    return v0
.end method

.method private requestImportLocalization()Z
    .locals 6

    const-string v0, "Server localization failed due to error: "

    .line 1176
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->HOST:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1177
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->LANG:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "URIHandlerActivity"

    if-eqz v1, :cond_2

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 1186
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-interface {v5, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->ImportServerL10nData(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object v1

    .line 1187
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    if-eq v2, v1, :cond_1

    .line 1189
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_1
    const/4 v0, 0x1

    .line 1199
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mIsLocalizationImportRequested:Z

    const v1, 0x7f1102d8

    .line 1200
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mSpinner:Landroid/app/ProgressDialog;

    return v0

    :catch_0
    move-exception v0

    .line 1195
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Unexpected RemoteException"

    invoke-static {v1, v4, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3

    .line 1180
    :cond_2
    :goto_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "null host or lang"

    invoke-static {v0, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private startParseUri()V
    .locals 9

    .line 426
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 427
    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mPrefill:Lcom/cisco/anyconnect/vpn/jni/JniHashMap;

    .line 430
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->parseURI(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 432
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "URIHandlerActivity"

    const v3, 0x7f11003b

    invoke-virtual {p0, v3}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->exitActivity(ZLjava/lang/String;)V

    return-void

    .line 437
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->EXTERNALSSO:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mAction:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    if-ne v1, v3, :cond_1

    .line 439
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->TOKEN:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 440
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cisco.anyconnect.vpn.android.CREDENTIAL_ACTIVITY_SSO_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "sso_token"

    .line 441
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.android.permission.INTERNAL_VPN_STATE"

    .line 442
    invoke-virtual {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->finish()V

    return-void

    :cond_1
    const-string v1, "UserPreferences"

    .line 447
    invoke-virtual {p0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 448
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;

    invoke-direct {v3, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;-><init>(Landroid/content/SharedPreferences;)V

    const-string v1, "RemoteControl"

    .line 449
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->Disabled:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;->GetStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 451
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/cisco/android/nchs/permissions/Prerequisites;->isChromebook(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 454
    iput-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mAllowAppExits:Z

    goto :goto_0

    .line 456
    :cond_2
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "allow_exit_app"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 459
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "allow_exit_app"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mAllowAppExits:Z

    .line 464
    :cond_3
    :goto_0
    :try_start_0
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mRemoteControlMode:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 468
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "URIHandlerActivity"

    const-string v6, "IllegalArgumentException"

    invoke-static {v4, v5, v6, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 471
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->Disabled:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mRemoteControlMode:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    const-string v1, "RemoteControl"

    .line 472
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->Disabled:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/LocalPersistenceManager;->SetStringProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 475
    :goto_1
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->Disabled:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mRemoteControlMode:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    if-ne v1, v3, :cond_5

    .line 479
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "URIHandlerActivity"

    const-string v2, "RemoteControl not enabled, telling user"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.android.SETTINGS_SHOW_INTENT"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mAllowAppExits:Z

    if-eqz v0, :cond_4

    const v0, 0x10008000

    .line 484
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_4
    const/4 v4, 0x0

    const v0, 0x7f110272

    .line 490
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f11018e

    .line 491
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f1100a2

    .line 492
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v3, p0

    .line 489
    invoke-direct/range {v3 .. v8}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->exitActivity(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void

    .line 498
    :cond_5
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mAction:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->UMBRELLA:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    if-ne v1, v3, :cond_6

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Umbrella Enroll: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "activationURI"

    .line 501
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.android.UMBRELLA_ENROLL"

    .line 502
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/cisco/anyconnect/ui/PrimaryActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "pending_intent"

    .line 504
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "inner"

    .line 505
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 506
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->startActivity(Landroid/content/Intent;)V

    .line 507
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->finish()V

    return-void

    .line 512
    :cond_6
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVPNServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    :try_start_1
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVPNServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Activate()Z

    move-result v1

    if-nez v1, :cond_7

    .line 516
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "URIHandlerActivity"

    const v4, 0x7f110139

    invoke-virtual {p0, v4}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->exitActivity(ZLjava/lang/String;)V

    .line 518
    monitor-exit v0

    return-void

    .line 520
    :cond_7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private validateParameters()Z
    .locals 12

    .line 658
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$10;->$SwitchMap$com$cisco$anyconnect$vpn$android$ui$URIHandlerActivity$Actions:[I

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mAction:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "URIHandlerActivity"

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 794
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Invalid \'action\' type."

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 791
    :pswitch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Umbrella enroll URI is ::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->URI:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 788
    :pswitch_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "anyconnect://close url received"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 737
    :pswitch_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->TYPE:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 740
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "null type passed"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 743
    :cond_0
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 746
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid \'type\' parameter: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 750
    :cond_1
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->localization:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 752
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->HOST:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_c

    .line 755
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "null host passed"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 762
    :cond_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->URI:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    .line 765
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "null uri passed"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_3
    :try_start_0
    const-string v4, "://"

    .line 771
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/FileRetriever$SupportedURISchemes;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 781
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported scheme in uri parameter: ."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catch_0
    move-exception v1

    .line 775
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid uri parameter: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3

    .line 725
    :pswitch_3
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->NAME:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->HOST:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    .line 727
    :cond_4
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Missing parameters, must specify both name and host. Cannot process the \'create\' action."

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 670
    :pswitch_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 671
    sget-object v4, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->PROMPT_ENTRY_NAMES:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_7

    aget-object v7, v4, v6

    .line 673
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "prefill_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 674
    iget-object v9, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 677
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 679
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Prefill passed with empty contents: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 683
    :cond_5
    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 687
    :cond_7
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 692
    :try_start_1
    new-instance v4, Lcom/cisco/anyconnect/vpn/jni/JniHashMap;

    invoke-direct {v4, v0}, Lcom/cisco/anyconnect/vpn/jni/JniHashMap;-><init>(Ljava/util/Map;)V

    iput-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mPrefill:Lcom/cisco/anyconnect/vpn/jni/JniHashMap;
    :try_end_1
    .catch Lcom/cisco/anyconnect/vpn/jni/JniHashMap$JniHashMapCreateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 696
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "Failed to create prefill map"

    invoke-static {v4, v2, v5, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 697
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mPrefill:Lcom/cisco/anyconnect/vpn/jni/JniHashMap;

    .line 701
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mOnSuccessList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const v4, 0x7f11003b

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 703
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->parseURIpara(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 705
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    return v3

    .line 710
    :cond_a
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mOnErrorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 712
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->parseURIpara(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 714
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    return v3

    .line 661
    :pswitch_5
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mParameters:Ljava/util/HashMap;

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->TOKEN:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    .line 663
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Missing parameters, must specify both name and host. Cannot process the \'externalsso\' action."

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_c
    :pswitch_6
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public ImportAlertCB(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 1710
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$9;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V
    .locals 0
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

    .line 1507
    iget-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mSpinner:Landroid/app/ProgressDialog;

    if-eqz p3, :cond_0

    .line 1509
    invoke-virtual {p3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1512
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->exitActivity(ZLjava/lang/String;)V

    return-void
.end method

.method public ImportStartCB(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1502
    invoke-static {p0, v0, p1, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mSpinner:Landroid/app/ProgressDialog;

    return-void
.end method

.method public LaunchActivityOrService(Landroid/content/Intent;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1694
    iget-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mAllowAppExits:Z

    if-nez p2, :cond_0

    const-string p2, "allow_exit_app"

    const/4 v0, 0x0

    .line 1696
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1698
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 1702
    :cond_1
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public OnUserAgreementSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;Z)V
    .locals 1

    .line 1735
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mEulaFrag:Lcom/cisco/anyconnect/ui/UserAgreementFragment;

    if-eqz p1, :cond_0

    .line 1737
    invoke-virtual {p1}, Lcom/cisco/anyconnect/ui/UserAgreementFragment;->dismiss()V

    const/4 p1, 0x0

    .line 1738
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mEulaFrag:Lcom/cisco/anyconnect/ui/UserAgreementFragment;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "UserPreferences"

    const/4 p2, 0x0

    .line 1743
    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1744
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "eula"

    const/4 v0, 0x1

    .line 1745
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1746
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1747
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->startParseUri()V

    goto :goto_0

    .line 1751
    :cond_1
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->finish()V

    :goto_0
    return-void
.end method

.method public RegisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z
    .locals 3

    const-string v0, "URIHandlerActivity"

    const/4 v1, 0x0

    .line 1573
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1575
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RegisterCertificateListener failed"

    invoke-static {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1578
    :cond_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mCertificateListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 1582
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RemoteException occurred while registering callbacks"

    invoke-static {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public RegisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z
    .locals 4

    const-string v0, "URIHandlerActivity"

    .line 1518
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVPNServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->IsVisible()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mIsPromptHandlerRegistered:Z

    if-nez v1, :cond_1

    .line 1522
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-interface {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1525
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "RegisterPromptHandler failed"

    invoke-static {p1, v0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f11013c

    .line 1526
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->exitActivity(ZLjava/lang/String;)V

    return v1

    :cond_0
    const/4 v3, 0x1

    .line 1529
    iput-boolean v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mIsPromptHandlerRegistered:Z

    .line 1530
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mCurrentPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    goto :goto_0

    .line 1534
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "RemoteException occurred while registering promptHandler"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v2
.end method

.method public UnregisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z
    .locals 3

    const-string v0, "URIHandlerActivity"

    const/4 v1, 0x0

    .line 1593
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1595
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "UnregisterCertificateListener failed"

    invoke-static {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1598
    :cond_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mCertificateListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 1602
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RemoteException occurred while unregistering callbacks"

    invoke-static {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public UnregisterPromptHandler()Z
    .locals 4

    const-string v0, "URIHandlerActivity"

    .line 1545
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mIsPromptHandlerRegistered:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mCurrentPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    if-eqz v3, :cond_1

    .line 1549
    :try_start_0
    invoke-interface {v3, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1552
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "UnregisterPromptHandler failed"

    invoke-static {v1, v0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1562
    :cond_0
    iput-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mIsPromptHandlerRegistered:Z

    const/4 v0, 0x0

    .line 1563
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mCurrentPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    move v2, v1

    goto :goto_0

    .line 1558
    :catch_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "RemoteException on UnregisterPromptHandler"

    invoke-static {v1, v0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "URIHandlerActivity"

    const-string v1, "onCreate"

    .line 371
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    .line 374
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->completeCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "URIHandlerActivity"

    const-string v1, "onDestroy"

    .line 1386
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onDestroy()V

    .line 1389
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mProfileImporter:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;

    if-eqz v0, :cond_0

    .line 1391
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->Cancel()V

    .line 1394
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mCertImporter:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    if-eqz v0, :cond_1

    .line 1396
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->Cancel()V

    .line 1399
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-eqz v0, :cond_2

    const-string v1, "URIHandlerActivity"

    const/4 v2, 0x0

    .line 1402
    invoke-static {v0, p0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/NchsUtils;->SetDisplayNotification(Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1403
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mNCHSConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1406
    :cond_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVPNServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1408
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVPNServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Deactivate()V

    .line 1409
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1413
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    const/4 v0, 0x0

    .line 1414
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 1417
    :cond_3
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mSpinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_4

    .line 1419
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    .line 1409
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "URIHandlerActivity"

    const-string v1, "onNewIntent"

    .line 1336
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->setIntent(Landroid/content/Intent;)V

    .line 1339
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->isEulaAccepted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1341
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->startParseUri()V

    goto :goto_0

    .line 1345
    :cond_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->promptEula()V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 p1, 0x0

    .line 1283
    aget p2, p3, p1

    if-nez p2, :cond_0

    const-string p1, "Permission granted"

    .line 1285
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1286
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->processImport()Z

    move-result p1

    .line 1287
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->handleImportResult(Z)V

    goto :goto_0

    .line 1291
    :cond_0
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "URIHandlerActivity"

    const-string v0, "Cannot import from file system without permission"

    invoke-static {p2, p3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    invoke-direct {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->exitActivity(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 6

    const-string v0, "onResume"

    const-string v1, "URIHandlerActivity"

    .line 1352
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onResume()V

    .line 1354
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVPNServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->OnVisibilityChange(Z)V

    .line 1356
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mCurrentPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    if-eqz v0, :cond_1

    .line 1358
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mIsPromptHandlerRegistered:Z

    if-nez v0, :cond_1

    const v0, 0x7f11013c

    const/4 v3, 0x0

    .line 1362
    :try_start_0
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "registering prompt handler"

    invoke-static {v4, v1, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mCurrentPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    invoke-interface {v4, v5}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RegisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1366
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "RegisterPromptHandler failed"

    invoke-static {v2, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->exitActivity(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1378
    :cond_0
    iput-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mIsPromptHandlerRegistered:Z

    goto :goto_0

    .line 1373
    :catch_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "RemoteException on RegisterPromptHandler"

    invoke-static {v2, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->exitActivity(ZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 5

    const-string v0, "onStop"

    const-string v1, "URIHandlerActivity"

    .line 1307
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onStop()V

    .line 1310
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVPNServiceConnection:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->OnVisibilityChange(Z)V

    .line 1312
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mVpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mCurrentPromptHandler:Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    if-eqz v3, :cond_1

    iget-boolean v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mIsPromptHandlerRegistered:Z

    if-eqz v4, :cond_1

    .line 1316
    :try_start_0
    invoke-interface {v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->UnregisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1319
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "UnregisterPromptHandler failed"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1329
    :cond_0
    iput-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->mIsPromptHandlerRegistered:Z

    goto :goto_0

    .line 1325
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RemoteException on UnregisterPromptHandler"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

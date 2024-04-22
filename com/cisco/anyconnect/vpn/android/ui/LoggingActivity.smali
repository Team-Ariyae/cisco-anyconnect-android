.class public Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "LoggingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoFragment;,
        Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;,
        Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;,
        Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogTabs;
    }
.end annotation


# static fields
.field private static final ADMIN_EMAIL_KEY:Ljava/lang/String; = "admin_email"

.field private static final APP_MESSAGE_MAX_ATTEMPTS:I = 0x14

.field public static final ENTITY_NAME:Ljava/lang/String; = "LoggingActivity"

.field private static final LOGCAT_TAGS:[Ljava/lang/String;

.field private static final LOGS_READY_FOR_EMAIL_MSG:I = 0x1

.field private static final LOG_FILENAME_PREFIX:Ljava/lang/String; = "logs"

.field private static final LOG_FILENAME_SUFFIX:Ljava/lang/String; = ".zip"

.field private static final LOG_INIT_FINISHED_MSG:I = 0x0

.field private static LogFileNames:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_LOG_FILES:I = 0x5

.field private static final NVM_CLOUD_PROFILE:Ljava/lang/String; = "NVM_CloudServiceProfile.xml"

.field private static final NVM_DIR:Ljava/lang/String; = "NVM"

.field private static final NVM_ONPREM_PROFILE:Ljava/lang/String; = "NVM_ServiceProfile.xml"

.field private static final OPTION_EMAIL_LOGS_TO_ADMIN:I = 0x0

.field private static final OPTION_EMAIL_LOGS_TO_CISCO:I = 0x1

.field private static final OPTION_MENU_CLEAR_DEBUG_LOGS:I = 0x1

.field private static final OPTION_MENU_CUSTOMIZE_DEBUG_LOGS:I = 0x2

.field private static final OPTION_MENU_EMAIL_LOGS:I = 0x0

.field private static final OPTION_MENU_PACKET_CAPTURE:I = 0x4

.field private static final OPTION_MENU_REFRESH:I = 0x3

.field private static final OPTION_SEND_EMAIL_TO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final PCAP_FILE_NAME:Ljava/lang/String; = "tun.pcap"

.field private static final RESULT_CODE_PROB_STEPS:I = 0x64

.field private static final SPINNER_MAX_INTERVAL:J = 0xea60L

.field private static final UMBRELLA_REG_TOKEN_KEY:Ljava/lang/String; = "umbrella_reg_token"

.field private static final WAIT_FOR_LOGS_TIMEOUT_MILLISECONDS:I = 0x2710

.field private static final WAIT_FOR_SERVICE_TIMEOUT_MILLISECONDS:I = 0xc8


# instance fields
.field private final EMAIL_TO_CISCO:Ljava/lang/String;

.field private mClientVersion:Ljava/lang/String;

.field private mDebugFragment:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;

.field private mDeleteLogDialog:Landroidx/appcompat/app/AlertDialog;

.field private mDevicePlatform:Ljava/lang/String;

.field private mDismissSpinnerTask:Ljava/lang/Runnable;

.field private mEmailProblem:Ljava/lang/String;

.field private mEmailReproSteps:Ljava/lang/String;

.field private mEmailTime:Ljava/util/Date;

.field private mEmailToDialog:Landroidx/appcompat/app/AlertDialog;

.field private mFilteredLogFile:Ljava/io/File;

.field private final mGatherLogsLock:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private mIsGatheringLogs:Z

.field private mIsVPNServiceReady:Z

.field private final mLogDumpFileLock:Ljava/lang/Object;

.field private mLogListener:Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;

.field private mLogcatParser:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

.field private mLoggingEmailMessage:Ljava/lang/String;

.field private mModuleLogFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mNoticeInfoFragment:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

.field private mSystemInfo:Ljava/lang/String;

.field private mSystemInfoFragment:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoFragment;

.field private mUnfilteredLogFile:Ljava/io/File;

.field private mUserInputEmailDialog:Landroid/app/AlertDialog;

.field private mUserInputInProgress:Z

.field private mViewPager:Landroidx/viewpager2/widget/ViewPager2;

.field private mViewPagerAdapter:Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDebugFragment(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mDebugFragment:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVPNServiceReady(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mIsVPNServiceReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogListener(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLogListener:Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNoticeInfoFragment(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mNoticeInfoFragment:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceConnMgr(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewPager(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsVPNServiceReady(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mIsVPNServiceReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLogs(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->updateLogs(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->LogFileNames:Ljava/util/List;

    .line 143
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->OPTION_SEND_EMAIL_TO:Ljava/util/List;

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AnyConnect"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "vpnagent"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "acvpnagent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "vpnapi"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "vpndownloader"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "vpnsnak"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "VpnJni"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ConnectivityService"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "WifiStateTracker"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "WifiMonitor"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "AndroidRuntime"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "KnoxVpnEngine"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "KnoxVpnFirewallHelper"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "KnoxVpnEngineService"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "GenericVpnPolicy"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "NVM"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Umbrella"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Umbrella_Native"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "acnvmagent"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "NetworkAnalytics"

    aput-object v2, v0, v1

    .line 150
    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->LOGCAT_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 95
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    const-string v0, "ac-mobile-feedback@cisco.com"

    .line 101
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->EMAIL_TO_CISCO:Ljava/lang/String;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mModuleLogFiles:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mGatherLogsLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mIsGatheringLogs:Z

    .line 217
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mIsVPNServiceReady:Z

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLogDumpFileLock:Ljava/lang/Object;

    .line 231
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLogListener:Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;

    .line 239
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda9;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mDismissSpinnerTask:Ljava/lang/Runnable;

    .line 244
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda10;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkLogFiles()V
    .locals 7

    .line 1127
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->GetLogsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 1128
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->LogFileNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-string v1, "LoggingActivity"

    if-nez v0, :cond_0

    .line 1131
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Log file directory does not exist"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1136
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1137
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1140
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    const/4 v3, 0x5

    const-string v4, ".zip"

    const-string v5, "logs"

    if-ge v2, v3, :cond_2

    .line 1143
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1145
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1146
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1147
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->LogFileNames:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1153
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1155
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1156
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1157
    new-instance v3, Ljava/io/File;

    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->GetLogsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1158
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1159
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1164
    :cond_3
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->LogFileNames:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1169
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Exception when checking logs files:"

    invoke-static {v2, v1, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1166
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Security Exception when checking log files:"

    invoke-static {v2, v1, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private clearLogs()V
    .locals 6

    const-string v0, "LoggingActivity"

    .line 545
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$4;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "logcat"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v5, "-c"

    aput-object v5, v2, v3

    invoke-direct {v1, p0, v2, v4}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$4;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;[Ljava/lang/String;I)V

    .line 562
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->start()V

    .line 564
    :try_start_0
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 566
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "InterruptedException occurred while clearing logs"

    invoke-static {v2, v0, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 569
    :goto_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 572
    :try_start_1
    invoke-interface {v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->ClearAppMessages()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 574
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "RemoteException occurred while clearing recent app messages"

    invoke-static {v2, v0, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 578
    :cond_0
    :goto_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "tun.pcap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 583
    :cond_1
    invoke-static {}, Lcom/cisco/anyconnect/android/util/ACLogsQuery;->clearAllLogs()V

    .line 584
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->clearModuleLogFiles()V

    .line 586
    invoke-direct {p0, v4}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->updateLogs(Z)V

    return-void
.end method

.method private clearLogsAfterConfirm()V
    .locals 3

    .line 525
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f120131

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1101a2

    .line 527
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f1101a1

    .line 528
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const/4 v1, 0x1

    .line 529
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f110343

    .line 532
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f1101fc

    .line 538
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 540
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mDeleteLogDialog:Landroidx/appcompat/app/AlertDialog;

    .line 541
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private clearModuleLogFiles()V
    .locals 3

    .line 771
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->moduleLogFilesExists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 772
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLogDumpFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 773
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mModuleLogFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 774
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 777
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mModuleLogFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 778
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method private createEmailBundle()Ljava/io/File;
    .locals 11

    const-string v0, "NVM"

    const-string v1, "LoggingActivity"

    const-string v2, "logs"

    const/4 v3, 0x0

    .line 1186
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd\'T\'HH.mm.ss.SSSZ"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1187
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".zip"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1190
    invoke-direct {p0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->processFileBuffer(Ljava/lang/String;)V

    .line 1196
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->GetLogsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1197
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    :try_start_1
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->GetTempDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 1200
    new-instance v6, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;

    invoke-direct {v6, v5}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;-><init>(Ljava/io/File;)V

    .line 1203
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getEmailBundleTextFiles()Ljava/util/List;

    move-result-object v5

    .line 1204
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1206
    :try_start_2
    invoke-virtual {v6, v7}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->addTextFile(Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 1208
    :catch_0
    :try_start_3
    sget-object v8, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can\'t add file to email bundle: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;->fileName:Ljava/lang/CharSequence;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v1, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1213
    :cond_0
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->GetProfile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 1214
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_1

    .line 1216
    :try_start_4
    invoke-virtual {v6, v5}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->addExistingFile(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_11
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v5

    .line 1218
    :try_start_5
    sget-object v7, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v8, "failed to add profile to bundle"

    invoke-static {v7, v1, v8, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1223
    :cond_1
    :goto_1
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "NVM_ServiceProfile.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v7, :cond_2

    .line 1226
    :try_start_6
    invoke-virtual {v6, v5}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->addExistingFile(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_11
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v5

    .line 1228
    :try_start_7
    sget-object v7, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v8, "failed to add nvm onprem profile to bundle"

    invoke-static {v7, v1, v8, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1233
    :cond_2
    :goto_2
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "NVM_CloudServiceProfile.xml"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_3

    .line 1236
    :try_start_8
    invoke-virtual {v6, v5}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->addExistingFile(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_11
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    :catch_3
    move-exception v0

    .line 1238
    :try_start_9
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v7, "failed to add nvm cloud profile to bundle"

    invoke-static {v5, v1, v7, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1243
    :cond_3
    :goto_3
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->GetUserPreferences(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 1244
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v5, :cond_4

    .line 1246
    :try_start_a
    invoke-virtual {v6, v0}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->addExistingFile(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_11
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    :catch_4
    move-exception v0

    .line 1248
    :try_start_b
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v7, "failed to add user preferences to bundle"

    invoke-static {v5, v1, v7, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1253
    :cond_4
    :goto_4
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->GetGlobalPreferences(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 1254
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_11
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v5, :cond_5

    .line 1256
    :try_start_c
    invoke-virtual {v6, v0}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->addExistingFile(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_11
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_5

    :catch_5
    move-exception v0

    .line 1258
    :try_start_d
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v7, "failed to add global preferences to bundle"

    invoke-static {v5, v1, v7, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1262
    :cond_5
    :goto_5
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/util/ACDebugLogConfigurationManager;->GetCustomizeDebugLogsConfigurationFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 1263
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v5, :cond_6

    .line 1265
    :try_start_e
    invoke-virtual {v6, v0}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->addExistingFile(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_11
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_6

    :catch_6
    move-exception v0

    .line 1267
    :try_start_f
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v7, "failed to add the configuration file for customizing logs to bundle"

    invoke-static {v5, v1, v7, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1272
    :cond_6
    :goto_6
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->GetAndroidPreferences(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 1273
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_11
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v5, :cond_7

    .line 1275
    :try_start_10
    invoke-virtual {v6, v0}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->addExistingFile(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_11
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_7

    :catch_7
    move-exception v0

    .line 1277
    :try_start_11
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v7, "failed to add Android preferences to bundle"

    invoke-static {v5, v1, v7, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1282
    :cond_7
    :goto_7
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->moduleLogFilesExists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1283
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mModuleLogFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 1284
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v7, :cond_8

    .line 1286
    :try_start_12
    invoke-virtual {v6, v5}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->addExistingFile(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_11
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_8

    :catch_8
    move-exception v5

    :try_start_13
    const-string v7, "failed to add module\'s log file to bundle"

    .line 1288
    invoke-static {p0, v7, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 1295
    :cond_9
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->filteredLogExists()Z

    move-result v0
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_11
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-eqz v0, :cond_b

    .line 1297
    :try_start_14
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->filteredLogExists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1298
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mFilteredLogFile:Ljava/io/File;

    invoke-virtual {v6, v0}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->addExistingFile(Ljava/io/File;)V

    .line 1301
    :cond_a
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->unfilteredLogExists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1302
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mUnfilteredLogFile:Ljava/io/File;

    invoke-virtual {v6, v0}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->addExistingFile(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_11
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto :goto_9

    :catch_9
    move-exception v0

    .line 1305
    :try_start_15
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v7, "failed to add logcat dump to bundle"

    invoke-static {v5, v1, v7, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1309
    :cond_b
    :goto_9
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "tun.pcap"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_11
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    if-eqz v5, :cond_c

    .line 1312
    :try_start_16
    invoke-virtual {v6, v0}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->addExistingFile(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_11
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto :goto_a

    :catch_a
    move-exception v5

    .line 1314
    :try_start_17
    sget-object v7, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v8, "failed to add the pcap file to bundle"

    invoke-static {v7, v1, v8, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1319
    :cond_c
    :goto_a
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->GetDebugDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 1320
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1321
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v7, :cond_d

    aget-object v9, v5, v8

    .line 1322
    invoke-virtual {v6, v9}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->addExistingFile(Ljava/io/File;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 1327
    :cond_d
    invoke-virtual {v6, v2}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler;->createBundle(Ljava/io/OutputStream;)V

    .line 1330
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_e

    .line 1331
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "failed to generate email bundle"

    invoke-static {v0, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_11
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 1350
    :try_start_18
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_b

    :catch_b
    return-object v3

    .line 1335
    :cond_e
    :try_start_19
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "Deleting existing pcap file"

    .line 1336
    invoke-static {p0, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1337
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_11
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 1350
    :cond_f
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_c

    :catch_c
    return-object v4

    :catch_d
    move-exception v0

    goto :goto_c

    :catchall_0
    move-exception v0

    goto :goto_d

    :catch_e
    move-exception v0

    move-object v2, v3

    .line 1345
    :goto_c
    :try_start_1b
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "Unexpected IOException"

    invoke-static {v4, v1, v5, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    if-eqz v2, :cond_10

    .line 1350
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_f

    :catch_f
    :cond_10
    return-object v3

    :catch_10
    move-object v2, v3

    .line 1342
    :catch_11
    :try_start_1d
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Can\'t open zip file"

    invoke-static {v0, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    if-eqz v2, :cond_11

    .line 1350
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_12

    :catch_12
    :cond_11
    return-object v3

    :catchall_1
    move-exception v0

    move-object v3, v2

    :goto_d
    if-eqz v3, :cond_12

    :try_start_1f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_13

    .line 1354
    :catch_13
    :cond_12
    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e
.end method

.method private createOptionMenuItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;",
            ">;"
        }
    .end annotation

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 420
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;

    const/4 v2, 0x0

    const v3, 0x7f110127

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;

    const/4 v2, 0x1

    const v3, 0x7f1100ab

    invoke-direct {v1, v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;

    const/4 v2, 0x2

    const v3, 0x7f1100fe

    invoke-direct {v1, v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;

    const/4 v2, 0x3

    const v3, 0x7f110020

    invoke-direct {v1, v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;

    const/4 v2, 0x4

    const v3, 0x7f110226

    invoke-direct {v1, v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;-><init>(III)V

    .line 426
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;-><init>(Landroid/content/Context;)V

    const-string v3, "packet_capture_enabled"

    invoke-virtual {v2, v3}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 427
    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;->setChecked(Z)V

    .line 428
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private createProgressDialog()V
    .locals 2

    .line 696
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 697
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 698
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method private dismissPopups()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mUserInputEmailDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 272
    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mUserInputEmailDialog:Landroid/app/AlertDialog;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mEmailToDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 276
    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mEmailToDialog:Landroidx/appcompat/app/AlertDialog;

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mDeleteLogDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 279
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 280
    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mDeleteLogDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_2
    return-void
.end method

.method private dumpFilteredLogFile()V
    .locals 5

    const-string v0, "logcat -v time "

    .line 1671
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "debug_logs_filtered.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1673
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getLogcatFilter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -f "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1675
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLogDumpFileLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1676
    :try_start_1
    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mFilteredLogFile:Ljava/io/File;

    .line 1677
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 1679
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "LoggingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to dump logcat due to exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private dumpModuleLogs()V
    .locals 6

    .line 1651
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLogDumpFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1652
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mModuleLogFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1654
    invoke-static {}, Lcom/cisco/anyconnect/android/util/ACLogModule;->values()[Lcom/cisco/anyconnect/android/util/ACLogModule;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1655
    invoke-direct {p0, v4}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->dumpModuleLogsToFile(Lcom/cisco/anyconnect/android/util/ACLogModule;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1657
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mModuleLogFiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1660
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private dumpModuleLogsToFile(Lcom/cisco/anyconnect/android/util/ACLogModule;)Ljava/io/File;
    .locals 9

    const-string v0, "):\n"

    const-string v1, "Exception occurred while dumping logs for module ("

    const-string v2, "LoggingActivity"

    .line 1610
    invoke-virtual {p1}, Lcom/cisco/anyconnect/android/util/ACLogModule;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1612
    invoke-static {p1}, Lcom/cisco/anyconnect/android/util/ACLogsQuery;->queryLogs(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1613
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return-object v5

    .line 1617
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getFilesDir()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_logs.txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1621
    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1622
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1623
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1632
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v4

    goto :goto_3

    :catch_0
    move-exception v3

    .line 1636
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v3

    move-object v5, v6

    goto :goto_4

    :catch_1
    move-exception v3

    goto :goto_2

    :catchall_1
    move-exception v3

    goto :goto_4

    :catch_2
    move-exception v3

    move-object v6, v5

    .line 1627
    :goto_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_2

    .line 1632
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    .line 1636
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_3
    return-object v5

    :goto_4
    if-eqz v5, :cond_3

    .line 1632
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v4

    .line 1636
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1639
    :cond_3
    :goto_5
    goto :goto_7

    :goto_6
    throw v3

    :goto_7
    goto :goto_6
.end method

.method private dumpUnfilteredLogFile()V
    .locals 5

    const-string v0, "logcat -v time -f "

    .line 1689
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "debug_logs_unfiltered.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1691
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1693
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLogDumpFileLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1694
    :try_start_1
    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mUnfilteredLogFile:Ljava/io/File;

    .line 1695
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 1697
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "LoggingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to dump logcat due to exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private enablePacketCapture(Z)V
    .locals 2

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting packet capture to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;-><init>(Landroid/content/Context;)V

    const-string v1, "packet_capture_enabled"

    invoke-virtual {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->updateBoolean(Ljava/lang/String;Z)Z

    .line 465
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mOptionMenuItems:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;->setChecked(Z)V

    const/4 p1, 0x1

    .line 467
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mRedrawOptionsMenu:Z

    return-void
.end method

.method private filteredLogExists()Z
    .locals 2

    .line 789
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLogDumpFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 790
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mFilteredLogFile:Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 791
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 793
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private finishEmailLogs()V
    .locals 3

    const/4 v0, 0x1

    .line 812
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mUserInputInProgress:Z

    .line 813
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 814
    const-class v1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "problem_statement"

    .line 815
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mEmailProblem:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "reproduce_steps"

    .line 816
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mEmailReproSteps:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "time_of_occurrence"

    .line 817
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mEmailTime:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v1, 0x64

    .line 818
    invoke-virtual {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private formatLogTextForEmail()Ljava/lang/StringBuilder;
    .locals 3

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f110128

    .line 992
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getAppMessages()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f110126

    .line 1001
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mDebugFragment:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->getMessages()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getSystemInfoMap()Ljava/util/Map;

    move-result-object v1

    const v2, 0x7f110129

    .line 1013
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->MEMORY:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const v2, 0x7f1101cc

    .line 1019
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->MEMORY:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    :cond_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->INTERFACE:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const v2, 0x7f110188

    .line 1029
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->INTERFACE:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    :cond_1
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->ROUTE:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const v2, 0x7f11029a

    .line 1040
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->ROUTE:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    :cond_2
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->FILTERS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    const v2, 0x7f110145

    .line 1050
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->FILTERS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const v2, 0x7f110235

    .line 1059
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->PERMISSIONS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->PROCESS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    const v2, 0x7f110254

    .line 1068
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->PROCESS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    :cond_4
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->PROPERTIES:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    const v2, 0x7f11026b

    .line 1078
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->PROPERTIES:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    :cond_5
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->MEMORY_MAP:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    const v2, 0x7f1101cd

    .line 1088
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->MEMORY_MAP:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    :cond_6
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->IP_RULES:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    const v2, 0x7f11018b

    .line 1098
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->IP_RULES:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    :cond_7
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->ROUTE_TABLES:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    const v2, 0x7f110038

    .line 1107
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->ROUTE_TABLES:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const v2, 0x7f11011a

    .line 1116
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->DEVICE_IDENTIFIERS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private getAppMessages()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const-string v1, "LoggingActivity"

    .line 1413
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1415
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "VpnService is null"

    invoke-static {v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1419
    :cond_0
    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetAppMessages()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->noticeInfoListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1421
    :catch_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "RemoteException occurred while getting past notices"

    invoke-static {v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDeviceIdentifiers()Ljava/lang/String;
    .locals 5

    .line 1769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f11010d

    .line 1770
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f11010c

    .line 1771
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1772
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, " ("

    .line 1773
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1774
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 1775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    :cond_0
    new-instance v1, Lcom/cisco/android/nchs/support/DeviceInfoManager;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cisco/android/nchs/support/DeviceInfoManager;-><init>(Landroid/content/Context;)V

    .line 1779
    invoke-virtual {v1}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->refreshSavedDeviceInfo()Z

    .line 1780
    new-instance v2, Lcom/cisco/android/nchs/support/DeviceInfoReport;

    invoke-direct {v2, p0, v1}, Lcom/cisco/android/nchs/support/DeviceInfoReport;-><init>(Landroid/content/Context;Lcom/cisco/android/nchs/support/DeviceInfoManager;)V

    .line 1782
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Device Platform Version: Android "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->GetPlatformVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mDevicePlatform:Ljava/lang/String;

    .line 1783
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Client Version: (endpoint.anyconnect.version)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mClientVersion:Ljava/lang/String;

    .line 1785
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\nClient Version\n(endpoint.anyconnect.version)\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n\nDevice Locale\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1786
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->GetFormattedLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\nDevice ID\n(endpoint.anyconnect.deviceuniqueid)\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1787
    invoke-virtual {v2}, Lcom/cisco/android/nchs/support/DeviceInfoReport;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nPossible 2.5 Device ID:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1788
    invoke-virtual {v1}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getRel25DeviceID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nPossible 2.4 Device ID:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1789
    invoke-virtual {v1}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->GetRelease24DeviceID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\nPlatform Version\n(endpoint.anyconnect.platformversion)\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    invoke-virtual {v1}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->GetPlatformVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\nDevice Type\n(endpoint.anyconnect.devicetype)\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1791
    invoke-virtual {v1}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->GetDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\nProduct\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1792
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getProductInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEmailBundleTextFiles()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;",
            ">;"
        }
    .end annotation

    .line 879
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 882
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;

    const-string v2, "messages"

    const v3, 0x7f110128

    .line 883
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mNoticeInfoFragment:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;

    .line 884
    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->getMessages()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 882
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 890
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLogDumpFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 891
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mFilteredLogFile:Ljava/io/File;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 892
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 896
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;

    const-string v2, "debug_log"

    const v3, 0x7f110126

    .line 897
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mDebugFragment:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;

    .line 898
    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->getMessages()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 896
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    :cond_1
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getSystemInfoMap()Ljava/util/Map;

    move-result-object v1

    .line 904
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->ROUTE:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 905
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;

    const-string v3, "routes"

    const v4, 0x7f11029a

    .line 906
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->ROUTE:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 907
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-direct {v2, v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 905
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    :cond_2
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->INTERFACE:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 912
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;

    const-string v3, "interfaces"

    const v4, 0x7f110188

    .line 913
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->INTERFACE:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 914
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-direct {v2, v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 912
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    :cond_3
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->PROCESS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 919
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;

    const-string v3, "processes"

    const v4, 0x7f110254

    .line 920
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->PROCESS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 921
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-direct {v2, v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 919
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    :cond_4
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->PROPERTIES:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 926
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;

    const-string v3, "system_properties"

    const v4, 0x7f11026b

    .line 927
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->PROPERTIES:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 928
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-direct {v2, v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 926
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    :cond_5
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->MEMORY:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 933
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;

    const-string v3, "memory_info"

    const v4, 0x7f1101cc

    .line 934
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->MEMORY:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 935
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-direct {v2, v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 933
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    :cond_6
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->MEMORY_MAP:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 940
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;

    const-string v3, "memory_map"

    const v4, 0x7f1101cd

    .line 941
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->MEMORY_MAP:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 942
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-direct {v2, v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 940
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    :cond_7
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->FILTERS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 947
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;

    const-string v3, "filters"

    const v4, 0x7f110145

    .line 948
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->FILTERS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 949
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-direct {v2, v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 947
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    :cond_8
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->PERMISSIONS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 954
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;

    const-string v3, "permissions"

    const v4, 0x7f110235

    .line 955
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->PERMISSIONS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 956
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-direct {v2, v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 954
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    :cond_9
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->IP_RULES:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 961
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;

    const-string v3, "ip_rule"

    const v4, 0x7f11018b

    .line 962
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->IP_RULES:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 963
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-direct {v2, v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 961
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    :cond_a
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->ROUTE_TABLES:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 968
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;

    const-string v3, "all_route_tables"

    const v4, 0x7f110038

    .line 969
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->ROUTE_TABLES:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 970
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-direct {v2, v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 968
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    :cond_b
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;

    const-string v3, "device_identifiers"

    const v4, 0x7f11011a

    .line 975
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->DEVICE_IDENTIFIERS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 976
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\nDevice Info:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mSystemInfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 974
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;

    const-string v3, "managed_config"

    const-string v4, "Managed Configuration"

    sget-object v5, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->MANAGED_CONFIG:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    .line 982
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {v2, v3, v4, v1}, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 980
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :catchall_0
    move-exception v0

    .line 892
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getLogcatFilter()Ljava/lang/String;
    .locals 5

    .line 1592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1593
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->LOGCAT_TAGS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 1595
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":V "

    .line 1596
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, " *:S"

    .line 1600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkInterfaceInfoFromCM()Ljava/lang/StringBuilder;
    .locals 9

    .line 471
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 475
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v1, "connectivity"

    .line 477
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 478
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 479
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 480
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 484
    :cond_1
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v5

    .line 488
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    .line 489
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v5, "\n\n"

    .line 492
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error getting network interfaces"

    .line 496
    invoke-static {p0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-object v0
.end method

.method private getProductInfo()Ljava/lang/String;
    .locals 1

    .line 1797
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSystemInfo()V
    .locals 3

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nBrand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 504
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nManufacturer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 505
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nModel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 506
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nSDK version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nOS Architecture:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "os.arch"

    .line 508
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nKernel Version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "os.version"

    .line 509
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mSystemInfo:Ljava/lang/String;

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mSystemInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Hardware: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mSystemInfo:Ljava/lang/String;

    return-void
.end method

.method private getSystemInfoFromProcess(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1703
    invoke-direct {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getSystemInfoFromProcess(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSystemInfoFromProcess(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 1714
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 1715
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    .line 1716
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1718
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1720
    :goto_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1721
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1724
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1726
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "LoggingActivity"

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f11019d

    .line 1727
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSystemInfoMap()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/cisco/anyconnect/vpn/android/ui/helpers/BasicExpandableListAdapter$ExpandableListItem;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1446
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "/proc/meminfo"

    .line 1449
    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getSystemItemFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1450
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->MEMORY:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ip address"

    .line 1453
    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getSystemInfoFromProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1455
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1456
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getNetworkInterfaceInfoFromCM()Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1458
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1462
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1463
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->INTERFACE:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "ip route show"

    .line 1468
    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getSystemInfoFromProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1469
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1470
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->ROUTE:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    :cond_2
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->performPermissionsAudit()Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;

    move-result-object v1

    .line 1478
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->PERMISSIONS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1482
    iget-boolean v3, v1, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->hasCheckedForRoot:Z

    if-eqz v3, :cond_3

    .line 1485
    iget-boolean v1, v1, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->isRooted:Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    const-string v3, "iptables -L -n"

    .line 1489
    invoke-direct {p0, v3, v1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getSystemInfoFromProcess(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1490
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1491
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->FILTERS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, "ps -P"

    .line 1495
    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getSystemInfoFromProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1496
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1497
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->PROCESS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v1, "getprop"

    .line 1501
    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getSystemInfoFromProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1502
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1503
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->PROPERTIES:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "/proc/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/maps"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getSystemItemFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1508
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1509
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->MEMORY_MAP:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v1, "ip route list table all"

    .line 1513
    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getSystemInfoFromProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1514
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1515
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->ROUTE_TABLES:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v1, "ip rule"

    .line 1519
    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getSystemInfoFromProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1520
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1521
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->IP_RULES:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    :cond_9
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->DEVICE_IDENTIFIERS:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getDeviceIdentifiers()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1530
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vpn_configuration_list"

    .line 1532
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_a

    .line 1533
    array-length v7, v5

    if-lez v7, :cond_a

    .line 1534
    array-length v7, v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_a

    aget-object v9, v5, v8

    .line 1535
    check-cast v9, Landroid/os/Bundle;

    const-string v10, "Extra VPN Config:\n"

    .line 1536
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    invoke-static {v9, v6}, Lcom/cisco/anyconnect/vpn/android/util/BundlePrinter;->toString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_a
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v2

    const-string v4, "umbrella_reg_token"

    aput-object v4, v5, v6

    .line 1541
    invoke-static {v1, v2, v5}, Lcom/cisco/anyconnect/vpn/android/util/BundlePrinter;->toString(Landroid/os/Bundle;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;->MANAGED_CONFIG:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoItem;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-object v0
.end method

.method private getSystemItemFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "populateViewFromFile could not close buffer"

    const-string v1, "LoggingActivity"

    const v2, 0x7f11019d

    const/4 v3, 0x0

    .line 1736
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1737
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1739
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_0

    .line 1741
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1742
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1745
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1759
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1761
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v3, v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object p1

    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-object v3, v4

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_3
    move-exception v4

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    .line 1752
    :goto_2
    :try_start_3
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "populateViewFromFile IOException occured when reading file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v1, p1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1755
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_1

    .line 1759
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception v2

    .line 1761
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v3, v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    return-object p1

    :catchall_1
    move-exception p1

    move-object v3, v4

    goto :goto_6

    .line 1747
    :catch_5
    :goto_4
    :try_start_5
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "populateViewFromFile could not find file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_2

    .line 1759
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_5

    :catch_6
    move-exception v2

    .line 1761
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v3, v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_5
    return-object p1

    :goto_6
    if-eqz v3, :cond_3

    .line 1759
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v2

    .line 1761
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v3, v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1765
    :cond_3
    :goto_7
    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method static synthetic lambda$clearLogsAfterConfirm$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 538
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private moduleLogFilesExists()Z
    .locals 2

    .line 783
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLogDumpFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 784
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mModuleLogFiles:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 785
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private performPermissionsAudit()Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;
    .locals 1

    .line 1434
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;->getAudit(Landroid/content/Context;)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;

    move-result-object v0

    return-object v0
.end method

.method private populateAppMessages(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .line 1387
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda5;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1406
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private populateDebugLog(Ljava/util/concurrent/CountDownLatch;)V
    .locals 4

    const-string v0, "LoggingActivity"

    const-string v1, "populateDebugLog"

    .line 1550
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLogcatParser:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1554
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLogcatParser:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->destroy()V

    .line 1558
    :cond_0
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda11;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1560
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$5;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "logcat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-v"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "time"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getLogcatFilter()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xbb8

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$5;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;[Ljava/lang/String;ILjava/util/concurrent/CountDownLatch;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLogcatParser:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    .line 1583
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->start()V

    return-void
.end method

.method private populateSystemLog(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    const-string v0, "LoggingActivity"

    const-string v1, "populateSystemLog"

    .line 1438
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda8;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private processFileBuffer(Ljava/lang/String;)V
    .locals 5

    const-string v0, "LoggingActivity"

    .line 1363
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->LogFileNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 1364
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->LogFileNames:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1368
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->GetLogsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1369
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1370
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1375
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Failed to delete old log file from cyclic buffer: "

    invoke-static {v3, v0, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1373
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "null log file name: "

    invoke-static {v3, v0, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1379
    :cond_0
    :goto_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->LogFileNames:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1383
    :cond_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->LogFileNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private sendEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 849
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->createEmailBundle()Ljava/io/File;

    move-result-object v0

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mSystemInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mDevicePlatform:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mClientVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nProduct:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getProductInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 851
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 853
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLoggingEmailMessage:Ljava/lang/String;

    const-string v1, "line.separator"

    if-eqz p2, :cond_0

    .line 854
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f1102c3

    .line 855
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLoggingEmailMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v0, :cond_1

    .line 861
    invoke-virtual {v2, v0}, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->setFileAttachment(Ljava/io/File;)V

    goto :goto_0

    .line 863
    :cond_1
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->formatLogTextForEmail()Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 864
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 865
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 866
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 873
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->setTextAttchment(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->send()V

    return-void
.end method

.method private sendEmailLogs(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 822
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->OPTION_SEND_EMAIL_TO:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;

    iget v3, v3, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;->titleRes:I

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    .line 823
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;

    iget v1, v1, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;->titleRes:I

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 824
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v2, 0x7f120131

    invoke-direct {v1, p0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f1101a5

    .line 826
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 828
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda6;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 844
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mEmailToDialog:Landroidx/appcompat/app/AlertDialog;

    .line 845
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "LoggingActivity"

    const-string v0, "spinner has already started"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 681
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->createProgressDialog()V

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 684
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 685
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 687
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->startSpinnerTimer()V

    return-void
.end method

.method private startCustomizeDebugLogs()V
    .locals 2

    .line 516
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.CUSTOMIZE_DEBUG_LOGS_SHOW_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startEmailLogs()V
    .locals 2

    const v0, 0x7f110252

    .line 590
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110236

    .line 591
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 590
    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)V

    .line 603
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 604
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startSpinnerTimer()V
    .locals 4

    .line 691
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mDismissSpinnerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 692
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mDismissSpinnerTask:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private tryDismissSpinner()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method private unfilteredLogExists()Z
    .locals 2

    .line 799
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLogDumpFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mUnfilteredLogFile:Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 801
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 803
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateLogs(Z)V
    .locals 3

    .line 611
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mGatherLogsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 612
    :try_start_0
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mIsGatheringLogs:Z

    if-eqz v1, :cond_0

    .line 614
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "LoggingActivity"

    const-string v2, "still gathering logs"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 618
    iput-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mIsGatheringLogs:Z

    .line 619
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 623
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    .line 625
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda12;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;ZI)V

    .line 670
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 671
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception p1

    .line 619
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method synthetic lambda$clearLogsAfterConfirm$4$com-cisco-anyconnect-vpn-android-ui-LoggingActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 533
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->clearLogs()V

    .line 534
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$new$0$com-cisco-anyconnect-vpn-android-ui-LoggingActivity()V
    .locals 3

    .line 240
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "LoggingActivity"

    const-string v2, "Timeout. Try to dismiss spinner! "

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->tryDismissSpinner()V

    return-void
.end method

.method synthetic lambda$new$1$com-cisco-anyconnect-vpn-android-ui-LoggingActivity(Landroid/os/Message;)Z
    .locals 3

    .line 245
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    .line 254
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Logging Handler received message.what that was unknown: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LoggingActivity"

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->tryDismissSpinner()V

    .line 251
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->finishEmailLogs()V

    return v1

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->tryDismissSpinner()V

    return v1
.end method

.method synthetic lambda$onCreate$2$com-cisco-anyconnect-vpn-android-ui-LoggingActivity(Landroid/view/MenuItem;)Z
    .locals 3

    .line 333
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a0112

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a01f4

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a02b0

    if-eq p1, v0, :cond_0

    return v2

    .line 338
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return v1

    .line 335
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return v1

    .line 341
    :cond_2
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return v1
.end method

.method synthetic lambda$onCreate$3$com-cisco-anyconnect-vpn-android-ui-LoggingActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 355
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->updateLogs(Z)V

    return-void
.end method

.method synthetic lambda$populateAppMessages$10$com-cisco-anyconnect-vpn-android-ui-LoggingActivity(Ljava/util/concurrent/CountDownLatch;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-le v1, v0, :cond_1

    .line 1390
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mIsVPNServiceReady:Z

    if-eqz v1, :cond_0

    .line 1391
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1392
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getAppMessages()Ljava/lang/String;

    move-result-object p1

    .line 1393
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mNoticeInfoFragment:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->setContent(Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v1, 0xc8

    .line 1397
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1399
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "LoggingActivity"

    const-string v4, "Error: unexpected 20 while attempting to sleep"

    invoke-static {v2, v3, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method synthetic lambda$populateDebugLog$12$com-cisco-anyconnect-vpn-android-ui-LoggingActivity()V
    .locals 1

    .line 1558
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mDebugFragment:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->clear()V

    return-void
.end method

.method synthetic lambda$populateSystemLog$11$com-cisco-anyconnect-vpn-android-ui-LoggingActivity(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .line 1440
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mSystemInfoFragment:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoFragment;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getSystemInfoMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoFragment;->-$$Nest$mupdate(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoFragment;Ljava/util/Map;)V

    .line 1441
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method synthetic lambda$sendEmailLogs$9$com-cisco-anyconnect-vpn-android-ui-LoggingActivity(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p2, ""

    if-nez p3, :cond_0

    .line 831
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-string p3, "restrictions"

    .line 832
    invoke-virtual {p0, p3}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/RestrictionsManager;

    if-eqz p3, :cond_1

    .line 833
    invoke-virtual {p3}, Landroid/content/RestrictionsManager;->getApplicationRestrictions()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 834
    invoke-virtual {p3}, Landroid/content/RestrictionsManager;->getApplicationRestrictions()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "admin_email"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p3, :cond_1

    const-string p2, "ac-mobile-feedback@cisco.com"

    .line 842
    :cond_1
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->sendEmail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$startEmailLogs$6$com-cisco-anyconnect-vpn-android-ui-LoggingActivity()V
    .locals 3

    .line 595
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    monitor-enter v0

    .line 596
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->dumpModuleLogs()V

    .line 597
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->dumpFilteredLogFile()V

    .line 598
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->dumpUnfilteredLogFile()V

    .line 599
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 600
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic lambda$updateLogs$7$com-cisco-anyconnect-vpn-android-ui-LoggingActivity()V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method synthetic lambda$updateLogs$8$com-cisco-anyconnect-vpn-android-ui-LoggingActivity(ZI)V
    .locals 3

    .line 626
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 631
    :try_start_0
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 632
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->populateAppMessages(Ljava/util/concurrent/CountDownLatch;)V

    .line 633
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->populateSystemLog(Ljava/util/concurrent/CountDownLatch;)V

    .line 634
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->populateDebugLog(Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_0

    .line 637
    :cond_0
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 646
    :cond_1
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->populateDebugLog(Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_0

    .line 643
    :cond_2
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->populateSystemLog(Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_0

    .line 640
    :cond_3
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->populateAppMessages(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 654
    :goto_0
    :try_start_1
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v1, v2, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 656
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "LoggingActivity"

    const-string v1, "Timed out waiting for logs to populate"

    invoke-static {p1, p2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_4
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda7;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)V

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 660
    :catch_0
    :try_start_2
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "LoggingActivity"

    const-string v1, "Interrupted while waiting for logs to populate"

    invoke-static {p1, p2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :goto_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mGatherLogsLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p2, 0x0

    .line 665
    :try_start_3
    iput-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mIsGatheringLogs:Z

    .line 666
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 667
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p2

    .line 666
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p2

    :catchall_1
    move-exception p1

    .line 667
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method noticeInfoListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1824
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;

    .line 1825
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1828
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x64

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1804
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mUserInputInProgress:Z

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    const-string p2, "problem_statement"

    .line 1806
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mEmailProblem:Ljava/lang/String;

    const-string p2, "reproduce_steps"

    .line 1807
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mEmailReproSteps:Ljava/lang/String;

    const-string p2, "time_of_occurrence"

    .line 1808
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/Date;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mEmailTime:Ljava/util/Date;

    const-string p2, "submit"

    .line 1811
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1812
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "h:mm a"

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p2, p3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1813
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x7f110328

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    const/4 p1, 0x1

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mEmailProblem:Ljava/lang/String;

    aput-object v1, v0, p1

    const p1, 0x7f110329

    .line 1814
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 p1, 0x3

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mEmailReproSteps:Ljava/lang/String;

    aput-object v1, v0, p1

    const p1, 0x7f1102c8

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mEmailTime:Ljava/util/Date;

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    const-string p1, "%s\n%s\n\n%s\n%s\n\n%s\n%s\n"

    .line 1813
    invoke-static {p3, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1815
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->sendEmailLogs(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "LoggingActivity"

    const-string v1, "onCreate()"

    .line 297
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    .line 300
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->createOptionMenuItems()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->setOptionsMenu(Ljava/util/List;)V

    .line 303
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "LoggingKeyMessage"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLoggingEmailMessage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 305
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mEmailProblem:Ljava/lang/String;

    .line 306
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mEmailReproSteps:Ljava/lang/String;

    const p1, 0x7f0d006c

    .line 309
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->setContentView(I)V

    const p1, 0x7f0a01d9

    .line 312
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    .line 313
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 314
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 315
    new-instance p1, Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mViewPagerAdapter:Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;

    .line 319
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;

    invoke-direct {p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mNoticeInfoFragment:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;

    .line 320
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoFragment;

    invoke-direct {p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoFragment;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mSystemInfoFragment:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoFragment;

    .line 321
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;

    invoke-direct {p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mDebugFragment:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;

    .line 322
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mViewPagerAdapter:Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mNoticeInfoFragment:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;->addFragment(Landroidx/fragment/app/Fragment;)V

    .line 323
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mViewPagerAdapter:Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mSystemInfoFragment:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$SystemInfoFragment;

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;->addFragment(Landroidx/fragment/app/Fragment;)V

    .line 324
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mViewPagerAdapter:Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mDebugFragment:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;->addFragment(Landroidx/fragment/app/Fragment;)V

    .line 327
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 328
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mViewPagerAdapter:Lcom/cisco/anyconnect/ui/ViewPagerFragmentAdapter;

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p1, 0x7f0a0088

    .line 331
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/navigation/NavigationBarView;

    .line 332
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/navigation/NavigationBarView;->setOnItemSelectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    .line 348
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v1, 0x7f0a01f4

    .line 349
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f1101ce

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const v1, 0x7f0a02b0

    .line 350
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f1102c2

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const v1, 0x7f0a0112

    .line 351
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const v1, 0x7f11010f

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const p1, 0x7f0a01d5

    .line 354
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 355
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)V

    invoke-virtual {p1, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 356
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge p1, v1, :cond_0

    .line 357
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 360
    :cond_0
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;Landroid/content/Context;)V

    invoke-direct {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    .line 406
    monitor-enter p1

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Activate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "LoggingActivity"

    const-string v2, "ServiceConnMgr.Activate failed"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->getSystemInfo()V

    .line 415
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->checkLogFiles()V

    return-void

    :catchall_0
    move-exception v0

    .line 412
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onDestroy()V
    .locals 3

    .line 737
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onDestroy()V

    const-string v0, "LoggingActivity"

    const-string v1, "onDestroy"

    .line 738
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->tryDismissSpinner()V

    .line 743
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->dismissPopups()V

    .line 745
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLogcatParser:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->destroy()V

    .line 749
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLogcatParser:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 751
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "LoggingActivity"

    const-string v2, "Logcat Parser thread received interruption"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    monitor-enter v0

    .line 756
    :try_start_1
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Deactivate()V

    .line 757
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 759
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->clearModuleLogFiles()V

    .line 761
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->filteredLogExists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mFilteredLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 765
    :cond_1
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->unfilteredLogExists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 766
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mUnfilteredLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 757
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 289
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "LoggingKeyMessage"

    .line 290
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLoggingEmailMessage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 292
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mEmailProblem:Ljava/lang/String;

    .line 293
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mEmailReproSteps:Ljava/lang/String;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 435
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 457
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 449
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->enablePacketCapture(Z)V

    return v1

    :cond_1
    const/4 p1, 0x0

    .line 453
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->updateLogs(Z)V

    return v1

    .line 445
    :cond_2
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->startCustomizeDebugLogs()V

    return v1

    .line 437
    :cond_3
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->clearLogsAfterConfirm()V

    return v1

    .line 441
    :cond_4
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->startEmailLogs()V

    return v1
.end method

.method protected onPause()V
    .locals 3

    .line 722
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onPause()V

    const-string v0, "onPause"

    const-string v1, "LoggingActivity"

    .line 723
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLogcatParser:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mUserInputInProgress:Z

    if-nez v2, :cond_0

    .line 726
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->destroy()V

    .line 729
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLogcatParser:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 731
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Logcat Parser thread received interruption"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 707
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onRestart()V

    const-string v0, "LoggingActivity"

    const-string v1, "onRestart"

    .line 708
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->mLogcatParser:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 712
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->updateLogs(Z)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 717
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onResume()V

    const-string v0, "LoggingActivity"

    const-string v1, "onResume"

    .line 718
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 702
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onStop()V

    const-string v0, "LoggingActivity"

    const-string v1, "onStop()"

    .line 703
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

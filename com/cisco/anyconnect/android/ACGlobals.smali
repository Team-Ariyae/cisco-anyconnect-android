.class public Lcom/cisco/anyconnect/android/ACGlobals;
.super Ljava/lang/Object;
.source "ACGlobals.java"


# static fields
.field public static final AC_LOGS_PROVIDER_AUTHORITY:Ljava/lang/String; = "content://com.cisco.anyconnect.android.util.ACLogsProvider"

.field public static final AC_LOGS_PROVIDER_AUTHORITY_URI:Landroid/net/Uri;

.field public static final AC_LOG_ENTRY_MESSAGE:Ljava/lang/String; = "message"

.field public static final AC_LOG_ENTRY_MODULE:Ljava/lang/String; = "module"

.field public static final AC_LOG_ENTRY_PROCESS_INFO:Ljava/lang/String; = "processInfo"

.field public static final AC_LOG_ENTRY_SEVERITY:Ljava/lang/String; = "severity"

.field public static final AC_LOG_ENTRY_TAG:Ljava/lang/String; = "tag"

.field public static final AC_LOG_ENTRY_TIMESTAMP_MS:Ljava/lang/String; = "time-ms"

.field public static final AC_LOG_PROVIDER_QUERY_COLUMN:Ljava/lang/String; = "log"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.cisco.anyconnect.android.util.ACLogsProvider"

    .line 25
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cisco/anyconnect/android/ACGlobals;->AC_LOGS_PROVIDER_AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class Lcom/cisco/anyconnect/vpn/android/service/ApiService;
.super Ljava/lang/Object;
.source "ApiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;,
        Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy;,
        Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;,
        Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;,
        Lcom/cisco/anyconnect/vpn/android/service/ApiService$InitializationException;
    }
.end annotation


# static fields
.field private static final API_TIMEOUT_MILLISECONDS:J = 0x4e20L

.field private static final ENTITY_NAME:Ljava/lang/String; = "ApiService"


# instance fields
.field private final mACImporterCBProxy:Lcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;

.field private final mACImporterProxy:Lcom/cisco/anyconnect/vpn/jni/IACImporter;

.field private mApiCallbackProxy:Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;

.field private final mApiProxy:Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/ApiService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->runTask(Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->runTask(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;Lcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cisco/anyconnect/vpn/android/service/ApiService$InitializationException;
        }
    .end annotation

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 850
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->mHandler:Landroid/os/Handler;

    .line 853
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 856
    new-instance p1, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;

    invoke-direct {p1}, Lcom/cisco/anyconnect/vpn/jni/VpnApiImpl;-><init>()V

    .line 858
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Lcom/cisco/anyconnect/vpn/jni/IVpnApi;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->mApiProxy:Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    .line 860
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;

    invoke-direct {v1, p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->mApiCallbackProxy:Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;

    .line 861
    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->Init(Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 868
    new-instance p2, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy;

    invoke-direct {p2, p0, p3}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Lcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;)V

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->mACImporterCBProxy:Lcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;

    .line 870
    invoke-interface {p1, p2}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->CreateACImporter(Lcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;)Lcom/cisco/anyconnect/vpn/jni/IACImporter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 876
    new-instance p2, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;

    invoke-direct {p2, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Lcom/cisco/anyconnect/vpn/jni/IACImporter;)V

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->mACImporterProxy:Lcom/cisco/anyconnect/vpn/jni/IACImporter;

    return-void

    .line 873
    :cond_0
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/service/ApiService$InitializationException;

    const-string p2, "Failed to create ACImporter"

    invoke-direct {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$InitializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 864
    :cond_1
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/service/ApiService$InitializationException;

    const-string p2, "Failed to initialize VpnApi"

    invoke-direct {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$InitializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private runTask(Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-wide/16 v3, 0x4e20

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 881
    invoke-direct/range {v0 .. v5}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->runTask(Ljava/util/concurrent/Callable;Ljava/lang/String;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private runTask(Ljava/util/concurrent/Callable;Ljava/lang/String;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Ljava/lang/String;",
            "JTT;)TT;"
        }
    .end annotation

    const-string v0, "ApiService"

    .line 904
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 907
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p3, p4, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 919
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "Exception executing task:"

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, v0, p2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p5

    .line 914
    :catch_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Timed out executing task: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object p5
.end method

.method private runTask(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    const-wide/16 v3, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 886
    invoke-direct/range {v0 .. v5}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->runTask(Ljava/util/concurrent/Callable;Ljava/lang/String;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getACImporter()Lcom/cisco/anyconnect/vpn/jni/IACImporter;
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->mACImporterProxy:Lcom/cisco/anyconnect/vpn/jni/IACImporter;

    return-object v0
.end method

.method public getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->mApiProxy:Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

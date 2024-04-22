.class public Lcom/cisco/anyconnect/vpn/android/process/ProcessLauncherFactory;
.super Ljava/lang/Object;
.source "ProcessLauncherFactory.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "ProcessLauncherFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createRootProcessLauncher()Lcom/cisco/anyconnect/vpn/android/process/ProcessLauncher;
    .locals 4

    :try_start_0
    const-string v0, "com.cisco.anyconnect.vpn.android.process.RootProcessLauncher"

    .line 34
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/process/ProcessLauncher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 38
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "ProcessLauncherFactory"

    const-string v3, "createRootProcessLauncher failed"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Z)Lcom/cisco/anyconnect/vpn/android/process/ProcessLauncher;
    .locals 0

    if-eqz p0, :cond_0

    .line 23
    invoke-static {}, Lcom/cisco/android/nchs/permissions/Prerequisites;->haveRootAccess()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 24
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/process/ProcessLauncherFactory;->createRootProcessLauncher()Lcom/cisco/anyconnect/vpn/android/process/ProcessLauncher;

    move-result-object p0

    return-object p0

    .line 27
    :cond_0
    new-instance p0, Lcom/cisco/anyconnect/vpn/android/process/DefaultProcessLauncher;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/process/DefaultProcessLauncher;-><init>()V

    return-object p0
.end method

.class public Lcom/cisco/anyconnect/vpn/android/util/NMSDnsSetter;
.super Lcom/cisco/anyconnect/vpn/android/util/DnsSetter;
.source "NMSDnsSetter.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NMSDnsSetter"


# instance fields
.field private final mNmsStub:Ljava/lang/Object;

.field private final mSetDefaultIfMethod:Ljava/lang/reflect/Method;

.field private final mSetIfDnsMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 34
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/DnsSetter;-><init>(Landroid/content/Context;)V

    :try_start_0
    const-string p1, "android.os.ServiceManager"

    .line 37
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getService"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 38
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "network_management"

    aput-object v2, v0, v4

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "android.os.INetworkManagementService$Stub"

    .line 40
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "asInterface"

    new-array v5, v1, [Ljava/lang/Class;

    .line 41
    const-class v6, Landroid/os/IBinder;

    aput-object v6, v5, v4

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 42
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/util/NMSDnsSetter;->mNmsStub:Ljava/lang/Object;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setDnsServersForInterface"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const-class v5, [Ljava/lang/String;

    aput-object v5, v3, v1

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v5, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/NMSDnsSetter;->mSetIfDnsMethod:Ljava/lang/reflect/Method;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "setDefaultInterfaceForDns"

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/util/NMSDnsSetter;->mSetDefaultIfMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to initialize NMSDnsSetter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public restoreDns(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/util/NMSDnsSetter;->mSetDefaultIfMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/util/NMSDnsSetter;->mNmsStub:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 81
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "NMSDnsSetter"

    const-string v3, "restoreDns failed"

    invoke-static {v1, v2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public setDns(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "NMSDnsSetter"

    const/4 v1, 0x0

    .line 58
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/util/NMSDnsSetter;->mSetIfDnsMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/util/NMSDnsSetter;->mNmsStub:Ljava/lang/Object;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {p3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    aput-object p3, v5, v3

    const/4 p3, 0x2

    aput-object p2, v5, p3

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_0
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "No DNS servers configured."

    invoke-static {p2, v0, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/util/NMSDnsSetter;->mSetDefaultIfMethod:Ljava/lang/reflect/Method;

    iget-object p3, p0, Lcom/cisco/anyconnect/vpn/android/util/NMSDnsSetter;->mNmsStub:Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p2, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 69
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "setDns failed"

    invoke-static {p2, v0, p3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

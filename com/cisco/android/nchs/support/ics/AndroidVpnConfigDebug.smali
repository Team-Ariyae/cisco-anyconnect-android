.class Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;
.super Ljava/lang/Object;
.source "AndroidVpnConfigDebug.java"


# instance fields
.field addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field allowBypass:Z

.field allowFamily:I

.field allowedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field appliedRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field directProxyExclude:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field directProxyHost:Ljava/lang/String;

.field disallowedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dnsSearchDomains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field excludeRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field includeRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field knoxMetaEnabled:Z

.field knoxProfileName:Ljava/lang/String;

.field mtu:I

.field pacProxyUrl:Ljava/lang/String;

.field session:Ljava/lang/String;

.field timestamp:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->appliedRoutes:Ljava/util/List;

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->allowFamily:I

    return-void
.end method


# virtual methods
.method addAddress(Ljava/lang/String;I)V
    .locals 1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->addresses:Ljava/util/List;

    if-nez p2, :cond_0

    .line 49
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->addresses:Ljava/util/List;

    .line 52
    :cond_0
    iget-object p2, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->addresses:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addAllowedApp(Ljava/lang/String;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->allowedApps:Ljava/util/List;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->allowedApps:Ljava/util/List;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->allowedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addAppliedRoute(Ljava/lang/String;I)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->appliedRoutes:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addDisallowedApp(Ljava/lang/String;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->disallowedApps:Ljava/util/List;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->disallowedApps:Ljava/util/List;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->disallowedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addDnsSearch(Ljava/lang/String;)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->dnsSearchDomains:Ljava/util/List;

    if-nez p1, :cond_0

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->dnsSearchDomains:Ljava/util/List;

    :cond_0
    return-void
.end method

.method addDnsServer(Ljava/lang/String;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->dnsServers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->dnsServers:Ljava/util/List;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->dnsServers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addRoute(Ljava/lang/String;IZ)V
    .locals 2

    const-string v0, "/"

    if-eqz p3, :cond_1

    .line 84
    iget-object p3, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->excludeRoutes:Ljava/util/List;

    if-nez p3, :cond_0

    .line 85
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->excludeRoutes:Ljava/util/List;

    .line 87
    :cond_0
    iget-object p3, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->excludeRoutes:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_1
    iget-object p3, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->includeRoutes:Ljava/util/List;

    if-nez p3, :cond_2

    .line 90
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->includeRoutes:Ljava/util/List;

    .line 92
    :cond_2
    iget-object p3, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->includeRoutes:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method setDirectProxy(Ljava/lang/String;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->directProxyHost:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->directProxyExclude:Ljava/util/List;

    return-void
.end method

.method writeFile(Ljava/io/File;)V
    .locals 2

    .line 110
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/android/nchs/support/ics/AndroidVpnConfigDebug;->timestamp:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char p1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "vpnconfig"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 114
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 119
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo v0, "writeFile failed"

    .line 122
    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

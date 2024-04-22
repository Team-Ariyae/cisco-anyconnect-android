.class public Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/jni/IVpnApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VpnApiProxy"
.end annotation


# instance fields
.field private final mTarget:Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTarget(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)Lcom/cisco/anyconnect/vpn/jni/IVpnApi;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->mTarget:Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    return-object p0
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Lcom/cisco/anyconnect/vpn/jni/IVpnApi;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->mTarget:Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    return-void
.end method


# virtual methods
.method public Attach()Z
    .locals 4

    .line 112
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$2;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)V

    .line 120
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Attach"

    invoke-static {v1, v0, v3, v2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public Connect(Lcom/cisco/anyconnect/vpn/jni/HostEntry;Lcom/cisco/anyconnect/vpn/jni/JniHashMap;)Z
    .locals 2

    .line 207
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$9;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;Lcom/cisco/anyconnect/vpn/jni/HostEntry;Lcom/cisco/anyconnect/vpn/jni/JniHashMap;)V

    .line 215
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "Connect"

    invoke-static {p1, v0, v1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public CreateACImporter(Lcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;)Lcom/cisco/anyconnect/vpn/jni/IACImporter;
    .locals 3

    .line 509
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$31;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$31;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;Lcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;)V

    .line 517
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const-string v1, "CreateACImporter"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/jni/IACImporter;

    return-object p1
.end method

.method public DeleteCertificates(ILjava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 496
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$30;

    invoke-direct {v0, p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$30;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;ILjava/util/List;)V

    .line 504
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "DeleteCertificates"

    invoke-static {p1, v0, v1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public DeleteProfileByName(Ljava/lang/String;)Z
    .locals 3

    .line 442
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$26;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$26;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;Ljava/lang/String;)V

    .line 450
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "DeleteProfileByName"

    invoke-static {p1, v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public Destroy()V
    .locals 3

    .line 125
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$3;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$3;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)V

    .line 135
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const-string v2, "Destroy"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public Detach()V
    .locals 3

    .line 140
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$4;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$4;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)V

    .line 150
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const-string v2, "Detach"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public Disconnect()V
    .locals 3

    .line 220
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$10;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$10;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)V

    .line 230
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const-string v2, "Disconnect"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public EnumerateCertificates(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;",
            ">;"
        }
    .end annotation

    .line 482
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$29;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$29;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;I)V

    .line 490
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const-string v1, "EnumerateCertificates"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public GetActiveLocale()Ljava/lang/String;
    .locals 4

    .line 535
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$33;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$33;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)V

    .line 543
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const-string v2, "GetActiveLocale"

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public GetAvailableLocales()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 522
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$32;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$32;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)V

    .line 530
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const-string v2, "GetAvailableLocales"

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public GetClientCertificates()Z
    .locals 4

    .line 389
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$22;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$22;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)V

    .line 397
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "GetClientCertificates"

    invoke-static {v1, v0, v3, v2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public GetDefaultHostname()Ljava/lang/String;
    .locals 4

    .line 194
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$8;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$8;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)V

    .line 202
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const-string v2, "GetDefaultHostname"

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public GetHostnames()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 181
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$7;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$7;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)V

    .line 189
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const-string v2, "GetHostnames"

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public GetHosts()[Lcom/cisco/anyconnect/vpn/jni/HostEntry;
    .locals 4

    .line 402
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$23;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$23;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)V

    .line 410
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const-string v2, "GetHosts"

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    return-object v0
.end method

.method public GetPreferences()Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;
    .locals 4

    .line 332
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$18;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$18;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)V

    .line 341
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const-string v2, "GetPreferences"

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;

    return-object v0
.end method

.method public GetProfileContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 455
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$27;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$27;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;Ljava/lang/String;)V

    .line 463
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const-string v1, "GetProfileContents"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public ImportPKCS12WithPassword([BLjava/lang/String;)[B
    .locals 2

    .line 429
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$25;

    invoke-direct {v0, p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$25;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;[BLjava/lang/String;)V

    .line 437
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const-string p2, "ImportPKCS12WithPassword"

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public ImportProfile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 469
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$28;

    invoke-direct {v0, p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$28;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "ImportProfile"

    invoke-static {p1, v0, v1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public ImportServerCert([B)V
    .locals 3

    .line 561
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$35;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$35;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;[B)V

    .line 570
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const-string v1, "ImportServerCert"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public Init(Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;)Z
    .locals 3

    .line 99
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$1;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;)V

    .line 107
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Init"

    invoke-static {p1, v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public IsConnected()Z
    .locals 4

    .line 155
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$5;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$5;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)V

    .line 163
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "IsConnected"

    invoke-static {v1, v0, v3, v2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public IsOperatingMode(Lcom/cisco/anyconnect/vpn/jni/OperatingMode;)Z
    .locals 3

    .line 548
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$34;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$34;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;Lcom/cisco/anyconnect/vpn/jni/OperatingMode;)V

    .line 556
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "IsOperatingMode"

    invoke-static {p1, v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public IsRevocationEnabled()Z
    .locals 4

    .line 291
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$15;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$15;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)V

    .line 299
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "IsRevocationEnabled"

    invoke-static {v1, v0, v3, v2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public IsVpnServiceAvailable()Z
    .locals 4

    .line 168
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$6;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$6;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)V

    .line 176
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "IsVpnServiceAvailable"

    invoke-static {v1, v0, v3, v2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ProcessEvents()V
    .locals 3

    .line 359
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$20;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$20;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)V

    .line 369
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const-string v2, "ProcessEvents"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public RequestImportPKCS12([B)Z
    .locals 3

    .line 415
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$24;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$24;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;[B)V

    .line 423
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "RequestImportPKCS12"

    invoke-static {p1, v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public SavePreferences(Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;)Z
    .locals 3

    .line 346
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$19;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$19;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;Lcom/cisco/anyconnect/vpn/jni/PreferenceInfo;)V

    .line 354
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "SavePreferences"

    invoke-static {p1, v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public SetBannerResponse(Z)V
    .locals 2

    .line 235
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$11;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$11;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;Z)V

    .line 245
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const-string v1, "SetBannerResponse"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public SetCertBannerResponse(ZZ)V
    .locals 1

    .line 250
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$12;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;ZZ)V

    .line 260
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const-string p2, "SetCertBannerResponse"

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public SetFipsMode(Z)Z
    .locals 3

    .line 265
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$13;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$13;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;Z)V

    .line 273
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "SetFipsMode"

    invoke-static {p1, v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public SetNewTunnelGroup(Ljava/lang/String;)V
    .locals 3

    .line 374
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$21;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$21;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;Ljava/lang/String;)V

    .line 384
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const-string v1, "SetNewTunnelGroup"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public SetRevocationEnabled(Z)Z
    .locals 3

    .line 278
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$14;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$14;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;Z)V

    .line 286
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "SetRevocationEnabled"

    invoke-static {p1, v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public SetStrictMode(Z)Z
    .locals 3

    .line 304
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$16;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$16;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;Z)V

    .line 312
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "SetStrictMode"

    invoke-static {p1, v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public UserSubmit(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V
    .locals 2

    .line 317
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$17;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$17;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V

    .line 327
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const-string v1, "UserSubmit"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

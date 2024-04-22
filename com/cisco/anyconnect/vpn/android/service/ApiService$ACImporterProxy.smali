.class public Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/jni/IACImporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ACImporterProxy"
.end annotation


# instance fields
.field private final mTarget:Lcom/cisco/anyconnect/vpn/jni/IACImporter;

.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTarget(Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;)Lcom/cisco/anyconnect/vpn/jni/IACImporter;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;->mTarget:Lcom/cisco/anyconnect/vpn/jni/IACImporter;

    return-object p0
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Lcom/cisco/anyconnect/vpn/jni/IACImporter;)V
    .locals 0

    .line 777
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 778
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;->mTarget:Lcom/cisco/anyconnect/vpn/jni/IACImporter;

    return-void
.end method


# virtual methods
.method public CanImport()Z
    .locals 4

    .line 783
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;)V

    .line 791
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "CanImport"

    invoke-static {v1, v0, v3, v2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public Invalidate()V
    .locals 3

    .line 823
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy$4;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy$4;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;)V

    .line 832
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const-string v2, "Invalidate"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public RequestImportL10nArchive(Ljava/lang/String;)Z
    .locals 3

    .line 796
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy$2;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy$2;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;Ljava/lang/String;)V

    .line 804
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "RequestImportL10nArchive"

    invoke-static {p1, v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public RequestImportSGL10nData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 810
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy$3;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "RequestImportSGL10nData"

    invoke-static {p1, v0, v1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$mrunTask(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

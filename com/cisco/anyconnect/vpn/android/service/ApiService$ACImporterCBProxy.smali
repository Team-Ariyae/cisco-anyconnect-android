.class public Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ACImporterCBProxy"
.end annotation


# instance fields
.field private final mTarget:Lcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;

.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTarget(Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy;)Lcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy;->mTarget:Lcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;

    return-object p0
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Lcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy;->mTarget:Lcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;

    return-void
.end method


# virtual methods
.method public ImportL10nArchiveCB(Z)V
    .locals 2

    .line 751
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/ApiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ImportSGL10nDataCB(Z)V
    .locals 2

    .line 761
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/ApiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy$2;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

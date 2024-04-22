.class Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy$2;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy;->ImportSGL10nDataCB(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy;Z)V
    .locals 0

    .line 761
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy$2;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy;

    iput-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy$2;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 764
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy$2;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy;->-$$Nest$fgetmTarget(Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy;)Lcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterCBProxy$2;->val$result:Z

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;->ImportSGL10nDataCB(Z)V

    return-void
.end method

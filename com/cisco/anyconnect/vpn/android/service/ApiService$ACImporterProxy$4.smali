.class Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy$4;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;->Invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy$4;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 824
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 828
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy$4;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;->-$$Nest$fgetmTarget(Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;)Lcom/cisco/anyconnect/vpn/jni/IACImporter;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/jni/IACImporter;->Invalidate()V

    const/4 v0, 0x0

    return-object v0
.end method

.class Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy$3;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;->RequestImportSGL10nData(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;

.field final synthetic val$langCode:Ljava/lang/String;

.field final synthetic val$sgAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 811
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy$3;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy$3;->val$sgAddress:Ljava/lang/String;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy$3;->val$langCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 815
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy$3;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;->-$$Nest$fgetmTarget(Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy;)Lcom/cisco/anyconnect/vpn/jni/IACImporter;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy$3;->val$sgAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy$3;->val$langCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/IACImporter;->RequestImportSGL10nData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 811
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$ACImporterProxy$3;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

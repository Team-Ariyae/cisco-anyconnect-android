.class Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$2;
.super Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;
.source "ClientCertImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ClientCertificateCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public ImportPKCS12CompleteCB([BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->-$$Nest$fgetmCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->UnregisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "cert_hash"

    .line 124
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    array-length p1, p1

    if-lez p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    move-result-object p1

    const p2, 0x7f110069

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    invoke-interface {p1, v1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public SCEPEnrollExitCB()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public SCEPEnrollStartCB()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

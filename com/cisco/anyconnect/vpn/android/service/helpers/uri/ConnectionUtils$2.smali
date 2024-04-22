.class Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$2;
.super Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;
.source "ConnectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ClientCertificateCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->-$$Nest$fputmCertList(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;)V

    .line 139
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ConnectionUtils;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x37

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public ImportPKCS12CompleteCB([BLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

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

.class Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$CustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;


# direct methods
.method private constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$CustomWebViewClient;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$CustomWebViewClient-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$CustomWebViewClient;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 102
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$CustomWebViewClient;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->-$$Nest$fgetsslErrorUrl(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$CustomWebViewClient;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->setResult(I)V

    .line 104
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$CustomWebViewClient;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->finish()V

    :cond_0
    const-string p1, "\\?"

    .line 107
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$CustomWebViewClient;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->-$$Nest$fgetmFinalUrl(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 108
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 109
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$CustomWebViewClient;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->-$$Nest$fgetmExtractCookie(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$CustomWebViewClient;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->-$$Nest$fgetmExtractCookie(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/WebviewCookies;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "extract_cookie"

    .line 112
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$CustomWebViewClient;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$CustomWebViewClient;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->setResult(I)V

    .line 118
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$CustomWebViewClient;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->finish()V

    :cond_3
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 6

    .line 133
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$CustomWebViewClient;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->-$$Nest$fgetmNcss(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 136
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->getPrincipals()[Ljava/security/Principal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->getPrincipals()[Ljava/security/Principal;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ClientCertRequest Cert DN: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-interface {v3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->getKeyTypes()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ClientCertRequest Key Algorithms: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$CustomWebViewClient;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->-$$Nest$fgetmNcss(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->handleClientCertRequest(Ljava/util/List;Ljava/util/List;)Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 155
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/ClientCertRequestParcel;->getCertChain()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/webkit/ClientCertRequest;->proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    return-void

    :cond_1
    const-string p1, "Certificate matching ClientCertRequest parameters not found"

    .line 160
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Exception retrieving private key and certificate chain"

    .line 164
    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    const-string p1, "Null NetworkComponentSupportService"

    .line 169
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    :goto_1
    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->ignore()V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 125
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$CustomWebViewClient;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->-$$Nest$fputsslErrorUrl(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;Ljava/lang/String;)V

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected SSL error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const-string p1, "mailto:"

    .line 93
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SENDTO"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 95
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$CustomWebViewClient;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    invoke-virtual {p2, p1}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

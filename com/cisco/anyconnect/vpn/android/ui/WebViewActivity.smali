.class public Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$CustomWebViewClient;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "WebViewActivity"

.field public static final EXTRACT_COOKIE_KEY:Ljava/lang/String; = "extract_cookie"

.field public static final FINAL_URL_KEY:Ljava/lang/String; = "finalUrl"

.field public static final RESULT_ERROR_CLIENT_CERT_REQUEST:I = 0xe

.field public static final RESULT_ERROR_EXTRACT_COOKIE:I = 0xd

.field public static final RESULT_ERROR_SSL:I = 0xc

.field public static final URL_KEY:Ljava/lang/String; = "url"

.field public static final USER_AGENT_KEY:Ljava/lang/String; = "user_agent"

.field public static final WEBVIEW_SHOW_ACTION:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.WEBVIEW_SHOW_INTENT"


# instance fields
.field private mExtractCookie:Ljava/lang/String;

.field private mFinalUrl:Ljava/lang/String;

.field private mNcss:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

.field private mNcssConnection:Landroid/content/ServiceConnection;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private sslErrorUrl:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmExtractCookie(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mExtractCookie:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFinalUrl(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mFinalUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNcss(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mNcss:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressBar(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsslErrorUrl(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->sslErrorUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmNcss(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mNcss:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsslErrorUrl(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->sslErrorUrl:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadUrl(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->loadUrl()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 74
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mNcssConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private loadUrl()V
    .locals 3

    .line 178
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebViewActivity"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 185
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d00d8

    .line 187
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->setContentView(I)V

    .line 189
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "finalUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mFinalUrl:Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extract_cookie"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mExtractCookie:Ljava/lang/String;

    const p1, 0x7f0a0308

    .line 192
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const p1, 0x7f0a0309

    .line 193
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 194
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$CustomWebViewClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$CustomWebViewClient;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$CustomWebViewClient-IA;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 195
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 208
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 209
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 210
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 211
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 212
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 213
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 215
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v2, "user_agent"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 218
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 221
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p1, v2, :cond_1

    .line 226
    invoke-static {v1}, Landroid/webkit/WebView;->clearClientCertPreferences(Ljava/lang/Runnable;)V

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mUrl:Ljava/lang/String;

    .line 231
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 233
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 238
    :cond_2
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$3;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)V

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/WebviewCookies;->clearSessionCookies(Landroid/webkit/ValueCallback;)V

    .line 245
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    const-class v1, Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mNcssConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 253
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "WebViewActivity"

    const-string v1, "Failed to bind to NCSS"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 260
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 261
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mNcssConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 269
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    return p2

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->finish()V

    return p2

    .line 282
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 287
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 292
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

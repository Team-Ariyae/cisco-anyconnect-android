.class public Lcom/cisco/anyconnect/vpn/android/ui/HelpActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "HelpActivity.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "HelpActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 33
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/HelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "help_text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 39
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "HelpActivity"

    const-string v1, "Unexpected null help text."

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/HelpActivity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0d005d

    .line 44
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/HelpActivity;->setContentView(I)V

    const v0, 0x7f0a0194

    .line 45
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ListTagHandler;

    invoke-direct {v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ListTagHandler;-><init>()V

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

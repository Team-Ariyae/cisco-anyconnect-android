.class Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity$1;
.super Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
.source "CertWarningActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;Landroid/content/Context;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;

    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public OnServiceConnected(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;

    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity$1;)V

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$OnServiceConnected$0$com-cisco-anyconnect-vpn-android-ui-CertWarningActivity$1()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;->-$$Nest$mdrawMainView(Lcom/cisco/anyconnect/vpn/android/ui/CertWarningActivity;)V

    return-void
.end method

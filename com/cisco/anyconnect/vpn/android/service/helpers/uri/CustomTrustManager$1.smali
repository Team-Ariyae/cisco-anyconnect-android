.class Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager$1;
.super Ljava/lang/Object;
.source "CustomTrustManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 93
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->-$$Nest$fgetmTrustPromptLock(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 95
    :try_start_0
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->-$$Nest$fgetmPromptServerCert(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->-$$Nest$fputmLastTrustedServerCert(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;Ljava/security/cert/X509Certificate;)V

    .line 96
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->-$$Nest$fputmCertTrusted(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;Z)V

    .line 97
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;->-$$Nest$fgetmTrustPromptLock(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/CustomTrustManager;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 98
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

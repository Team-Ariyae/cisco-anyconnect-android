.class Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$4;
.super Ljava/lang/Object;
.source "CertificateEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 288
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.IMPORT_CERTIFICATE_SHOW_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

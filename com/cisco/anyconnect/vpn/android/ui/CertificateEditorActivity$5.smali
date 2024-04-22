.class Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$5;
.super Ljava/lang/Object;
.source "CertificateEditorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;
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

    .line 344
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string p1, "CertificateEditorActivity"

    const-string p2, "onListItemClick()"

    .line 348
    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "CertAuthMode"

    if-eqz p3, :cond_1

    const/4 p4, 0x1

    if-eq p3, p4, :cond_0

    .line 360
    sget-object p4, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 361
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->-$$Nest$fgetmListAdapter(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;

    move-result-object p2

    .line 362
    invoke-virtual {p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    const-string p3, "SelectedCertificate"

    .line 361
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 357
    :cond_0
    sget-object p3, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Automatic:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 354
    :cond_1
    sget-object p3, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Disabled:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 366
    :goto_0
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 367
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->finish()V

    return-void
.end method

.class Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2$1;
.super Ljava/lang/Object;
.source "CertificateEditorActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .line 190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 193
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.cisco.anyconnect.vpn.android.CERTIFICATE_SUMMARY_SHOW_INTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 197
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    const-string v3, "VpnCertificate"

    .line 198
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2;

    iget-object v4, v4, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->-$$Nest$fgetmListAdapter(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;

    move-result-object v4

    iget p1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 199
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 200
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2;

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 204
    :catch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "CertificateEditorActivity"

    const-string v2, "Could not cast menuInfo to Adapterview.AdapterContextMenuInfo"

    invoke-static {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2;

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    const v0, 0x7f110099

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method

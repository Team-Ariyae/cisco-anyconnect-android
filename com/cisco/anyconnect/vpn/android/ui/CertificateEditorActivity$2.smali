.class Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2;
.super Ljava/lang/Object;
.source "CertificateEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


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

    .line 171
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 176
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget p2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 p3, 0x2

    if-gt p3, p2, :cond_0

    const p2, 0x7f110097

    .line 180
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const p2, 0x7f11009a

    .line 181
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p1, p3, p3, p3, p2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 185
    new-instance p2, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2$1;

    invoke-direct {p2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$2;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

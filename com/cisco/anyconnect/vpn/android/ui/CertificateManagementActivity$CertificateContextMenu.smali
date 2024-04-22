.class public Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertificateContextMenu;
.super Ljava/lang/Object;
.source "CertificateManagementActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CertificateContextMenu"
.end annotation


# instance fields
.field private final mAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

.field private position:I

.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;


# direct methods
.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertificateContextMenu;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertificateContextMenu;->mAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 152
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 154
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertificateContextMenu;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->-$$Nest$mgetCurrentCertListAdapter(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    move-result-object p2

    iget p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertificateContextMenu;->position:I

    invoke-virtual {p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->getItem(I)Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;

    move-result-object p2

    .line 156
    iget-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertificateContextMenu;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

    invoke-virtual {p3}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p3

    const v0, 0x7f0e0002

    .line 157
    invoke-virtual {p3, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p3, 0x7f110097

    .line 158
    invoke-static {p3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const p3, 0x7f0a00c9

    .line 160
    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 162
    invoke-interface {p3, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const v0, 0x7f11009a

    .line 163
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    const p3, 0x7f0a00c8

    .line 166
    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    const p3, 0x7f110098

    .line 168
    invoke-static {p3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 169
    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->isReadOnly()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 171
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 173
    :cond_1
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertificateContextMenu;->mAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    iget v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertificateContextMenu;->position:I

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->getItem(I)Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;

    move-result-object v0

    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 136
    :pswitch_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertificateContextMenu;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->-$$Nest$mviewCertficateDetails(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)Z

    move-result p1

    return p1

    .line 138
    :pswitch_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertificateContextMenu;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->-$$Nest$mconfirmDeleteCertificate(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00c8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPosition(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertificateContextMenu;->position:I

    return-void
.end method

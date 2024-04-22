.class public Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CertificateManagementRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field cardView:Lcom/google/android/material/card/MaterialCardView;

.field cnView:Landroid/widget/TextView;

.field expirationView:Landroid/widget/TextView;

.field issuerView:Landroid/widget/TextView;

.field notYetValidView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

.field typeView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;Landroid/view/View;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    .line 224
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a00b5

    .line 225
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->cnView:Landroid/widget/TextView;

    const p1, 0x7f0a00b7

    .line 226
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->issuerView:Landroid/widget/TextView;

    const p1, 0x7f0a00b8

    .line 227
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->notYetValidView:Landroid/widget/TextView;

    const p1, 0x7f0a00b6

    .line 228
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->expirationView:Landroid/widget/TextView;

    const p1, 0x7f0a00b9

    .line 229
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->typeView:Landroid/widget/TextView;

    const p1, 0x7f0a00ba

    .line 230
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->cardView:Lcom/google/android/material/card/MaterialCardView;

    .line 231
    invoke-virtual {p1, p0}, Lcom/google/android/material/card/MaterialCardView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method


# virtual methods
.method public bindTo(Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)V
    .locals 8

    const-string v0, "CertMgmtList"

    .line 251
    :try_start_0
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->GetX509()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 253
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->cnView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->getSubjectShortName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 256
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->cnView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->issuerView:Landroid/widget/TextView;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 261
    new-instance v2, Lcom/cisco/anyconnect/common/X509NameParser;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/cisco/anyconnect/common/X509NameParser;-><init>(Ljava/security/Principal;)V

    .line 262
    invoke-virtual {v2}, Lcom/cisco/anyconnect/common/X509NameParser;->getShortName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 264
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->issuerView:Landroid/widget/TextView;

    const-string v5, "%s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const v7, 0x7f11018c

    invoke-static {v7}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_1
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->-$$Nest$fgetmCertValidColor(Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v4, v2, :cond_2

    .line 273
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->expirationView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    invoke-static {v2, v4}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->-$$Nest$fputmCertValidColor(Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;I)V

    .line 276
    :cond_2
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->-$$Nest$fgetmInflater(Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->-$$Nest$fgetmCertValidColor(Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;)I

    move-result v4

    invoke-static {v2, v1, v4}, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils;->getCertValidity(Landroid/content/res/Resources;Ljava/security/cert/X509Certificate;I)Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;

    move-result-object v2

    .line 279
    iget-boolean v4, v2, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;->isNotYetValid:Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, " "

    if-eqz v4, :cond_3

    const v4, 0x7f11020f

    .line 280
    :try_start_1
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 281
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->CERT_DATE_FORMAT_DETAILS:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 282
    iget-object v6, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->notYetValidView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->notYetValidView:Landroid/widget/TextView;

    iget v6, v2, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;->notBeforeColor:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->notYetValidView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 286
    :cond_3
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->notYetValidView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v3, 0x7f110131

    .line 289
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->CERT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    iget-boolean v3, v2, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;->isExpired:Z

    if-eqz v3, :cond_4

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f110132

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "!)"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    :cond_4
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->expirationView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->expirationView:Landroid/widget/TextView;

    iget v2, v2, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;->notAfterColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->typeView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 298
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    invoke-static {v2, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->-$$Nest$mgetCertificateTypeString(Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 305
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Exception occurred when inflating resources: "

    invoke-static {v1, v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 302
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Location passed to getView was out of bounds."

    invoke-static {v1, v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->mMenu:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertificateContextMenu;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertificateContextMenu;->setPosition(I)V

    .line 240
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->mMenu:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertificateContextMenu;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertificateContextMenu;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

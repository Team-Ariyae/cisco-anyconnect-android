.class public Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "CertificateSummaryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;
    }
.end annotation


# static fields
.field private static final CONTEXT_MENU_COPY_TEXT_ID:I = 0x0

.field private static final ENTITY_NAME:Ljava/lang/String; = "CertificateSummaryActivity"


# instance fields
.field private mCertificate:Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

.field private mConfirmReasons:[Ljava/lang/String;

.field private mDetailPopupListener:Landroid/view/View$OnClickListener;

.field private mTextToCopy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    .line 433
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->mDetailPopupListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private createSignatureComponent(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;
    .locals 2

    const-string v0, "failed to create signature component: "

    const-string v1, "CertificateSummaryActivity"

    .line 237
    :try_start_0
    invoke-static {p3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p3

    .line 239
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    const-string p3, ":"

    .line 240
    invoke-static {p2, p3}, Lcom/cisco/anyconnect/vpn/android/util/ByteUtils;->bytesToHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 241
    new-instance p3, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;

    invoke-direct {p3, p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    .line 249
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p2, v1, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 245
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p2, v1, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDateView(Ljava/lang/String;Ljava/util/Date;IZ)Landroid/view/View;
    .locals 3

    .line 311
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0a00aa

    .line 314
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 317
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a00ab

    .line 324
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 327
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->CERT_DATE_FORMAT_DETAILS:Ljava/text/SimpleDateFormat;

    invoke-virtual {p3, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    if-eqz p4, :cond_0

    .line 331
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f110132

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "!)"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 333
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_1
    return-object v2
.end method

.method private populateContainerInfo(ILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;",
            ">;)V"
        }
    .end annotation

    .line 402
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 405
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 408
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;

    .line 410
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0033

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f0a00aa

    .line 413
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 416
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v2, 0x7f0a00ab

    .line 419
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 422
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->mDetailPopupListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 427
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private populateExtendedKeyUsage(Ljava/security/cert/X509Certificate;)V
    .locals 4

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;

    const v2, 0x7f110058

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-static {p1}, Lcom/cisco/android/nchs/support/X509KeyUsage;->ekuIsCritical(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f110343

    goto :goto_0

    :cond_0
    const v3, 0x7f1101fc

    :goto_0
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 190
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "CertificateSummaryActivity"

    const-string v3, "failed to parse certificate: "

    invoke-static {v1, v2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_1

    .line 195
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 197
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;

    const v3, 0x7f110076

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-static {v1}, Lcom/cisco/android/nchs/support/X509KeyUsage;->ekuFromOIDtoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v3, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const p1, 0x7f0a0164

    .line 202
    invoke-direct {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->populateContainerInfo(ILjava/util/ArrayList;)V

    return-void
.end method

.method private populateHashFromPrincipal(Ljava/security/Principal;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Principal;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;",
            ">;"
        }
    .end annotation

    .line 370
    new-instance v0, Lcom/cisco/anyconnect/common/X509NameParser;

    invoke-direct {v0, p1}, Lcom/cisco/anyconnect/common/X509NameParser;-><init>(Ljava/security/Principal;)V

    .line 371
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 372
    sget-object v1, Lcom/cisco/anyconnect/common/X509NameParser;->DN_KEYS:Ljava/util/LinkedHashMap;

    .line 375
    invoke-virtual {v0}, Lcom/cisco/anyconnect/common/X509NameParser;->getPairs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/common/X509CertificateDNMapping;

    .line 377
    invoke-virtual {v2}, Lcom/cisco/anyconnect/common/X509CertificateDNMapping;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 378
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 380
    new-instance v4, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/cisco/anyconnect/common/X509CertificateDNMapping;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, p0, v3, v2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private populateIssuerList(Ljava/security/cert/X509Certificate;)V
    .locals 1

    .line 348
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->populateHashFromPrincipal(Ljava/security/Principal;)Ljava/util/ArrayList;

    move-result-object p1

    const v0, 0x7f0a01ad

    .line 349
    invoke-direct {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->populateContainerInfo(ILjava/util/ArrayList;)V

    return-void
.end method

.method private populateKeyUsage(Ljava/security/cert/X509Certificate;)V
    .locals 5

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;

    const v2, 0x7f110058

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-static {p1}, Lcom/cisco/android/nchs/support/X509KeyUsage;->kuIsCritical(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f110343

    goto :goto_0

    :cond_0
    const v3, 0x7f1101fc

    :goto_0
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object p1

    if-eqz p1, :cond_2

    .line 218
    array-length v1, p1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 220
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 222
    aget-boolean v2, p1, v1

    if-eqz v2, :cond_1

    .line 224
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;

    const v3, 0x7f11008e

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/cisco/android/nchs/support/X509KeyUsage;->kuFromIndextoString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const p1, 0x7f0a01b4

    .line 230
    invoke-direct {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->populateContainerInfo(ILjava/util/ArrayList;)V

    return-void
.end method

.method private populateSignature(Ljava/security/cert/X509Certificate;)V
    .locals 4

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;

    const v2, 0x7f110078

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f110079

    .line 262
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MD5"

    invoke-direct {p0, v1, p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->createSignatureComponent(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const v1, 0x7f11007a

    .line 268
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHA1"

    invoke-direct {p0, v1, p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->createSignatureComponent(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 271
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const p1, 0x7f0a0283

    .line 274
    invoke-direct {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->populateContainerInfo(ILjava/util/ArrayList;)V

    return-void
.end method

.method private populateSubjectNameList(Ljava/security/cert/X509Certificate;)V
    .locals 4

    .line 355
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->populateHashFromPrincipal(Ljava/security/Principal;)Ljava/util/ArrayList;

    move-result-object v0

    .line 358
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    const-string v2, ":"

    .line 359
    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/ByteUtils;->bytesToHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;

    const v3, 0x7f110077

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;

    const v2, 0x7f110092

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0a02aa

    .line 365
    invoke-direct {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->populateContainerInfo(ILjava/util/ArrayList;)V

    return-void
.end method

.method private populateValidityList(Ljava/security/cert/X509Certificate;)V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010098

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, 0x7f120112

    .line 281
    invoke-virtual {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060052

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-static {v1, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils;->getCertValidity(Landroid/content/res/Resources;Ljava/security/cert/X509Certificate;I)Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;

    move-result-object v0

    const v1, 0x7f0a02fc

    .line 285
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 288
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const v2, 0x7f110091

    .line 289
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v3

    iget v4, v0, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;->notBeforeColor:I

    iget-boolean v5, v0, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;->isExpired:Z

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->getDateView(Ljava/lang/String;Ljava/util/Date;IZ)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 293
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->mDetailPopupListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    invoke-virtual {p0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 295
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    const v2, 0x7f110090

    .line 298
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object p1

    iget v3, v0, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;->notAfterColor:I

    iget-boolean v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;->isExpired:Z

    invoke-direct {p0, v2, p1, v3, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->getDateView(Ljava/lang/String;Ljava/util/Date;IZ)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 302
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->mDetailPopupListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 304
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private populateViews()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->mCertificate:Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->GetX509()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 165
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->populateSubjectNameList(Ljava/security/cert/X509Certificate;)V

    .line 166
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->populateIssuerList(Ljava/security/cert/X509Certificate;)V

    .line 167
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->populateValidityList(Ljava/security/cert/X509Certificate;)V

    .line 168
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->populateSignature(Ljava/security/cert/X509Certificate;)V

    .line 169
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->populateKeyUsage(Ljava/security/cert/X509Certificate;)V

    .line 170
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->populateExtendedKeyUsage(Ljava/security/cert/X509Certificate;)V

    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 506
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p1, "clipboard"

    .line 508
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/ClipboardManager;

    .line 509
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->mTextToCopy:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    return v0

    .line 513
    :cond_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "CertificateSummaryActivity"

    const-string/jumbo v2, "unknown context menu ID"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "CertificateSummaryActivity"

    const-string v1, "onCreate()"

    .line 104
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->setResult(I)V

    const v2, 0x7f110081

    if-eqz v0, :cond_2

    const-string v3, "VpnCertificate"

    .line 115
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->mCertificate:Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    if-nez v0, :cond_0

    .line 118
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_0
    const v0, 0x7f0d0032

    .line 128
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->setContentView(I)V

    .line 129
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->populateViews()V

    const-string v0, "CONFIRM_REASONS"

    .line 131
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->mConfirmReasons:[Ljava/lang/String;

    const p1, 0x7f0a00bd

    .line 132
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 133
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->mConfirmReasons:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertConfirmReasons;->initializeConfirmationReasons(Landroid/app/Activity;Landroid/view/ViewGroup;[Ljava/lang/String;)V

    const p1, 0x7f0a0093

    .line 136
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 138
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "allow_import"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 157
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    .line 124
    :cond_2
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 485
    invoke-super {p0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    const p3, 0x7f11029f

    .line 487
    invoke-static {p3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const p3, 0x7f1100e8

    .line 488
    invoke-static {p3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, p3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const p1, 0x7f0a00aa

    .line 490
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p3, 0x7f0a00ab

    .line 491
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->mTextToCopy:Ljava/lang/String;

    return-void

    :cond_1
    :goto_0
    const p1, 0x7f11012d

    .line 494
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "CertificateSummaryActivity"

    const-string v1, "onDestroy()"

    .line 478
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "CertificateSummaryActivity"

    const-string v1, "onPause()"

    .line 471
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    const-string v0, "CertificateSummaryActivity"

    const-string v1, "onRestart()"

    .line 457
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "CertificateSummaryActivity"

    const-string v1, "onResume()"

    .line 464
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "CertificateSummaryActivity"

    const-string v1, "onStop()"

    .line 450
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onStop()V

    return-void
.end method

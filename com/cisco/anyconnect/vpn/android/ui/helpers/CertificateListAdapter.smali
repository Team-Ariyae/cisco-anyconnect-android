.class public Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CertificateListAdapter.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "CertificateListAdapter"

.field public static final INDEX_CERTIFICATE_AUTOMATIC:I = 0x1

.field public static final INDEX_CERTIFICATE_CERTS_START:I = 0x2

.field public static final INDEX_CERTIFICATE_DISABLED:I


# instance fields
.field private mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

.field private final mCertSelectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCertValidColor:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRes:Landroid/content/res/Resources;

.field private mSelectedCert:Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertSelectionList:Ljava/util/List;

    const/4 v1, -0x1

    .line 61
    iput v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertValidColor:I

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mRes:Landroid/content/res/Resources;

    const-string v1, "layout_inflater"

    .line 76
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->addCertModeOptions()V

    .line 78
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Automatic:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    return-void
.end method

.method private addCertModeOptions()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertSelectionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertSelectionList:Ljava/util/List;

    const v1, 0x7f110054

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertSelectionList:Ljava/util/List;

    const v1, 0x7f110053

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getCertView(I)Landroid/view/View;
    .locals 13

    const-string v0, "CertificateListAdapter"

    const/4 v1, 0x0

    .line 213
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertSelectionList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    .line 214
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->GetX509()Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 216
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d0035

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    const v4, 0x7f0a00ac

    .line 222
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 225
    new-instance v5, Lcom/cisco/anyconnect/common/X509NameParser;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/cisco/anyconnect/common/X509NameParser;-><init>(Ljava/security/Principal;)V

    .line 226
    invoke-virtual {v5}, Lcom/cisco/anyconnect/common/X509NameParser;->getShortName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 229
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v4, 0x7f0a00ae

    .line 233
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, " "

    if-eqz v4, :cond_2

    .line 236
    :try_start_1
    new-instance v6, Lcom/cisco/anyconnect/common/X509NameParser;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/cisco/anyconnect/common/X509NameParser;-><init>(Ljava/security/Principal;)V

    .line 237
    invoke-virtual {v6}, Lcom/cisco/anyconnect/common/X509NameParser;->getShortName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f11018c

    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v4, 0x7f0a00ad

    .line 244
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0a00af

    .line 245
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 250
    iget v7, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertValidColor:I

    const/4 v8, -0x1

    if-ne v8, v7, :cond_3

    .line 252
    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v7

    iput v7, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertValidColor:I

    .line 255
    :cond_3
    iget-object v7, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mRes:Landroid/content/res/Resources;

    iget v8, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertValidColor:I

    invoke-static {v7, v2, v8}, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils;->getCertValidity(Landroid/content/res/Resources;Ljava/security/cert/X509Certificate;I)Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;

    move-result-object v7

    .line 258
    iget-boolean v8, v7, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;->isNotYetValid:Z

    const/4 v9, 0x0

    const/16 v10, 0x8

    if-eqz v8, :cond_4

    const v8, 0x7f11020f

    .line 260
    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 261
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->CERT_DATE_FORMAT_DETAILS:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 262
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget v8, v7, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;->notBeforeColor:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 268
    :cond_4
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v6, 0x7f110131

    .line 271
    invoke-static {v6}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 272
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->CERT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    iget-boolean v6, v7, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;->isExpired:Z

    if-eqz v6, :cond_5

    .line 275
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f110132

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 277
    :cond_5
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget v2, v7, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;->notAfterColor:I

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0a00b0

    .line 280
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-nez v2, :cond_6

    return-object v3

    .line 287
    :cond_6
    sget-object v4, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mSelectedCert:Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    if-eqz v4, :cond_7

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 289
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f0800a2

    .line 290
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 294
    :cond_7
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object v3

    :catch_0
    move-exception p1

    .line 306
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Exception occured when inflating resources: "

    invoke-static {v2, v0, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :catch_1
    move-exception p1

    .line 301
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Location passed to getView was out of bounds."

    invoke-static {v2, v0, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private getTextView(I)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d002b

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const v2, 0x7f0a02e8

    .line 326
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_1

    return-object v0

    .line 332
    :cond_1
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertSelectionList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 335
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-nez p1, :cond_3

    .line 339
    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Disabled:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    if-eq v3, v4, :cond_4

    :cond_3
    const/4 v3, 0x1

    if-ne v3, p1, :cond_5

    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Automatic:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    if-ne p1, v3, :cond_5

    :cond_4
    const p1, 0x7f0800a2

    const/4 v3, 0x0

    .line 342
    invoke-virtual {v2, v3, v3, p1, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v1

    :catch_0
    move-exception p1

    .line 349
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "CertificateListAdapter"

    const-string v3, "Exception occured when inflating resources: "

    invoke-static {v1, v2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertSelectionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertSelectionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedCert()Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mSelectedCert:Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const-string p2, "CertificateListAdapter"

    const/4 p3, 0x0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertSelectionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->getCertView(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 185
    :cond_0
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->getTextView(I)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 197
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Exception occured when inflating resources: "

    invoke-static {v0, p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p3

    :catch_1
    move-exception p1

    .line 192
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Location passed to getView was out of bounds."

    invoke-static {v0, p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p3
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mSelectedCert:Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertSelectionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mSelectedCert:Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    .line 113
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCertAuthMethod(Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    return-void
.end method

.method public setSelectedCert([B)Z
    .locals 3

    .line 138
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    if-ne v0, v1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertSelectionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 142
    instance-of v2, v1, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    if-eqz v2, :cond_0

    .line 145
    check-cast v1, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->GetHash()[B

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mSelectedCert:Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 154
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mSelectedCert:Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    const/4 p1, 0x0

    return p1
.end method

.method public updateItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;",
            ">;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertSelectionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->addCertModeOptions()V

    .line 99
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->mCertSelectionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 100
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->notifyDataSetChanged()V

    return-void
.end method

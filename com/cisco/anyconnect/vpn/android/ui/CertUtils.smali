.class public Lcom/cisco/anyconnect/vpn/android/ui/CertUtils;
.super Ljava/lang/Object;
.source "CertUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;
    }
.end annotation


# static fields
.field public static INVALID_COLOR:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCertValidity(Landroid/content/res/Resources;Ljava/security/cert/X509Certificate;I)Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;
    .locals 9

    const/4 v0, 0x1

    const v1, 0x7f060035

    const/4 v2, 0x0

    .line 59
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, p2

    :goto_0
    const/4 v4, 0x0

    goto :goto_1

    .line 70
    :catch_0
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/4 v2, 0x1

    goto :goto_0

    .line 64
    :catch_1
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/4 v4, 0x1

    move v8, v3

    move v3, p2

    move p2, v8

    .line 77
    :goto_1
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    const/4 v7, 0x7

    .line 79
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 80
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 93
    :catch_2
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_3

    :catch_3
    nop

    .line 84
    sget p1, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils;->INVALID_COLOR:I

    if-ne p1, p2, :cond_0

    const p1, 0x7f060036

    .line 87
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    :cond_0
    :goto_2
    move v0, v2

    .line 97
    :goto_3
    new-instance p0, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;

    invoke-direct {p0, v0, v4, v3, p2}, Lcom/cisco/anyconnect/vpn/android/ui/CertUtils$CertValidity;-><init>(ZZII)V

    return-object p0
.end method

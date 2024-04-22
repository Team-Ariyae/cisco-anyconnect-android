.class Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;
.super Ljava/lang/Object;
.source "CertificateSummaryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CertificateComponentView"
.end annotation


# instance fields
.field private mLabel:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;


# direct methods
.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;->mLabel:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$CertificateComponentView;->mValue:Ljava/lang/String;

    return-object v0
.end method

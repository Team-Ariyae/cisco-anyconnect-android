.class Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$2;
.super Ljava/lang/Object;
.source "CertificateSummaryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a00aa

    .line 437
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a00ab

    .line 438
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

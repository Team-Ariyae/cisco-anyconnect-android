.class Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$1;
.super Ljava/util/ArrayList;
.source "CertificateManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 87
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;

    const/4 v1, 0x0

    const v2, 0x7f11004c

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$1;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;

    const/4 v1, 0x1

    const v2, 0x7f11006b

    invoke-direct {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$1;->add(Ljava/lang/Object;)Z

    return-void
.end method

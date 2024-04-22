.class Lcom/cisco/anyconnect/ui/PrimaryActivity$1;
.super Ljava/util/ArrayList;
.source "PrimaryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/ui/PrimaryActivity;
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

    .line 76
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;

    const v1, 0x7f11011e

    const v2, 0x7f080091

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/ui/PrimaryActivity$1;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;

    const v1, 0x7f1102a6

    const v2, 0x7f0800fe

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/ui/PrimaryActivity$1;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;

    const v1, 0x7f11001b

    const v2, 0x7f080057

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/ui/PrimaryActivity$1;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;

    const v1, 0x7f110130

    const v2, 0x7f080093

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/ui/PrimaryActivity$1;->add(Ljava/lang/Object;)Z

    return-void
.end method

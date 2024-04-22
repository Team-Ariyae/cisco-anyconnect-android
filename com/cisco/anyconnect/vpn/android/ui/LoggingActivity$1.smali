.class Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$1;
.super Ljava/util/ArrayList;
.source "LoggingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;
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

    .line 144
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;

    const/4 v1, 0x0

    const v2, 0x7f1101a3

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$1;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;

    const/4 v1, 0x1

    const v2, 0x7f1101a4

    invoke-direct {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$1;->add(Ljava/lang/Object;)Z

    return-void
.end method

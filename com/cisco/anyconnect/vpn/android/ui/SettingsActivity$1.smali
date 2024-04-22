.class Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$1;
.super Ljava/util/ArrayList;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;
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

    .line 81
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;

    const v1, 0x7f110023

    const v2, 0x7f080091

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$1;->add(Ljava/lang/Object;)Z

    return-void
.end method

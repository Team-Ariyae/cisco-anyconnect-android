.class Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity$EntryPopupListener;
.super Ljava/lang/Object;
.source "AppRulesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryPopupListener"
.end annotation


# instance fields
.field private final mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;


# direct methods
.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity$EntryPopupListener;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity$EntryPopupListener;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a026e

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    const-string p1, "can\'t find route info text"

    .line 138
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity$EntryPopupListener;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity$EntryPopupListener;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

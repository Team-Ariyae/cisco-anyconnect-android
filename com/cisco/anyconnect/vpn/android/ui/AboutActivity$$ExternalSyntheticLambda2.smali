.class public final synthetic Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/browser/customtabs/CustomTabsIntent;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroidx/browser/customtabs/CustomTabsIntent;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity$$ExternalSyntheticLambda2;->f$0:Landroidx/browser/customtabs/CustomTabsIntent;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity$$ExternalSyntheticLambda2;->f$0:Landroidx/browser/customtabs/CustomTabsIntent;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/ui/AboutActivity;->lambda$onCreate$2(Landroidx/browser/customtabs/CustomTabsIntent;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

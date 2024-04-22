.class Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity$2;
.super Ljava/lang/Object;
.source "BaseUriImportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;->setUpButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;->setResult(I)V

    .line 100
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/BaseUriImportActivity;->finish()V

    return-void
.end method

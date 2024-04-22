.class Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$4;
.super Ljava/lang/Object;
.source "YubikeyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->performCertOperations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 388
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->onCancel()V

    return-void
.end method

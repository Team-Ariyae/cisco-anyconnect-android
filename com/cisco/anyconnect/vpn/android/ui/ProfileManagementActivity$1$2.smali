.class Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1$2;
.super Ljava/lang/Object;
.source "ProfileManagementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1$2;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 153
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

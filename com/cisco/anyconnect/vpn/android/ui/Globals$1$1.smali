.class Lcom/cisco/anyconnect/vpn/android/ui/Globals$1$1;
.super Ljava/lang/Object;
.source "Globals.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 355
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->-$$Nest$sfgetmTerminalErrorDialogs()Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;

    iget-object p2, p2, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/android/ui/Globals$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

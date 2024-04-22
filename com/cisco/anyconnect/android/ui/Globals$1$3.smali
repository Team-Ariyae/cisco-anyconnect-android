.class Lcom/cisco/anyconnect/android/ui/Globals$1$3;
.super Ljava/lang/Object;
.source "Globals.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/android/ui/Globals$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/android/ui/Globals$1;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/android/ui/Globals$1;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/cisco/anyconnect/android/ui/Globals$1$3;->this$0:Lcom/cisco/anyconnect/android/ui/Globals$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 150
    invoke-static {}, Lcom/cisco/anyconnect/android/ui/Globals;->access$000()Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/cisco/anyconnect/android/ui/Globals$1$3;->this$0:Lcom/cisco/anyconnect/android/ui/Globals$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/android/ui/Globals$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object p1, p0, Lcom/cisco/anyconnect/android/ui/Globals$1$3;->this$0:Lcom/cisco/anyconnect/android/ui/Globals$1;

    iget-object p1, p1, Lcom/cisco/anyconnect/android/ui/Globals$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

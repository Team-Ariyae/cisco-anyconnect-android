.class Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB$1;
.super Ljava/lang/Object;
.source "ServiceConnectionCB.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->OnBindTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->-$$Nest$fgetmParent(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

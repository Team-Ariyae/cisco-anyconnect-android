.class Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager$1;
.super Ljava/lang/Object;
.source "ForegroundServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stopForeground "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->-$$Nest$fgetmTag(Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->-$$Nest$fgetmService(Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;)Landroid/app/Service;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method

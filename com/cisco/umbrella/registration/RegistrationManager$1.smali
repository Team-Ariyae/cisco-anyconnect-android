.class Lcom/cisco/umbrella/registration/RegistrationManager$1;
.super Ljava/lang/Object;
.source "RegistrationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/registration/RegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/registration/RegistrationManager;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/registration/RegistrationManager;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationManager$1;->this$0:Lcom/cisco/umbrella/registration/RegistrationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationManager$1;->this$0:Lcom/cisco/umbrella/registration/RegistrationManager;

    invoke-static {v0}, Lcom/cisco/umbrella/registration/RegistrationManager;->access$000(Lcom/cisco/umbrella/registration/RegistrationManager;)V

    return-void
.end method

.class Lcom/cisco/anyconnect/nvm/services/NVMService$StartAgentTask;
.super Landroid/os/AsyncTask;
.source "NVMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/nvm/services/NVMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartAgentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;


# direct methods
.method private constructor <init>(Lcom/cisco/anyconnect/nvm/services/NVMService;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$StartAgentTask;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cisco/anyconnect/nvm/services/NVMService;Lcom/cisco/anyconnect/nvm/services/NVMService$1;)V
    .locals 0

    .line 233
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/nvm/services/NVMService$StartAgentTask;-><init>(Lcom/cisco/anyconnect/nvm/services/NVMService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 233
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/nvm/services/NVMService$StartAgentTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 236
    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$StartAgentTask;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-static {p1}, Lcom/cisco/anyconnect/nvm/services/NVMService;->access$200(Lcom/cisco/anyconnect/nvm/services/NVMService;)Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$StartAgentTask;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-static {p1}, Lcom/cisco/anyconnect/nvm/services/NVMService;->access$200(Lcom/cisco/anyconnect/nvm/services/NVMService;)Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->startNVMAgent()Z

    move-result p1

    if-nez p1, :cond_0

    .line 237
    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$StartAgentTask;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-static {p1}, Lcom/cisco/anyconnect/nvm/services/NVMService;->access$200(Lcom/cisco/anyconnect/nvm/services/NVMService;)Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->isAgentRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService$StartAgentTask;->this$0:Lcom/cisco/anyconnect/nvm/services/NVMService;

    invoke-static {p1}, Lcom/cisco/anyconnect/nvm/services/NVMService;->access$200(Lcom/cisco/anyconnect/nvm/services/NVMService;)Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->stopNVMAgent()Z

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

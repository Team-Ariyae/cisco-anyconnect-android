.class Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$LooperThread;
.super Ljava/lang/Thread;
.source "KnoxInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LooperThread"
.end annotation


# instance fields
.field public handler:Landroid/os/Handler;

.field private mCb:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$ILooperThreadCB;


# direct methods
.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$ILooperThreadCB;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 287
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$LooperThread;->mCb:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$ILooperThreadCB;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 294
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 295
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$LooperThread;->handler:Landroid/os/Handler;

    .line 296
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$LooperThread;->mCb:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$ILooperThreadCB;

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$ILooperThreadCB;->OnReady()V

    .line 297
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

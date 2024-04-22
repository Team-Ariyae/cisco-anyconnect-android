.class public interface abstract Lcom/cisco/android/nchs/ipc/IIPCServer;
.super Ljava/lang/Object;
.source "IIPCServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;
    }
.end annotation


# virtual methods
.method public abstract interrupt()V
.end method

.method public abstract join(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract run()V
.end method

.method public abstract shutdownServer()V
.end method

.method public abstract signalRequestedOperationCompleted(Z)V
.end method

.method public abstract start()V
.end method

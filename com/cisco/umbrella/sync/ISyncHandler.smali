.class public interface abstract Lcom/cisco/umbrella/sync/ISyncHandler;
.super Ljava/lang/Object;
.source "ISyncHandler.java"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract get()Lcom/cisco/umbrella/sync/SyncResponseData;
.end method

.method public abstract subscribe(Lcom/cisco/umbrella/sync/SyncHandler$SyncCallback;)V
.end method

.method public abstract sync(Z)V
.end method

.method public abstract unsubscribe(Lcom/cisco/umbrella/sync/SyncHandler$SyncCallback;)V
.end method

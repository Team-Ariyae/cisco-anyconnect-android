.class public interface abstract Lcom/cisco/umbrella/sync/SyncHandler$SyncCallback;
.super Ljava/lang/Object;
.source "SyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/sync/SyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SyncCallback"
.end annotation


# virtual methods
.method public abstract syncFailed()V
.end method

.method public abstract syncSuccess(Lcom/cisco/umbrella/sync/SyncResponseData;)V
.end method

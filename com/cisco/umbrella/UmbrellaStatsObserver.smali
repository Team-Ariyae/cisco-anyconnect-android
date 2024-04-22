.class public Lcom/cisco/umbrella/UmbrellaStatsObserver;
.super Landroid/database/ContentObserver;
.source "UmbrellaStatsObserver.java"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 16
    iput-object p1, p0, Lcom/cisco/umbrella/UmbrellaStatsObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/cisco/umbrella/UmbrellaStatsObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 28
    iget-object p1, p0, Lcom/cisco/umbrella/UmbrellaStatsObserver;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

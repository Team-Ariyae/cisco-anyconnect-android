.class public Lcom/cisco/anyconnect/dynamic/data/Global;
.super Lcom/cisco/anyconnect/dynamic/data/GlobalHelper;
.source "Global.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/cisco/anyconnect/dynamic/data/GlobalHelper;-><init>()V

    .line 10
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/dynamic/data/Global;->setMainApplication(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getMainApplication()Landroid/content/Context;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/cisco/anyconnect/dynamic/data/Global;->mainApplication:Landroid/content/Context;

    return-object v0
.end method

.method public setMainApplication(Landroid/content/Context;)V
    .registers 2
    .param p1, "mainApplication"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    iput-object p1, p0, Lcom/cisco/anyconnect/dynamic/data/Global;->mainApplication:Landroid/content/Context;

    .line 19
    return-void
.end method

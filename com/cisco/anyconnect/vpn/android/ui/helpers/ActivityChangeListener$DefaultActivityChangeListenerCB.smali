.class public Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$DefaultActivityChangeListenerCB;
.super Ljava/lang/Object;
.source "ActivityChangeListener.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$IActivityChangeListenerCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultActivityChangeListenerCB"
.end annotation


# instance fields
.field private hasRequestedParentRedraw:Z

.field private final mParent:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 51
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$DefaultActivityChangeListenerCB;->mParent:Landroid/app/Activity;

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$DefaultActivityChangeListenerCB;->hasRequestedParentRedraw:Z

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected null parent Activity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private redrawParentActivity()V
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$DefaultActivityChangeListenerCB;->hasRequestedParentRedraw:Z

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$DefaultActivityChangeListenerCB;->restartParentActivity()V

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$DefaultActivityChangeListenerCB;->hasRequestedParentRedraw:Z

    return-void
.end method

.method private restartParentActivity()V
    .locals 3

    .line 77
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$DefaultActivityChangeListenerCB;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$DefaultActivityChangeListenerCB;->mParent:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/high16 v1, 0x10000000

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$DefaultActivityChangeListenerCB;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 82
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$DefaultActivityChangeListenerCB;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 83
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$DefaultActivityChangeListenerCB;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public OnTranslationTableChanged()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$DefaultActivityChangeListenerCB;->redrawParentActivity()V

    return-void
.end method

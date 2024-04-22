.class public Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;
.super Ljava/lang/Object;
.source "ActivityChangeListener.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$IListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$DefaultActivityChangeListenerCB;,
        Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$IActivityChangeListenerCB;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$IActivityChangeListenerCB;

.field private mHasTranslationTableChanged:Z

.field private mTranslationChangeLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;->mTranslationChangeLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$DefaultActivityChangeListenerCB;

    invoke-direct {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$DefaultActivityChangeListenerCB;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;->init(Landroid/app/Activity;Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$IActivityChangeListenerCB;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$IActivityChangeListenerCB;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;->mTranslationChangeLock:Ljava/lang/Object;

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;->init(Landroid/app/Activity;Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$IActivityChangeListenerCB;)V

    return-void
.end method

.method private hasTranslationTableChanged()Z
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;->mTranslationChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;->mHasTranslationTableChanged:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 145
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private init(Landroid/app/Activity;Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$IActivityChangeListenerCB;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 117
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;->mCallback:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$IActivityChangeListenerCB;

    .line 120
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->RegisterListener(Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$IListener;)V

    return-void

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "unexpected null inputs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public ApplyChanges()V
    .locals 1

    .line 128
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;->hasTranslationTableChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;->mHasTranslationTableChanged:Z

    .line 131
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;->mCallback:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$IActivityChangeListenerCB;

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener$IActivityChangeListenerCB;->OnTranslationTableChanged()V

    :cond_0
    return-void
.end method

.method public Destroy()V
    .locals 0

    .line 137
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->UnregisterListener(Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$IListener;)V

    return-void
.end method

.method public OnTranslationTableChanged()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;->mTranslationChangeLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 152
    :try_start_0
    iput-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;->mHasTranslationTableChanged:Z

    .line 153
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

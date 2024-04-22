.class public final enum Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;
.super Ljava/lang/Enum;
.source "ACTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;,
        Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$IListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;

.field public static final enum INSTANCE:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$IListener;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->INSTANCE:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;

    aput-object v0, v1, v2

    .line 22
    sput-object v1, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->mListeners:Ljava/util/List;

    .line 70
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->loadLibraries()V

    .line 72
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;->Uninitialized:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->mState:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    return-void
.end method

.method public static OnTranslationTableChanged()V
    .locals 3

    .line 107
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->INSTANCE:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;

    iget-object v1, v0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$IListener;

    .line 111
    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$IListener;->OnTranslationTableChanged()V

    goto :goto_0

    .line 113
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private static loadLibraries()V
    .locals 1

    const-string v0, "c++_shared"

    .line 57
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "acciscocrypto"

    .line 58
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "acciscossl"

    .line 59
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "vpncommon"

    .line 60
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "vpncommoncrypt"

    .line 61
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "vpnapi"

    .line 62
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "vpnagentutilities"

    .line 64
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "aclocalejni"

    .line 65
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private native nativeInit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native nativeInvalidate()V
.end method

.method private native nativeTranslate(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;
    .locals 1

    .line 22
    const-class v0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;
    .locals 1

    .line 22
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;

    return-object v0
.end method


# virtual methods
.method public Free()V
    .locals 2

    .line 187
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;->Uninitialized:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->mState:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    .line 189
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 192
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :try_start_1
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->nativeInvalidate()V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    .line 192
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public Initialize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "ACTranslator cannot be bootstrap. Current state: "

    .line 126
    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;->Initialized:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->mState:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    if-ne v1, v2, :cond_0

    return-void

    .line 131
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;->Uninitialized:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    if-ne v2, v1, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->nativeInit()V

    .line 137
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;->Initialized:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->mState:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    return-void

    .line 133
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->mState:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->Free()V

    .line 142
    throw v0
.end method

.method public RegisterListener(Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$IListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unexpected null listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->mState:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;->Initialized:Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$State;

    if-eq v0, v1, :cond_1

    return-object p1

    .line 166
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    return-object p1

    .line 173
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->nativeTranslate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 177
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public UnregisterListener(Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator$IListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/jni/localization/ACTranslator;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 102
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unexpected null listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

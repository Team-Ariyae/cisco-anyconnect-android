.class public Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;
.super Ljava/lang/Object;
.source "ContainerIDMap.java"


# static fields
.field private static mContainerIDMap:Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;


# instance fields
.field private mContainerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;->mContainerMap:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;->mContainerMap:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;
    .locals 2

    const-class v0, Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;->mContainerIDMap:Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;

    invoke-direct {v1}, Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;-><init>()V

    sput-object v1, Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;->mContainerIDMap:Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;

    .line 31
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;->mContainerIDMap:Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addContainerName(ILjava/lang/String;)V
    .locals 1

    .line 41
    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;->mContainerMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getContainerName(I)Ljava/lang/String;
    .locals 1

    const v0, 0x186a0

    .line 70
    div-int/2addr p1, v0

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;->mContainerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 73
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeContainerName(I)V
    .locals 1

    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/utils/ContainerIDMap;->mContainerMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

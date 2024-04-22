.class public Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;
.super Ljava/util/LinkedList;
.source "ConstrainedLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private mMaxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 39
    iput p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;->mMaxSize:I

    return-void
.end method

.method private reSize()V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;->mMaxSize:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;->removeFirst()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 45
    invoke-super {p0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 46
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;->reSize()V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 52
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 53
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;->reSize()V

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 63
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;->mMaxSize:I

    if-le v0, v1, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;->clear()V

    .line 66
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;->mMaxSize:I

    sub-int/2addr v0, v1

    .line 67
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    .line 69
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ge v1, v0, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    invoke-super {p0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 87
    :cond_2
    invoke-super {p0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    .line 88
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;->reSize()V

    return p1
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 98
    invoke-super {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 99
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;->reSize()V

    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 105
    invoke-super {p0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 106
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;->reSize()V

    return-void
.end method

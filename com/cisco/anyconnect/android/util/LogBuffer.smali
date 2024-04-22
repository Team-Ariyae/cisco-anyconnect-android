.class Lcom/cisco/anyconnect/android/util/LogBuffer;
.super Ljava/lang/Object;
.source "ACLogsProvider.java"


# static fields
.field private static final mACLogEntryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/cisco/anyconnect/android/util/ACLogEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLogsList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/cisco/anyconnect/android/util/ACLogEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/cisco/anyconnect/android/util/LogBuffer$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/android/util/LogBuffer$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/android/util/LogBuffer;->mACLogEntryComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/cisco/anyconnect/android/util/LogBuffer;->mMaxSize:I

    .line 53
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/android/util/LogBuffer;->mLogsList:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public add(Lcom/cisco/anyconnect/android/util/ACLogEntry;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/cisco/anyconnect/android/util/LogBuffer;->mLogsList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 63
    iget-object p1, p0, Lcom/cisco/anyconnect/android/util/LogBuffer;->mLogsList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget v0, p0, Lcom/cisco/anyconnect/android/util/LogBuffer;->mMaxSize:I

    if-ne p1, v0, :cond_0

    .line 65
    iget-object p1, p0, Lcom/cisco/anyconnect/android/util/LogBuffer;->mLogsList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/cisco/anyconnect/android/util/LogBuffer;->mLogsList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public getAll()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/cisco/anyconnect/android/util/LogBuffer;->mLogsList:Ljava/util/LinkedList;

    sget-object v1, Lcom/cisco/anyconnect/android/util/LogBuffer;->mACLogEntryComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/cisco/anyconnect/android/util/LogBuffer;->mLogsList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v1, 0x0

    .line 79
    :goto_0
    iget-object v2, p0, Lcom/cisco/anyconnect/android/util/LogBuffer;->mLogsList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/cisco/anyconnect/android/util/LogBuffer;->mLogsList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/android/util/ACLogEntry;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/android/util/ACLogEntry;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

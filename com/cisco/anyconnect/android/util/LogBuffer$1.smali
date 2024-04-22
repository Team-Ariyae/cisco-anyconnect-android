.class Lcom/cisco/anyconnect/android/util/LogBuffer$1;
.super Ljava/lang/Object;
.source "ACLogsProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/android/util/LogBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/cisco/anyconnect/android/util/ACLogEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cisco/anyconnect/android/util/ACLogEntry;Lcom/cisco/anyconnect/android/util/ACLogEntry;)I
    .locals 2

    .line 46
    iget-wide v0, p1, Lcom/cisco/anyconnect/android/util/ACLogEntry;->timeMs:J

    iget-wide p1, p2, Lcom/cisco/anyconnect/android/util/ACLogEntry;->timeMs:J

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 43
    check-cast p1, Lcom/cisco/anyconnect/android/util/ACLogEntry;

    check-cast p2, Lcom/cisco/anyconnect/android/util/ACLogEntry;

    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/android/util/LogBuffer$1;->compare(Lcom/cisco/anyconnect/android/util/ACLogEntry;Lcom/cisco/anyconnect/android/util/ACLogEntry;)I

    move-result p1

    return p1
.end method

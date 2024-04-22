.class public Lcom/cisco/umbrella/registration/FibonacciBackOff;
.super Ljava/lang/Object;
.source "FibonacciBackOff.java"

# interfaces
.implements Lcom/google/api/client/util/BackOff;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_FIB1:I = 0x5

.field private static final DEFAULT_FIB2:I = 0x8

.field private static final DEFAULT_MAX_FIB:I = 0x37

.field private static final TAG:Ljava/lang/String; = "FibonacciBackOff"


# instance fields
.field private builder:Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;

.field private fib1:J

.field private fib2:J

.field private maxFib:J

.field private nextBackOffMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;

    invoke-direct {v0}, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/cisco/umbrella/registration/FibonacciBackOff;-><init>(Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;)V

    return-void
.end method

.method private constructor <init>(Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff;->builder:Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;

    .line 33
    invoke-virtual {p0}, Lcom/cisco/umbrella/registration/FibonacciBackOff;->reset()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;Lcom/cisco/umbrella/registration/FibonacciBackOff$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/cisco/umbrella/registration/FibonacciBackOff;-><init>(Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;)V

    return-void
.end method


# virtual methods
.method public nextBackOffMillis()J
    .locals 5

    .line 46
    iget-wide v0, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff;->fib1:J

    iget-wide v2, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff;->maxFib:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 47
    iget-wide v0, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff;->nextBackOffMillis:J

    return-wide v0

    .line 49
    :cond_0
    iget-wide v2, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff;->fib2:J

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/umbrella/util/Helper;->getRandomNumberBetween(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff;->nextBackOffMillis:J

    .line 50
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/FibonacciBackOff;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fibonacci BackOff Time is ::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff;->nextBackOffMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-wide v0, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff;->fib1:J

    iget-wide v2, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff;->maxFib:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 53
    iget-wide v2, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff;->fib2:J

    add-long/2addr v0, v2

    .line 54
    iput-wide v0, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff;->fib2:J

    .line 55
    iput-wide v2, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff;->fib1:J

    .line 58
    :cond_1
    iget-wide v0, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff;->nextBackOffMillis:J

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff;->builder:Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;

    iget-wide v0, v0, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;->fib1:J

    iput-wide v0, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff;->fib1:J

    .line 39
    iget-object v0, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff;->builder:Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;

    iget-wide v0, v0, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;->fib2:J

    iput-wide v0, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff;->fib2:J

    .line 40
    iget-object v0, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff;->builder:Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;

    iget-wide v0, v0, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;->maxFib:J

    iput-wide v0, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff;->maxFib:J

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff;->nextBackOffMillis:J

    return-void
.end method

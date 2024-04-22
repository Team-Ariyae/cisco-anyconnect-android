.class public Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;
.super Ljava/lang/Object;
.source "FibonacciBackOff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/registration/FibonacciBackOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field fib1:J

.field fib2:J

.field maxFib:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x5

    .line 62
    iput-wide v0, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;->fib1:J

    const-wide/16 v0, 0x8

    .line 63
    iput-wide v0, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;->fib2:J

    const-wide/16 v0, 0x37

    .line 64
    iput-wide v0, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;->maxFib:J

    return-void
.end method


# virtual methods
.method public build()Lcom/cisco/umbrella/registration/FibonacciBackOff;
    .locals 2

    .line 82
    new-instance v0, Lcom/cisco/umbrella/registration/FibonacciBackOff;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cisco/umbrella/registration/FibonacciBackOff;-><init>(Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;Lcom/cisco/umbrella/registration/FibonacciBackOff$1;)V

    return-object v0
.end method

.method public setFib1(JLjava/util/concurrent/TimeUnit;)Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;
    .locals 0

    .line 67
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;->fib1:J

    return-object p0
.end method

.method public setFib2(JLjava/util/concurrent/TimeUnit;)Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;
    .locals 0

    .line 72
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;->fib2:J

    return-object p0
.end method

.method public setMaxFib(JLjava/util/concurrent/TimeUnit;)Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;
    .locals 0

    .line 77
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/cisco/umbrella/registration/FibonacciBackOff$Builder;->maxFib:J

    return-object p0
.end method

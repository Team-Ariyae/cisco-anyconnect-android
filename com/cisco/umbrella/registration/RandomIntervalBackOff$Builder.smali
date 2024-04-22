.class Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;
.super Ljava/lang/Object;
.source "RandomIntervalBackOff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/registration/RandomIntervalBackOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private interval1:J

.field private interval2:J

.field private maxBackOff:J

.field private final sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/util/ISharedPreferencesController;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->interval1:J

    const-wide/16 v0, 0x5

    .line 80
    iput-wide v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->interval2:J

    .line 81
    invoke-static {}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->access$400()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->maxBackOff:J

    .line 84
    iput-object p1, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    return-void
.end method

.method static synthetic access$000(Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;)J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->interval1:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;)J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->interval2:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;)Lcom/cisco/umbrella/util/ISharedPreferencesController;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;)J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->maxBackOff:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/cisco/umbrella/registration/RandomIntervalBackOff;
    .locals 1

    .line 103
    new-instance v0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;

    invoke-direct {v0, p0}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;-><init>(Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;)V

    return-object v0
.end method

.method public setInterval1(JLjava/util/concurrent/TimeUnit;)Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;
    .locals 0

    .line 88
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->interval1:J

    return-object p0
.end method

.method public setInterval2(JLjava/util/concurrent/TimeUnit;)Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;
    .locals 0

    .line 93
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->interval2:J

    return-object p0
.end method

.method public setMaxBackOff(JLjava/util/concurrent/TimeUnit;)Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;
    .locals 0

    .line 98
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->maxBackOff:J

    return-object p0
.end method

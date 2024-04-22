.class Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$1;
.super Ljava/util/HashSet;
.source "ManagedConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->parse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string p1, "umbrella_reg_token"

    .line 239
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$1;->add(Ljava/lang/Object;)Z

    const-string p1, "umbrella_org_id"

    .line 240
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$1;->add(Ljava/lang/Object;)Z

    return-void
.end method

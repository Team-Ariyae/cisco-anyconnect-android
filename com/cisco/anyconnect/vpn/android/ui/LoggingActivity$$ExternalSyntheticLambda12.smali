.class public final synthetic Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda12;->f$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

    iput-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda12;->f$1:Z

    iput p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda12;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda12;->f$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda12;->f$1:Z

    iget v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda12;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->lambda$updateLogs$8$com-cisco-anyconnect-vpn-android-ui-LoggingActivity(ZI)V

    return-void
.end method

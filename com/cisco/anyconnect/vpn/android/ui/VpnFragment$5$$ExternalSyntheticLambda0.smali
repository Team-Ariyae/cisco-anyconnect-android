.class public final synthetic Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;

.field public final synthetic f$1:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5$$ExternalSyntheticLambda0;->f$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5$$ExternalSyntheticLambda0;->f$1:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5$$ExternalSyntheticLambda0;->f$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5$$ExternalSyntheticLambda0;->f$1:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$5;->lambda$StateCB$0$com-cisco-anyconnect-vpn-android-ui-VpnFragment$5(Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V

    return-void
.end method

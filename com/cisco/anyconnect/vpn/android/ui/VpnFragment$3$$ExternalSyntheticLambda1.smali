.class public final synthetic Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3;


# direct methods
.method public synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3$$ExternalSyntheticLambda1;->f$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3$$ExternalSyntheticLambda1;->f$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$3;->lambda$SCEPEnrollExitCB$1$com-cisco-anyconnect-vpn-android-ui-VpnFragment$3()V

    return-void
.end method

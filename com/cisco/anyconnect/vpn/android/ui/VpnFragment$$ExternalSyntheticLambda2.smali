.class public final synthetic Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$$ExternalSyntheticLambda2;->f$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$$ExternalSyntheticLambda2;->f$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->lambda$displayErrorNotice$3$com-cisco-anyconnect-vpn-android-ui-VpnFragment()V

    return-void
.end method

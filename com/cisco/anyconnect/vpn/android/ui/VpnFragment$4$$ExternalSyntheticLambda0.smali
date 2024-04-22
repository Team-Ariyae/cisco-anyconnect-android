.class public final synthetic Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$4;

.field public final synthetic f$1:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;


# direct methods
.method public synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$4;Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$4$$ExternalSyntheticLambda0;->f$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$4;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$4$$ExternalSyntheticLambda0;->f$1:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$4$$ExternalSyntheticLambda0;->f$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$4;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$4$$ExternalSyntheticLambda0;->f$1:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$4;->lambda$ConnectionUpdateCB$0$com-cisco-anyconnect-vpn-android-ui-VpnFragment$4(Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V

    return-void
.end method

.class Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$12;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->CertBannerCB(Ljava/lang/String;[B[Ljava/lang/String;Z[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;

.field final synthetic val$certBannerSummary:Ljava/lang/String;

.field final synthetic val$certDer:[B

.field final synthetic val$confirmReasonEnums:[I

.field final synthetic val$confirmReasons:[Ljava/lang/String;

.field final synthetic val$importAllowed:Z


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;Ljava/lang/String;[B[Ljava/lang/String;Z[I)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$12;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$12;->val$certBannerSummary:Ljava/lang/String;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$12;->val$certDer:[B

    iput-object p4, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$12;->val$confirmReasons:[Ljava/lang/String;

    iput-boolean p5, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$12;->val$importAllowed:Z

    iput-object p6, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$12;->val$confirmReasonEnums:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 694
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$12;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->-$$Nest$fgetmTarget(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;)Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$12;->val$certBannerSummary:Ljava/lang/String;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$12;->val$certDer:[B

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$12;->val$confirmReasons:[Ljava/lang/String;

    iget-boolean v5, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$12;->val$importAllowed:Z

    iget-object v6, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$12;->val$confirmReasonEnums:[I

    invoke-interface/range {v1 .. v6}, Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;->CertBannerCB(Ljava/lang/String;[B[Ljava/lang/String;Z[I)V

    return-void
.end method

.class Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$4;
.super Ljava/lang/Object;
.source "ClientCertImporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$4;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$4;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->-$$Nest$mcancelImportTask(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)V

    return-void
.end method

.class Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;
.super Ljava/lang/Object;
.source "CertificateEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;->ClientCertificateCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;

.field final synthetic val$certList:Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->val$certList:Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "ClientCertificateCB()"

    const-string v1, "CertificateEditorActivity"

    .line 100
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->-$$Nest$fgetmCertList(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->val$certList:Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;

    invoke-static {v0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->-$$Nest$fputmCertList(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;)V

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;

    iget-object v3, v3, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;

    iget-object v4, v4, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->-$$Nest$fgetmCertList(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;

    move-result-object v4

    invoke-interface {v4}, Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;->GetClientCerts()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->-$$Nest$fputmListAdapter(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;)V

    .line 110
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->-$$Nest$fgetmCertAuthMode(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 114
    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->-$$Nest$fgetmListAdapter(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;

    iget-object v2, v2, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->-$$Nest$fgetmCertAuthMode(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->setCertAuthMethod(Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 118
    :catch_0
    :try_start_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Invalid CertAuthMode string."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    const v2, 0x102000a

    invoke-virtual {v0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 123
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;

    iget-object v2, v2, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->-$$Nest$fgetmListAdapter(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;

    iget-object v2, v2, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    iget-object v2, v2, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->mListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 128
    :catch_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "remote Exception caught while instantiating certlist adapter."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->val$certList:Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;

    invoke-static {v0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->-$$Nest$fputmCertList(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;)V

    .line 137
    :try_start_3
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->-$$Nest$fgetmListAdapter(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;

    iget-object v2, v2, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->-$$Nest$fgetmCertList(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;->GetClientCerts()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->updateItems(Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 141
    :catch_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "remote Exception caught while updating certlist adapter"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->-$$Nest$fgetmOriginalSelectedHash(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->-$$Nest$fgetmListAdapter(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->-$$Nest$fgetmOriginalSelectedHash(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->setSelectedCert([B)Z

    .line 148
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->-$$Nest$fgetmListAdapter(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateListAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

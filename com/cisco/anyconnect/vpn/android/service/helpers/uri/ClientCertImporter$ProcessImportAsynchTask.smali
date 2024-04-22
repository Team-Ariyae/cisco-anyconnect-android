.class Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;
.super Landroid/os/AsyncTask;
.source "ClientCertImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessImportAsynchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;


# direct methods
.method private constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6

    const-string v0, "doInBackground()"

    const-string v1, "ClientCertImporter"

    .line 363
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 364
    array-length v2, p1

    const/4 v3, 0x0

    .line 367
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-eq v0, v2, :cond_0

    .line 366
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Invalid number of arguments."

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 371
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v5, p1, v2

    if-nez v5, :cond_1

    .line 375
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "null paramaters passed to doInBackground"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    :cond_2
    :try_start_0
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    .line 393
    aget-object v2, p1, v2

    .line 395
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$5;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$uri$ImportTypes:[I

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    .line 405
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Invalid import type."

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->-$$Nest$mimportPkcs12(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 400
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Failed to import pkcs12."

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 409
    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 388
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Invalid import type: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p1, v3

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 359
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .line 414
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 416
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->-$$Nest$fgetmExitMessage(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 418
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    const v0, 0x7f110066

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->-$$Nest$fputmExitMessage(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;Ljava/lang/String;)V

    .line 421
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->-$$Nest$mcancelImportTimer(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)V

    .line 422
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    move-result-object p1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;->-$$Nest$fgetmExitMessage(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 359
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$ProcessImportAsynchTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

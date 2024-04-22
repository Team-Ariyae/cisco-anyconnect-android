.class Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask;
.super Landroid/os/AsyncTask;
.source "ProfileImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;
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
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;


# direct methods
.method private constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask;-><init>(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    const-string v0, "doInBackground()"

    const-string v1, "ProfileImporter"

    .line 136
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 137
    array-length v2, p1

    const/4 v3, 0x0

    .line 140
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-eq v0, v2, :cond_0

    .line 139
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Invalid number of arguments."

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 144
    :cond_0
    aget-object v0, p1, v3

    if-nez v0, :cond_1

    .line 147
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "location parameter was null"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_1
    const/4 v2, 0x1

    .line 151
    aget-object p1, p1, v2

    if-nez p1, :cond_2

    .line 154
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "scheme parameter was null"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 159
    :cond_2
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->-$$Nest$mimportProfile(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 161
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Failed to import profile."

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 165
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 132
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->-$$Nest$fgetmExitMessage(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;

    const v1, 0x7f110258

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->-$$Nest$fputmExitMessage(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;

    const v1, 0x7f11025d

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->-$$Nest$fputmExitMessage(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;Ljava/lang/String;)V

    .line 182
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;)Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask;->this$0:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;->-$$Nest$fgetmExitMessage(Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 132
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ProfileImporter$ProcessImportAsynchTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

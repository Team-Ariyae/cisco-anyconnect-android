.class public Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "FilePickerActivity.java"

# interfaces
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "FilePickerActivity"


# instance fields
.field private mAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;

.field private final mHistory:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field mListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->mAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgoUpDirectory(Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->goUpDirectory()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misParentOfCurrentDirectory(Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;Ljava/io/File;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->isParentOfCurrentDirectory(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpopulateFiles(Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;Ljava/io/File;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->populateFiles(Ljava/io/File;Z)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->mHistory:Ljava/util/Stack;

    .line 216
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->mListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private createFileList()V
    .locals 4

    .line 110
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->mAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;

    .line 111
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "mounted"

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mounted_ro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot read sdcard, using filesystem root: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FilePickerActivity"

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v1, Ljava/io/File;

    const-string v0, "/"

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 121
    invoke-direct {p0, v1, v0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->populateFiles(Ljava/io/File;ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const v0, 0x102000a

    .line 126
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 127
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->mAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->mListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private goBackDirectory()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->mHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->mHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->mHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->mHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 266
    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->populateFiles(Ljava/io/File;Z)Z

    return-void

    .line 273
    :cond_1
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->setResult(I)V

    .line 274
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->finish()V

    return-void
.end method

.method private goUpDirectory()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->mHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 287
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->mHistory:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->setResult(I)V

    .line 296
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->finish()V

    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->mHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->mHistory:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->populateFiles(Ljava/io/File;Z)Z

    return-void
.end method

.method private isParentOfCurrentDirectory(Ljava/io/File;)Z
    .locals 3

    const-string v0, "FilePickerActivity"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 322
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "file passed to isParentOfCurrentDirectory was null"

    invoke-static {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 326
    :cond_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->mHistory:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 331
    :cond_1
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->mHistory:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    if-nez v2, :cond_2

    .line 334
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "current directory was null"

    invoke-static {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 338
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    .line 344
    :cond_3
    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private populateFiles(Ljava/io/File;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->populateFiles(Ljava/io/File;ZZ)Z

    move-result p1

    return p1
.end method

.method private populateFiles(Ljava/io/File;ZZ)Z
    .locals 5

    const-string v0, "FilePickerActivity"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 149
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "null directory passed"

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->setResult(I)V

    return v1

    .line 154
    :cond_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "populateFiles(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "could not populate the file list because a non-dir was passed : "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->setResult(I)V

    return v1

    .line 163
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_6

    .line 166
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "could not populate the file list because system returned null file list"

    invoke-static {p2, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f1100ee

    .line 168
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 174
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/sdcard"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const-string v2, "shared"

    .line 176
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const p2, 0x7f1100f0

    .line 178
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v2, "com.cisco.anyconnect.vpn.android.htc"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const p2, 0x7f1100ef

    .line 182
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_0
    if-eqz p3, :cond_5

    .line 188
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->setResult(I)V

    .line 189
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 193
    :cond_5
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupError(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return v1

    :cond_6
    if-eqz p2, :cond_7

    .line 200
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->mHistory:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_7
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->mAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;->setFiles([Ljava/io/File;Ljava/io/File;)V

    .line 205
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->mAdapter:Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;->notifyDataSetChanged()V

    return v3
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 213
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->goBackDirectory()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "FilePickerActivity"

    const-string v1, "onCreate()"

    .line 51
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0057

    .line 53
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->setContentView(I)V

    const p1, 0x7f0a016b

    .line 55
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f11012d

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 58
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->setResult(I)V

    return-void

    :cond_0
    const p1, 0x7f0a016a

    .line 63
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_1

    .line 66
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->setResult(I)V

    return-void

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "INSTRUCTION_TEXT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, ""

    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 84
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 86
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->createFileList()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v1

    const/4 p1, 0x5

    .line 90
    invoke-static {p0, v0, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p1, 0x0

    .line 97
    aget p2, p3, p1

    if-nez p2, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->createFileList()V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->setResult(I)V

    const p1, 0x7f110143

    .line 104
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

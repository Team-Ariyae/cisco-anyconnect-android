.class Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;
.super Ljava/lang/Object;
.source "ProcessOutputParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->-$$Nest$fgetmBuffer(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 85
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-virtual {v1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->includeLine(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->-$$Nest$fgetmStringBuffer(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    :try_start_1
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->-$$Nest$fgetmStringBuffer(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 92
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->-$$Nest$fgetmBuffer(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 107
    :cond_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ProcessOutputParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stopping process reading for command: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->-$$Nest$fgetmPrettyCommand(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->-$$Nest$fgetmBuffer(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/io/BufferedReader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 112
    :try_start_3
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->-$$Nest$fgetmBuffer(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 116
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ProcessOutputParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not close the buffer for command: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->-$$Nest$fgetmPrettyCommand(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->-$$Nest$msetStop(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 97
    :try_start_4
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->-$$Nest$fgetmProcess(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/lang/Process;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 99
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "ProcessOutputParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught IOException in ProcessOutputParser for command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->-$$Nest$fgetmPrettyCommand(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 107
    :cond_3
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ProcessOutputParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stopping process reading for command: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->-$$Nest$fgetmPrettyCommand(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->-$$Nest$fgetmBuffer(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/io/BufferedReader;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 112
    :try_start_5
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->-$$Nest$fgetmBuffer(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 116
    :catch_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ProcessOutputParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not close the buffer for command: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->-$$Nest$fgetmPrettyCommand(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->-$$Nest$msetStop(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)V

    return-void

    .line 107
    :goto_4
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "ProcessOutputParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Stopping process reading for command: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->-$$Nest$fgetmPrettyCommand(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->-$$Nest$fgetmBuffer(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/io/BufferedReader;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 112
    :try_start_6
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->-$$Nest$fgetmBuffer(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/io/BufferedReader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 116
    :catch_3
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "ProcessOutputParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not close the buffer for command: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->-$$Nest$fgetmPrettyCommand(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_5
    :goto_5
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;->-$$Nest$msetStop(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;)V

    .line 121
    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

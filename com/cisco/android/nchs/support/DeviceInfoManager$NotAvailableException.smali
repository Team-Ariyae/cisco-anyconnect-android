.class public Lcom/cisco/android/nchs/support/DeviceInfoManager$NotAvailableException;
.super Ljava/lang/Exception;
.source "DeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/support/DeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NotAvailableException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/support/DeviceInfoManager;


# direct methods
.method public constructor <init>(Lcom/cisco/android/nchs/support/DeviceInfoManager;Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/cisco/android/nchs/support/DeviceInfoManager$NotAvailableException;->this$0:Lcom/cisco/android/nchs/support/DeviceInfoManager;

    .line 100
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

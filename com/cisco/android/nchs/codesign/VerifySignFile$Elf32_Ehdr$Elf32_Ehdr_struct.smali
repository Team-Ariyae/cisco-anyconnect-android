.class public Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;
.super Ljava/lang/Object;
.source "VerifySignFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Elf32_Ehdr_struct"
.end annotation


# instance fields
.field public e_ehsize:S

.field public e_entry:I

.field public e_flags:I

.field public e_ident:[B

.field public e_machine:S

.field public e_phentsize:S

.field public e_phnum:S

.field public e_phoff:I

.field public e_shentsize:S

.field public e_shnum:S

.field public e_shoff:I

.field public e_type:S

.field public e_version:I

.field public s_shstrndx:S

.field final synthetic this$1:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;


# direct methods
.method public constructor <init>(Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;)V
    .locals 0

    .line 938
    iput-object p1, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->this$1:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 940
    iput-object p1, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_ident:[B

    return-void
.end method

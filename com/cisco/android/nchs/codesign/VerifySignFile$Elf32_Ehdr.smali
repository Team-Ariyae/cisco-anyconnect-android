.class Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;
.super Ljava/lang/Object;
.source "VerifySignFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/codesign/VerifySignFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Elf32_Ehdr"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;
    }
.end annotation


# static fields
.field private static final EI_ABIVERSION:I = 0x8

.field private static final EI_CLASS:I = 0x4

.field private static final EI_DATA:I = 0x5

.field private static final EI_MAG0:I = 0x0

.field private static final EI_MAG1:I = 0x1

.field private static final EI_MAG2:I = 0x2

.field private static final EI_MAG3:I = 0x3

.field private static final EI_NIDENT:I = 0x10

.field private static final EI_OSABI:I = 0x7

.field private static final EI_PAD:I = 0x9

.field private static final EI_VERSION:I = 0x6

.field private static final ELFCLASS32:I = 0x1

.field private static final ELFCLASS64:I = 0x2

.field private static final ELFCLASSNONE:I = 0x0

.field private static final ELFCLASSNUM:I = 0x3

.field private static final ELFDATA2LSB:I = 0x1

.field private static final ELFDATA2MSB:I = 0x2

.field private static final ELFDATANONE:I = 0x0

.field private static final ELFDATANUM:I = 0x3

.field private static final ELFMAG0:B = 0x7ft

.field private static final ELFMAG1:B = 0x45t

.field private static final ELFMAG2:B = 0x4ct

.field private static final ELFMAG3:B = 0x46t

.field private static final EM_386:I = 0x3

.field private static final EM_486:I = 0x6

.field private static final EM_68K:I = 0x4

.field private static final EM_860:I = 0x7

.field private static final EM_88K:I = 0x5

.field private static final EM_M32:I = 0x1

.field private static final EM_MIPS:I = 0x8

.field private static final EM_NONE:I = 0x0

.field private static final EM_SPARC:I = 0x2

.field private static final sizeOfElfHdr:I = 0x34


# instance fields
.field private elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

.field final synthetic this$0:Lcom/cisco/android/nchs/codesign/VerifySignFile;


# direct methods
.method public constructor <init>(Lcom/cisco/android/nchs/codesign/VerifySignFile;[B)V
    .locals 2

    .line 832
    iput-object p1, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->this$0:Lcom/cisco/android/nchs/codesign/VerifySignFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    new-instance p1, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    invoke-direct {p1, p0}, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;-><init>(Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;)V

    iput-object p1, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    const/16 p1, 0x34

    .line 836
    array-length v0, p2

    if-le p1, v0, :cond_0

    return-void

    .line 841
    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 845
    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge p2, v0, :cond_1

    .line 849
    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    iget-object v0, v0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_ident:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    aput-byte v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 852
    :cond_1
    iget-object p2, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p2, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_type:S

    .line 853
    iget-object p2, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p2, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_machine:S

    .line 854
    iget-object p2, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p2, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_version:I

    .line 855
    iget-object p2, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p2, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_entry:I

    .line 856
    iget-object p2, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p2, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_phoff:I

    .line 857
    iget-object p2, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p2, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_shoff:I

    .line 858
    iget-object p2, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p2, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_flags:I

    .line 859
    iget-object p2, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p2, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_ehsize:S

    .line 860
    iget-object p2, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p2, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_phentsize:S

    .line 861
    iget-object p2, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p2, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_phnum:S

    .line 862
    iget-object p2, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p2, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_shentsize:S

    .line 863
    iget-object p2, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p2, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_shnum:S

    .line 864
    iget-object p2, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p2, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->s_shstrndx:S

    return-void
.end method


# virtual methods
.method public GetElfBinaryLength()I
    .locals 3

    .line 922
    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    iget v0, v0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_shoff:I

    iget-object v1, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    iget-short v1, v1, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_shnum:S

    iget-object v2, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    iget-short v2, v2, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_shentsize:S

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public IsElfFile()Z
    .locals 5

    .line 885
    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    iget-object v0, v0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_ident:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v2, 0x7f

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    iget-object v0, v0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_ident:[B

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    const/16 v3, 0x45

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    iget-object v0, v0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_ident:[B

    const/4 v3, 0x2

    aget-byte v0, v0, v3

    const/16 v3, 0x4c

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    iget-object v0, v0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_ident:[B

    const/4 v3, 0x3

    aget-byte v0, v0, v3

    const/16 v4, 0x46

    if-ne v4, v0, :cond_1

    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    iget-object v0, v0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_ident:[B

    const/4 v4, 0x4

    aget-byte v0, v0, v4

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    iget-object v0, v0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_ident:[B

    const/4 v4, 0x5

    aget-byte v0, v0, v4

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr;->elf32Struct:Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;

    iget-short v0, v0, Lcom/cisco/android/nchs/codesign/VerifySignFile$Elf32_Ehdr$Elf32_Ehdr_struct;->e_machine:S

    if-eq v3, v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1
.end method

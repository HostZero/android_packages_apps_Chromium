.class public final Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeMessageParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "RunOrClosePipeMessageParams.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public input:Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 21
    sput-object v0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeMessageParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeMessageParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeMessageParams;-><init>(I)V

    .line 40
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 36
    return-void
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    .prologue
    .line 100
    sget-object v0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeMessageParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeMessageParams;->input:Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    .line 140
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    if-ne p1, p0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 150
    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 152
    goto :goto_0

    .line 154
    :cond_3
    check-cast p1, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeMessageParams;

    .line 156
    iget-object v2, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeMessageParams;->input:Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;

    iget-object v3, p1, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeMessageParams;->input:Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 157
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 171
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeMessageParams;->input:Lorg/chromium/mojo/bindings/pipecontrol/RunOrClosePipeInput;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 173
    return v0
.end method

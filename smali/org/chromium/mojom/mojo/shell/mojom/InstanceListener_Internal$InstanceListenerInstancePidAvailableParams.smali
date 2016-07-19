.class final Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "InstanceListener_Internal.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public id:I

.field public pid:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 687
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    .line 688
    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;-><init>(I)V

    .line 711
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 701
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 707
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;
    .locals 3

    .prologue
    .line 719
    if-nez p0, :cond_1

    .line 720
    const/4 v0, 0x0

    .line 755
    :cond_0
    :goto_0
    return-object v0

    .line 722
    :cond_1
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 723
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v0, v2}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;-><init>(I)V

    .line 726
    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 729
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->id:I

    .line 741
    :cond_2
    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v1, :cond_0

    .line 744
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    iput v1, v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->pid:I

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;
    .locals 1

    .prologue
    .line 714
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3

    .prologue
    .line 762
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 768
    iget v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->id:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 781
    iget v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->pid:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 791
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 798
    if-ne p1, p0, :cond_1

    .line 814
    :cond_0
    :goto_0
    return v0

    .line 800
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 801
    goto :goto_0

    .line 802
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 803
    goto :goto_0

    .line 805
    :cond_3
    check-cast p1, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;

    .line 807
    iget v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->id:I

    iget v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->id:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 808
    goto :goto_0

    .line 810
    :cond_4
    iget v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->pid:I

    iget v3, p1, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->pid:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 811
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 823
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 825
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->id:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 827
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->pid:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 829
    return v0
.end method
